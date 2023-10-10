unit UPluginManager;

interface

uses
  Windows, UPluginAPI, Dialogs, SysUtils,
  ActnList,
  Classes;

type

  EPluginManagerError = class(Exception);
  EPluginLoadError = class(EPluginManagerError);

  EPluginsLoadError = class(EPluginLoadError)
  private
    FItems: TStrings;

  public
    constructor Create(const AText: String; const AFailedPlugins: TStrings);
    destructor Destroy; override;
    property FailedPluginFileNames: TStrings read FItems;
  end;

  TDllAction = class(TAction)
  private
    FActName: String;
    FPlugin: INPlugin;
    FAct: IAct;
    procedure ExecAction(Sender : TObject);
  public
    constructor Create(p_actName: IAct; p_plugin: INPlugin);
    destructor Destroy;
    function Execute: Boolean;
  end;

  TPlugin = class(TInterfacedObject)
  private
    FApi: INApi;
    FFileName: String;
    FHandle: HMODULE;
    FImpPlugin: INPlugin;
  public
    FActions: array of TDllAction;
    FActCount : integer;
    constructor Create(const p_FileName: WideString; p_API: INApi);
    destructor Destroy;
    function GetActions: TArrayAct;
    function RunAct(p_act: IAct): WideString;
    procedure ConnectDB(p_conString,p_user,p_passwd : WideString; p_lib :WideString);

  end;

  TApi = class(TInterfacedObject, INApi)
  public
    FItems: array of TPlugin;
    Fcount: integer;

    function SendMsg(p_Message: WideString): WideString;
    procedure LoadPlugins(const AFolder, AFileExt: String);
  private
    function LoadPlugin(p_File: WideString): TPlugin;

  end;

function Plugins: TApi;

implementation

uses
  UMainFrm,uPublic,uDm;

resourcestring
  rsPluginsLoadError = 'One or more plugins has failed to load:' +
    sLineBreak + '%s';

var
  FApi: TApi;
  { TApi }


function TApi.LoadPlugin(p_File: WideString): TPlugin;
begin
  // Загружаем плагин
  try
    Result := TPlugin.Create(p_File, self);
  except
    on E: Exception do
      raise EPluginLoadError.Create
        (Format('[%s] %s', [E.ClassName, E.Message]));
  end;
  // Заносим в список
  if Length(FItems) <= Fcount then // "Capacity"
    SetLength(FItems, Length(FItems) + 64);
  FItems[Fcount] := Result;
  Inc(Fcount);
end;

procedure TApi.LoadPlugins(const AFolder, AFileExt: String);
  function PluginOK(const APluginName, AFileExt: String): Boolean;
  begin
    Result := (AFileExt = '');
    if Result then
      Exit;
    Result := SameFileName(ExtractFileExt(APluginName), AFileExt);
  end;

var
  Path: String;
  SR: TSearchRec;
  Failures: TStringList;
  FailedPlugins: TStringList;
begin
  Path := IncludeTrailingPathDelimiter(AFolder);

  Failures := TStringList.Create;
  FailedPlugins := TStringList.Create;
  try
    if FindFirst(Path + '*.*', faNormal, SR) = 0 then
      try
        repeat
          if ((SR.Attr and faDirectory) = 0) and PluginOK(SR.Name, AFileExt)
          then
            try
              LoadPlugin(Path + SR.Name);
            except
              on E: Exception do
              begin
                FailedPlugins.Add(SR.Name);
                Failures.Add(Format('%s: %s', [SR.Name, E.Message]));
              end;
            end;
        until FindNext(SR) <> 0;
      finally
        FindClose(SR);
      end;

    if Failures.Count > 0 then
      raise EPluginsLoadError.Create(Format(rsPluginsLoadError, [Failures.Text]
        ), FailedPlugins);
  finally
    FreeAndNil(FailedPlugins);
    FreeAndNil(Failures);
  end;
end;



function TApi.SendMsg(p_Message: WideString): WideString;
begin
  ShowMessage(p_Message);
end;

function Plugins: TApi;
begin
  Result := FApi;
end;

{ TPlugin }

procedure TPlugin.ConnectDB(p_conString, p_user, p_passwd: WideString; p_lib :WideString);
begin
  self.FImpPlugin.ConnectBase(p_conString,p_user,p_passwd,p_lib);
end;

constructor TPlugin.Create(const p_FileName: WideString; p_API: INApi);
var
  v_initFunc: TInitPluginFunc;
begin
  inherited Create;
  FApi := p_API;
  FFileName := p_FileName;
  LogMsg('Загрузка расширения '+p_FileNAme);
  FHandle := SafeLoadLibrary(p_FileName);
  LogMsg('Расширение загружено');
  v_initFunc := GetProcAddress(FHandle, SPluginInitFuncName);
  LogMsg('Функция инициализации получена');
  FImpPlugin := v_initFunc(p_API);
  LogMsg('Инициализация прошла');
  Win32Check(FHandle <> 0);
end;

destructor TPlugin.Destroy;
begin
  if FHandle <> 0 then
  begin
    FApi := nil;
    FreeLibrary(FHandle);
    FHandle := 0;
  end;
  inherited;
end;

function TPlugin.GetActions: TArrayAct;
var
  vl_index : integer;
begin
  Result := FImpPlugin.GetActList;
  FActCount := length(result);
  SetLength(self.FActions,FActCount);
  for vl_index := 0 to FActCount - 1 do
  begin
    self.FActions[vl_index] := TDllAction.Create(result[vl_index],FImpPlugin);
  end;

end;


function TPlugin.RunAct(p_act: IAct): WideString;
begin
  Result := FImpPlugin.RunAct(p_act);
end;

{ EPluginsLoadError }

constructor EPluginsLoadError.Create(const AText: String;
  const AFailedPlugins: TStrings);
begin
  inherited Create(AText);
  FItems := TStringList.Create;
  FItems.Assign(AFailedPlugins);
end;

destructor EPluginsLoadError.Destroy;
begin
  FreeAndNil(FItems);
  inherited;
end;


{ TDllAction }

constructor TDllAction.Create(p_actName: IAct; p_plugin: INPlugin);
begin
  inherited Create(FrmMain.ActionManager1);
  self.FAct := p_actName;
  self.FPlugin := p_plugin;
  self.Caption := p_actName.FActCaption;
  self.Enabled := true;
  self.OnExecute := ExecAction;
end;

destructor TDllAction.Destroy;
begin
  FPlugin := nil;
//  FAct := nil;
  inherited;
end;

procedure TDllAction.ExecAction(Sender: TObject);
begin
  if Assigned(FApi) then
  begin
    FPlugin.RunAct(FAct);
  end;
end;

function TDllAction.Execute: Boolean;
begin
end;

initialization

FApi := TApi.Create;

finalization

FApi := nil;

end.
