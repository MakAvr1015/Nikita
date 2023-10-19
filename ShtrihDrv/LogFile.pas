unit LogFile;

interface

uses
  // VCL
  Windows, Classes, SysUtils, SyncObjs, SysConst, Variants, DateUtils;

type
  TVariantArray = array of Variant;

  { TLogFile }

  TLogFile = class
  private
    FHandle: THandle;
    FFileName: string;
    FEnabled: Boolean;
    FMaxFileSize: Integer;
    FMaxFileCount: Integer;
    FLock: TCriticalSection;

    procedure Lock;
    procedure Unlock;
    procedure RollOver;
    procedure OpenFile;
    procedure CloseFile;
    procedure Write(const Data: string);
    procedure SetEnabled(Value: Boolean);
    procedure AddLine(const Data: string);
    procedure SetFileName(const Value: string);

    function GetOpened: Boolean;
    function GetFileSize: Integer;

    property Opened: Boolean read GetOpened;
    class function ParamsToStr(const Params: array of const): string;
    class function StrToText(const Text: string): string;
    class function VarArrayToStr(const AVarArray: TVariantArray): string;
    class function VariantToStr(V: Variant): string;
  public
    constructor Create;
    destructor Destroy; override;

    class function GetTimeStamp: string;
    class function GetLineHeader: string;

    procedure Info(const Data: string); overload;
    procedure Debug(const Data: string); overload;
    procedure Trace(const Data: string); overload;
    procedure Error(const Data: string); overload;
    procedure Error(const Data: string; E: Exception); overload;
    procedure Info(const Data: string; Params: array of const); overload;
    procedure Trace(const Data: string; Params: array of const); overload;
    procedure Error(const Data: string; Params: array of const); overload;
    procedure Debug(const Data: string; Result: Variant); overload;
    procedure Debug(const Data: string; Params: array of const); overload;
    procedure Debug(const Data: string; Params: array of const; Result: Variant); overload;

    property Enabled: Boolean read FEnabled write SetEnabled;
    property FileName: string read FFileName write SetFileName;
    property MaxFileSize: Integer read FMaxFileSize write FMaxFileSize;
    property MaxFileCount: Integer read FMaxFileCount write FMaxFileCount;
  end;

function Logger: TLogFile;
function GlobalLogger: TLogFile;

implementation

const
  StrLen        = 20; // Максимальная длина строки данных
  S_SEPARATOR   = '------------------------------------------------------------';

  TagInfo         = '[ INFO] ';
  TagTrace        = '[TRACE] ';
  TagDebug        = '[DEBUG] ';
  TagError        = '[ERROR] ';
  TagWarn         = '[ WARN] ';

var
  FLogFile: TLogFile;

function Logger: TLogFile;
begin
  if FLogFile = nil then
    FLogFile := TLogFile.Create;
  Result := FLogFile;
end;

function GlobalLogger: TLogFile;
begin
  if FLogFile = nil then
    FLogFile := TLogFile.Create;
  Result := FLogFile;
end;

procedure FreeLogFile;
begin
  FLogFile.Free;
  FLogFile := nil;
end;

procedure ODS(const S: string);
begin
  {$IFDEF DEBUG}
  OutputDebugString(PChar(S));
  {$ENDIF}
end;

function ConstArrayToVarArray(const AValues : array of const): TVariantArray;
var
  i : Integer;
begin
  SetLength(Result, Length(AValues));
  for i := Low(AValues) to High(AValues) do
  begin
    with AValues[i] do
    begin
      case VType of
        vtInteger: Result[i] := VInteger;
        vtInt64: Result[i] := VInt64^;
        vtBoolean: Result[i] := VBoolean;
        vtChar: Result[i] := VChar;
        vtExtended: Result[i] := VExtended^;
        vtString: Result[i] := VString^;
        vtPointer: Result[i] := Integer(VPointer);
        vtPChar: Result[i] := StrPas(VPChar);
        vtObject: Result[i]:= Integer(VObject);
        vtAnsiString: Result[i] := String(VAnsiString);
        vtCurrency: Result[i] := VCurrency^;
        vtVariant: Result[i] := VVariant^;
        vtInterface: Result[i]:= Integer(VPointer);
        vtWideString: Result[i]:= WideString(VWideString);
      else
        Result[i] := NULL;
      end;
    end;
  end;
end;

{ TLogFile }

constructor TLogFile.Create;
begin
  inherited Create;
  FLock := TCriticalSection.Create;
  FHandle := INVALID_HANDLE_VALUE;
end;

destructor TLogFile.Destroy;
begin
  CloseFile;
  FLock.Free;
  inherited Destroy;
end;

class function TLogFile.GetTimeStamp: string;
var
  Year, Month, Day: Word;
  Hour, Min, Sec, MSec: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  DecodeTime(Time, Hour, Min, Sec, MSec);
  Result := Format('%.2d.%.2d.%.4d %.2d:%.2d:%.2d.%.3d',[
    Day, Month, Year, Hour, Min, Sec, MSec]);
end;

procedure TLogFile.Lock;
begin
  FLock.Enter;
end;

procedure TLogFile.Unlock;
begin
  FLock.Leave;
end;

procedure TLogFile.OpenFile;
var
  FilePath: string;
begin
  Lock;
  try
    if not Opened then
    begin
      FilePath := ExtractFilePath(FileName);
      if not DirectoryExists(FilePath) then
        CreateDir(FilePath);

      FHandle := CreateFile(PChar(FileName), GENERIC_READ or GENERIC_WRITE,
        FILE_SHARE_READ, nil, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
      if Opened then FileSeek(FHandle, 0, 2); // 0 from end
    end;
  finally
    Unlock;
  end;
end;

procedure TLogFile.CloseFile;
begin
  Lock;
  try
    if Opened then
      CloseHandle(FHandle);
    FHandle := INVALID_HANDLE_VALUE;
  finally
    Unlock;
  end;
end;

function TLogFile.GetOpened: Boolean;
begin
  Result := FHandle <> INVALID_HANDLE_VALUE;
end;

procedure TLogFile.SetEnabled(Value: Boolean);
begin
  if Value <> Enabled then
  begin
    FEnabled := Value;
    CloseFile;
  end;
end;

procedure TLogFile.SetFileName(const Value: string);
begin
  if Value <> FileName then
  begin
    CloseFile;
    FFileName := Value;
  end;
end;

function TLogFile.GetFileSize: Integer;
begin
  Result := 0;
  if Opened then
    Result := Windows.GetFileSize(FHandle, nil);
end;

procedure TLogFile.Write(const Data: string);
var
  S: string;
  Count: DWORD;
begin
  ODS(Data);

  Lock;
  try
    if not Enabled then Exit;
    S := Data;
    OpenFile;
    if Opened then
    begin
      WriteFile(FHandle, S[1], Length(S), Count, nil);
      if (FMaxFileSize > 0)and(GetFileSize > FMaxFileSize*1024*1024) then
      begin
        RollOver;
      end;
    end;
  finally
    Unlock;
  end;
end;

procedure TLogFile.RollOver;
var
  i: Integer;
  FileName: string;
begin
  // If maxBackups <= 0, then there is no file renaming to be done.
  if FMaxFileCount > 0 then
  begin
    // Delete the oldest file, to keep Windows happy.
    DeleteFile(FFileName + '.' + IntToStr(FMaxFileCount));
    // Map (maxBackupIndex - 1), ..., 2, 1 to maxBackupIndex, ..., 3, 2
    for i := FMaxFileCount - 1 downto 1 do
    begin
      FileName := FFileName + '.' + IntToStr(i);
      if FileExists(FileName) then
        RenameFile(FileName, FFileName + '.' + IntToStr(i+1));
    end;
    // close file
    CloseFile;
    // Rename fileName to fileName.1
    RenameFile(FFileName, FFileName + '.1');
    // open new file
    OpenFile;
  end;
end;

class function TLogFile.GetLineHeader: string;
begin
  Result := Format('[%s] [%.8d] ', [GetTimeStamp, GetCurrentThreadID]);
end;

procedure TLogFile.AddLine(const Data: string);
begin
  Write(GetLineHeader + Data + #13#10);
end;

procedure TLogFile.Trace(const Data: string);
begin
  AddLine(TagTrace + Data);
end;

procedure TLogFile.Info(const Data: string);
begin
  AddLine(TagInfo + Data);
end;

procedure TLogFile.Error(const Data: string);
begin
  AddLine(TagError + Data);
end;

procedure TLogFile.Error(const Data: string; E: Exception);
begin
  AddLine(TagError + Data + ' ' + E.Message);
end;

procedure TLogFile.Debug(const Data: string);
begin
  AddLine(TagDebug + Data);
end;

class function TLogFile.ParamsToStr(const Params: array of const): string;
begin
  Result := VarArrayToStr(ConstArrayToVarArray(Params));
end;

procedure TLogFile.Debug(const Data: string; Params: array of const);
begin
  Debug(Data + ParamsToStr(Params));
end;

procedure TLogFile.Debug(const Data: string; Params: array of const;
  Result: Variant);
begin
  Debug(Data + ParamsToStr(Params) + '=' + VariantToStr(Result));
end;

procedure TLogFile.Debug(const Data: string; Result: Variant);
begin
  Debug(Data + '=' + VariantToStr(Result));
end;

procedure TLogFile.Error(const Data: string; Params: array of const);
begin
  Error(Data + ParamsToStr(Params));
end;

procedure TLogFile.Info(const Data: string; Params: array of const);
begin
  Info(Data + ParamsToStr(Params));
end;

procedure TLogFile.Trace(const Data: string; Params: array of const);
begin
  Trace(Data + ParamsToStr(Params));
end;

{ Преобразование строки в текст, чтобы увидеть все символы }

class function TLogFile.StrToText(const Text: string): string;
var
  Code: Byte;
  i: Integer;
  IsPrevCharNormal: Boolean;
begin
  Result := '';
  IsPrevCharNormal := False;
  if Length(Text) > 0 then
  begin
    for i := 1 to Length(Text) do
    begin
      Code := Ord(Text[i]);
      if Code < $20 then
      begin
        if IsPrevCharNormal then
        begin
          IsPrevCharNormal := False;
          Result := Result + '''';
        end;
        Result := Result + Format('#$%.2x', [Code])
      end else
      begin
        if not IsPrevCharNormal then
        begin
          IsPrevCharNormal := True;
          Result := Result + '''';
        end;
        Result := Result + Text[i];
      end;
    end;
    if IsPrevCharNormal then
      Result := Result + '''';
  end else
  begin
    Result := '''''';
  end;
end;

class function TLogFile.VariantToStr(V: Variant): string;
begin
  if VarIsNull(V) then
  begin
    Result := 'NULL';
  end else
  begin
    case VarType(V) of
      varOleStr,
      varStrArg,
      varString:
        Result := StrToText(VarToStr(V));
    else
      Result := VarToStr(V);
    end;
  end;
end;

class function TLogFile.VarArrayToStr(const AVarArray: TVariantArray): string;
var
  I: Integer;
begin
  Result := '';
  for i := Low(AVarArray) to High(AVarArray) do
  begin
    if Length(Result) > 0 then
      Result := Result + ', ';
    Result := Result + VariantToStr(AVarArray[I]);
  end;
  Result := '(' + Result + ')';
end;

initialization

finalization
  FreeLogFile;

end.
