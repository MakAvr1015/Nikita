unit uAboutBox;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, pFIBScripter, ComCtrls, acPNG, FIBDatabase, pFIBDatabase,
  dialogs, IB_Services;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    ProgressBar: TProgressBar;
    pFIBScripter: TpFIBScripter;
    Button1: TButton;
    pFIBTransaction1: TpFIBTransaction;
    pFIBBackupService: TpFIBBackupService;
    pFIBRestoreService: TpFIBRestoreService;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure pFIBScripterAfterStatementExecute(Sender: TObject; Line,
      StatementNo: Integer; Desc: TStatementDesc; Statement: TStrings);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pFIBScripterExecuteError(Sender: TObject; StatementNo,
      Line: Integer; Statement: TStrings; SQLCode: Integer; const Msg: string;
      var doRollBack, Stop: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function ExecRes(rname  : string)  : boolean;
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

uses
  Udm,uPublic;

{ TAboutBox }

procedure TAboutBox.Button1Click(Sender: TObject);
begin
  ExecRes('');
end;

procedure TAboutBox.Button2Click(Sender: TObject);
begin
  pFIBRestoreService.ServerName:=copy(dm.pFIBDatabase.DatabaseName,0,pos(':',dm.pFIBDatabase.DatabaseName)-1);
  pFIBRestoreService.DatabaseName.Clear;
  pFIBRestoreService.DatabaseName.add(copy(dm.pFIBDatabase.DatabaseName,pos(':',dm.pFIBDatabase.DatabaseName)+1,length(dm.pFIBDatabase.DatabaseName)-pos(':',dm.pFIBDatabase.DatabaseName)+1));
  pFIBRestoreService.Params.Values['user_name']:=dm.pFIBDatabase.ConnectParams.UserName;
  pFIBRestoreService.Params.Values['password']:=dm.pFIBDatabase.ConnectParams.Password;
  pFIBRestoreService.Options:=[Replace];
  pFIBRestoreService.BackupFile.Clear;
  pFIBRestoreService.BackupFile.Add(Prg_path+'BUpdate.bkp');
  dm.pFIBDatabase.Connected:=false;
  try
    //pFIBRestoreService.Attach;
    pFIBRestoreService.Active:=true;
    with pFIBRestoreService do
    begin
      try
        ServiceStart;
        while not Eof do
          GetNextLine;
      finally
        //Detach;
        pFIBRestoreService.Active:=false;
      end;
    end;
  finally
    dm.pFIBDatabase.Connected:=true;
  end;
  ShowMessage('Восстановление завершено');
end;

function TAboutBox.ExecRes(rname: string): boolean;
var
  res : TresourceStream;
begin
  result:=true;
{  pFIBBackupService.ServerName:=copy(dm.pFIBDatabase.DatabaseName,0,pos(':',dm.pFIBDatabase.DatabaseName)-1);
  LogMsg('Обновление: Начинаем резервирование перед обновлением');
  if pFIBBackupService.ServerName = '' then
  begin
    pFIBBackupService.ServerName := 'localhost';
    pFIBBackupService.Protocol := local;
    pFIBBackupService.DatabaseName := dm.pFIBDatabase.DatabaseName;
    dm.pFIBDatabase.Close;
    CopyFile(PChar(Prg_path+pFIBBackupService.DatabaseName),PChar(Prg_path+'BUpdate.bkp'),false);
    dm.pFIBDatabase.Connected := true;
  end
  else
  begin
    pFIBBackupService.DatabaseName:=copy(dm.pFIBDatabase.DatabaseName,pos(':',dm.pFIBDatabase.DatabaseName)+1,length(dm.pFIBDatabase.DatabaseName)-pos(':',dm.pFIBDatabase.DatabaseName)+1);
    pFIBBackupService.Params.Values['user_name']:=dm.pFIBDatabase.ConnectParams.UserName;
    pFIBBackupService.Params.Values['password']:=dm.pFIBDatabase.ConnectParams.Password;
    pFIBBackupService.BackupFile.Clear;
    pFIBBackupService.BackupFile.Add(Prg_path+'BUpdate.bkp');
    pFIBBackupService.Attach;
  //  pFIBBackupService.ServiceStart;
    with pFIBBackupService do
    begin
      try
        ServiceStart;
        while not Eof do
          GetNextLine;
      except
        on E: Exception do
        begin
         LogMsg('Обновление: ошибка при резервировании:'+e.Message);
         result:=false;
        end;
      end;
      Detach;      
    end;
  end;}
  if result then
  begin
    LogMsg('Обновление: Резервирование завершено');
    res:=TresourceStream.Create(hinstance,'prefix',RT_RCDATA);
    pFIBScripter.Script.LoadFromStream(res);
    pFIBScripter.Parse(';');
    ProgressBar.Max:=pFIBScripter.StatementsCount;
    ProgressBar.Position:=0;
    LogMsg('Обновление: Прогон prefix');
    try
      pFIBScripter.ExecuteScript();
    except
      on E: Exception do
      begin

        LogMsg('Обновление: ошибка при прогоне prefix:'+e.Message);
//      ShowMessage(e.Message);
        Button2Click(self);
        result:=false;
      end;
    end;
  end;
  if result then
  begin
    res.Free;
    LogMsg('Обновление: prefix применен');
    res:=TresourceStream.Create(hinstance,'metadata',RT_RCDATA);
    pFIBScripter.Script.LoadFromStream(res);
    pFIBScripter.Parse(';');
    ProgressBar.Max:=pFIBScripter.StatementsCount;
    ProgressBar.Position:=0;
    LogMsg('Обновление: прогон metadata');
    try
      pFIBScripter.ExecuteScript();
    except
      on E: Exception do
      begin
        LogMsg('Обновление: ошибка при прогоне metadata:'+e.Message);
        Button2Click(self);
        result:=false;
      end;
    end;
  end;
  if result then
  begin
    res.Free;
    LogMsg('Обновление: metadata применен');
    res:=TresourceStream.Create(hinstance,'update',RT_RCDATA);
    pFIBScripter.Script.LoadFromStream(res);
    pFIBScripter.Parse(';');
    ProgressBar.Max:=pFIBScripter.StatementsCount;
    ProgressBar.Position:=0;
    LogMsg('Обновление: прогон update');
    try
      pFIBScripter.ExecuteScript();
    except
      on E: Exception do
      begin
        LogMsg('Обновление: ошибка при прогоне update:'+e.Message);
        Button2Click(self);
        result:=false;
      end;
    end;
  end;
  if result then
  begin
    res.Free;
    res:=TresourceStream.Create(hinstance,'privs',RT_RCDATA);
    pFIBScripter.Script.LoadFromStream(res);
    pFIBScripter.Parse(';');
    ProgressBar.Max:=pFIBScripter.StatementsCount;
    ProgressBar.Position:=0;
    LogMsg('Обновление: применяем привилегии');
    try
      pFIBScripter.ExecuteScript();
      pFIBScripter.Transaction.CommitRetaining;
      ShowMessage('Обновление завершено');
    except
      on E: Exception do
      begin
        LogMsg('Обновление: ошибка при применении привелегий:'+e.Message);
        Button2Click(self);
        result:=false;
      end;
    end;
    res.Free;
    LogMsg('Обновление: привелегии применены');
  end;
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  GetPrgVersion;
  Version.Caption:='Версия программы: '+Prg_version;
end;

procedure TAboutBox.pFIBScripterAfterStatementExecute(Sender: TObject; Line,
  StatementNo: Integer; Desc: TStatementDesc; Statement: TStrings);
begin

  ProgressBar.Position:=StatementNo;
end;

procedure TAboutBox.pFIBScripterExecuteError(Sender: TObject; StatementNo,
  Line: Integer; Statement: TStrings; SQLCode: Integer; const Msg: string;
  var doRollBack, Stop: Boolean);
begin
  LogMsg(IntToStr(line)+': '+msg);
end;

end.

