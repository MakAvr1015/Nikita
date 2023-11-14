unit UUtils;


interface

uses
    ShlObj, SHFolder, Windows, SysUtils;

var
  app_data: String;
  self_name : String;

procedure InitLog;
procedure LogMsg(logname,msg: string);
function GetSpecialFolderPath(folder: integer): string;

implementation


function GetSpecialFolderPath(folder: integer): string;
const
  SHGFP_TYPE_CURRENT = 0;
var
  path: array [0 .. MAX_PATH] of char;
begin
  if SUCCEEDED(SHGetFolderPath(0, folder, 0, SHGFP_TYPE_CURRENT, @path[0])) then
    result := path
  else
    result := '';
end;

procedure InitLog;
begin
  self_name := ExtractFileName(SysUtils.GetModuleName(HInstance));
  app_data := GetSpecialFolderPath(CSIDL_APPDATA) + '\Nikita\' + self_name;
  if not directoryexists(app_data) then
  begin
    MkDir(app_data);
  end;
end;

procedure LogMsg(logname,msg: string);
var
  logFile: TextFile;
  filehandle: Integer;

begin
  if Not FileExists(app_data + '\' + logname + '.log') then
  begin
    filehandle := FileCreate(app_data + '\' + logname + '.log');
    fileClose(filehandle);
  end;
  try
    AssignFile(logFile, app_data + '\' + logname + '.log');
    Append(logFile);
    Writeln(logFile, TimeToStr(time) + ': ' + msg);
    Flush(logFile);
    CloseFile(logFile);
  finally

  end;
end;

end.
