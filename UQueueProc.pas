unit UQueueProc;

interface

uses
  System.Classes;

type
  TQueueProc = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

  uses uDm,UDocumentsClasses;
{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure TQueueProc.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ TQueueProc }

procedure TQueueProc.Execute;
var
  vl_param: String;
begin
  { Place thread code here }
//  FreeOnTerminate:=true;
 { DONE : Вынести логику отправки продаж в отдельный модуль }
  dm.TimerRefreshNsiGood.Enabled:=false;
  CheckWebQueue(false);
{  LogMsg('Начали проверку доступности сервиса');
  if dm.HTTPRIO1.URL = '' then
  begin
    vl_param := dm.GetSYSValue('SOAP_ADDRESS');
    LogMsg('Адрес сервиса '+vl_param);
    if vl_param <> '' then
    begin
      dm.HTTPRIO1.URL := vl_param;
      dm.HTTPRIO1.HTTPWebNode.UserName := dm.GetSYSValue('SOAP_LOGIN');
      dm.HTTPRIO1.HTTPWebNode.Password := dm.GetSYSValue('SOAP_PASSWORD');
    end;
  end;
  if dm.HTTPRIO1.URL <> '' then
  begin
    try
      dm.IdHTTP1.Request.UserName := dm.HTTPRIO1.HTTPWebNode.UserName;
      dm.IdHTTP1.Request.Password := dm.HTTPRIO1.HTTPWebNode.Password;
      dm.IdHTTP1.get(dm.HTTPRIO1.URL);
      LogMsg('Сервис доступен');
    except
      dm.TimerRefreshNsiGood.Enabled:=true;
      LogMsg('Сервис недоступен');
      exit;
    end;
  end
  else
  begin
    dm.TimerRefreshNsiGood.Enabled:=true;
    LogMsg('Не задан адрес сервиса');
    exit;
  end;
  LogMsg('Собираем очередь отправки документов');
  dm.dsWebQueueSel.Active:=false;
  dm.dsWebQueueSel.Active:=true;
  LogMSg('Очередь подготовили, начинаем отправку');
  while not dm.dsWebQueueSel.Eof do
  begin
    with TWEBQueue.Create(
      dm.dsWebQueueSelF_ID.AsInteger,
      dm.dsWebQueueSelF_OBJ_TYPE.AsString,dm.dsWebQueueSelF_OBJ_ID.AsInteger,dm.dsWebQueueSelF_GUID.AsString) do
    begin
      LogMsg('Отправляем документ '+dm.dsWebQueueSelF_GUID.AsString);
      SendDoc;
      free;
    end;
    dm.dsWebQueueSel.Next;
  end;}

  dm.TimerRefreshNsiGood.Enabled:=true;
end;

end.
