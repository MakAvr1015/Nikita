unit UDocumentsClasses;

interface

uses
  UNsiClass, Forms;

type
  TDocPosition = record
    f_good: TNsiGood;
    f_scancode: integer;
    f_quant: integer;
    f_price: currency;
    f_price_val: currency;
    f_summ: currency;
    f_discount_prc: currency;
    f_discount_sum: currency;
    f_descr: string;
  end;

  TResultSoap = record
    f_result: integer;
    f_message: String;
  end;

type
  TQueueElementType = (docOut, docIn, docMove);

type
  TDocPositionList = array of TDocPosition;

type
  /// <summary>
  /// Обработчик SOAP очереди
  /// </summary>
  TWEBQueue = class
  private
    f_id: integer;
    f_guid: String;
    f_obj_id: integer;
    f_type: TQueueElementType;
  public
    constructor Create(p_id: integer; p_obj_type: String; p_obj_id: integer;
      p_guid: string);
    procedure SendDoc;
    procedure SaveResult(p_result: String; p_message: String);
//    procedure SendAll; static;
  end;

type
  /// <summary>
  /// Расходный документ
  /// </summary>
  TOutDocument = class
  private
    /// <summary> Номер </summary>
    f_number: String;
    /// <summary> Дата </summary>
    f_date: Tdate;
    /// <summary> ГУИД </summary>
    f_guid: String;
    /// <summary> Описание </summary>
    f_descr: String;
    /// <summary> Партнер </summary>
    f_partner: TNsiPartner;
    /// <summary> Склад </summary>
    f_sklad: TNsiSklad;
    /// <summary> Тип документа </summary>
    f_type: integer;
    /// <summary> Состояние документа </summary>
    f_state: integer;
    /// <summary> Автор </summary>
    f_user: String;
    /// <summary> Тело документа </summary>
    f_positions: TDocPositionList;
  public
    /// <summary> Синхронизация документа с центральной базой </summary>
    function Synchcronyze: TResultSoap;
    /// <summary> Установить номер документа </summary>
    procedure SetF_number(p_number: string);
    /// <summary> Установить описание </summary>
    procedure SetF_descr(p_descr: string);
    /// <summary> Установить ГУИД </summary>
    procedure SetF_guid(p_guid: string);
    /// <summary> Установить партнера </summary>
    procedure SetF_partner(p_partner: TNsiPartner);
    /// <summary> Установить склад </summary>
    procedure SetF_sklad(p_sklad: TNsiSklad);
    /// <summary> Установить тип </summary>
    procedure SetF_type(p_type: integer);
    /// <summary> Установить состояние </summary>
    procedure SetF_state(p_state: integer);
    /// <summary> Установить дату </summary>
    procedure SetF_date(p_date: Tdate);
    /// <summary> Установить автора </summary>
    procedure SetF_user(p_user: String);
    /// <summary> Добавить строку документа </summary>
    procedure SetF_psition(p_position: TDocPosition);

  end;

procedure CheckWebQueue(p_show_progress : boolean);

implementation

uses OutDocumentServicesImpl1, Soap.XSBuiltIns, SYSUtils, udm,
  UDocClass, UFrmProgress;

procedure CheckWebQueue(p_show_progress : boolean);
var
  vl_param: String;
  frm_progress: TFrmProgress;
  procedure ShowMsg(p_Msg : String);
  begin
    if assigned(frm_progress) then
    begin
      frm_progress.cxLabel.Caption := p_Msg;
      frm_progress.cxProgressBar.Position := frm_progress.cxProgressBar.Position + 1;
      Application.ProcessMessages;
    end;
  end;
begin
  if p_show_progress then
  begin
    frm_progress := TFrmProgress.Create(application.MainForm);
    frm_progress.cxProgressBar.Properties.Max := 3;
    frm_progress.Show;
  end;
  LogMsg('Начали проверку доступности сервиса');
  //ShowMsg('Проверка доступности');
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
      ShowMsg('Сервис доступен');
    except
      dm.TimerRefreshNsiGood.Enabled:=true;
      LogMsg('Сервис недоступен');
      ShowMsg('Сервис недоступен');
      if assigned(frm_progress) then
      begin
        frm_progress.Close;
        frm_progress.Free;
      end;
      exit;
    end;
  end
  else
  begin
    LogMsg('Не задан адрес сервиса');
    ShowMsg('Не задан адрес сервиса');
    if assigned(frm_progress) then
    begin
      frm_progress.Close;
      frm_progress.Free;
    end;
    exit;
  end;
  LogMsg('Собираем очередь отправки документов');
  dm.dsWebQueueSel.Active:=false;
  dm.dsWebQueueSel.Active:=true;
  LogMSg('Очередь подготовили, начинаем отправку');
  if assigned(frm_progress) then
  begin
    dm.dsWebQueueSel.FetchAll;
    frm_progress.cxProgressBar.Properties.Max := dm.dsWebQueueSel.RecordCount;
    frm_progress.cxProgressBar.Position := 0;
  end;
  while not dm.dsWebQueueSel.Eof do
  begin
    with TWEBQueue.Create(
      dm.dsWebQueueSelF_ID.AsInteger,
      dm.dsWebQueueSelF_OBJ_TYPE.AsString,dm.dsWebQueueSelF_OBJ_ID.AsInteger,dm.dsWebQueueSelF_GUID.AsString) do
    begin
      LogMsg('Отправляем документ '+dm.dsWebQueueSelF_GUID.AsString);
       ShowMsg('Отправляем документ '+dm.dsWebQueueSelF_GUID.AsString);
      SendDoc;
      free;
    end;
    dm.dsWebQueueSel.Next;
  end;
  if assigned(frm_progress) then
  begin
    frm_progress.Close;
    frm_progress.Free;
  end;
end;

{ TOutDocument }

procedure TOutDocument.SetF_date(p_date: Tdate);
begin
  f_date := p_date;
end;

procedure TOutDocument.SetF_descr(p_descr: string);
begin
  f_descr := p_descr;
end;

procedure TOutDocument.SetF_guid(p_guid: string);
begin
  f_guid := p_guid;
end;

procedure TOutDocument.SetF_number(p_number: string);
begin
  f_number := p_number;
end;

procedure TOutDocument.SetF_partner(p_partner: TNsiPartner);
begin
  f_partner := p_partner;
end;

procedure TOutDocument.SetF_psition(p_position: TDocPosition);
var
  vl_index: integer;
begin
  vl_index := length(self.f_positions);
  SetLength(self.f_positions, vl_index + 1);
  self.f_positions[vl_index] := p_position;
end;

procedure TOutDocument.SetF_sklad(p_sklad: TNsiSklad);
begin
  f_sklad := p_sklad;
end;

procedure TOutDocument.SetF_state(p_state: integer);
begin
  f_state := p_state;
end;

procedure TOutDocument.SetF_type(p_type: integer);
begin
  f_type := p_type;
end;

procedure TOutDocument.SetF_user(p_user: String);
begin
  f_user := p_user;
end;

function TOutDocument.Synchcronyze: TResultSoap;
var
  vl_OutDocumentServicesImpl: OutDocumentServicesImpl;
  vl_doc: outDocument;
  vl_result: serviceResult;
  vl_cnt: integer;
  vl_positions: Array_Of_documentPos;

begin
  vl_OutDocumentServicesImpl := getOutDocumentServicesImpl(false, '',
    dm.HTTPRIO1);
  vl_doc := outDocument.Create;
  vl_doc.f_guid := f_guid;
  vl_doc.f_number := f_number;
  vl_doc.f_type := f_type;
  vl_doc.f_state := f_state;
  vl_doc.f_partner := partner.Create();
  vl_doc.f_partner.f_inn := f_partner.GetInn;
  vl_doc.f_partner.f_name := f_partner.getName;
  vl_doc.f_partner.f_address := f_partner.GetAddress;
  vl_doc.f_user := f_user;
  vl_doc.f_sklad := sklad.Create;
  vl_doc.f_sklad.f_prefix := f_sklad.GetPrefix;

  vl_doc.f_date := FormatDateTime('DD.MM.YYYY', f_date);
  SetLength(vl_positions, length(self.f_positions));
  for vl_cnt := 0 to length(f_positions) - 1 do
  begin
    vl_positions[vl_cnt] := documentPos.Create();
    vl_positions[vl_cnt].f_quant := f_positions[vl_cnt].f_quant;
    vl_positions[vl_cnt].f_price := f_positions[vl_cnt].f_price;
    vl_positions[vl_cnt].f_price_val := f_positions[vl_cnt].f_price_val;
    vl_positions[vl_cnt].f_good := good.Create();
    vl_positions[vl_cnt].f_good.f_article := f_positions[vl_cnt]
      .f_good.GetArticle();
  end;
  vl_doc.f_positions := vl_positions;
  try
    vl_result := vl_OutDocumentServicesImpl.SaveDoc(vl_doc);
  except
    on E: Exception do
    begin
      vl_result := serviceResult.Create;
      vl_result.result := sresult.ERROR;
      vl_result.meaasge := E.Message;
    end;
  end;
  vl_doc.Free;
  vl_OutDocumentServicesImpl._Release;
  result.f_message := vl_result.meaasge;
  case vl_result.result of
    OutDocumentServicesImpl1.sresult.OK:
      result.f_result := 1;
    OutDocumentServicesImpl1.sresult.ERROR:
      result.f_result := 0;
  end;

end;

{ TWEBQueue }

constructor TWEBQueue.Create(p_id: integer; p_obj_type: String;
  p_obj_id: integer; p_guid: string);
begin
  self.f_id := p_id;
  self.f_obj_id := p_obj_id;
  if p_obj_type = 'T_DOC_OUT' then
    self.f_type := docOut;
  if p_obj_type = 'T_DOC_MOVE' then
    self.f_type := docMove;
  self.f_guid := p_guid;
end;

procedure TWEBQueue.SaveResult(p_result, p_message: String);
begin
  dm.spWebQueueSetResult.Params.ClearValues;
  dm.spWebQueueSetResult.ParamByName('P_ID').AsInteger := self.f_id;
  dm.spWebQueueSetResult.ParamByName('P_RESULT').AsInteger :=
    StrToInt(p_result);
  dm.spWebQueueSetResult.ParamByName('P_MESSAGE').AsString := p_message;
  dm.spWebQueueSetResult.ExecuteImmediate;
  dm.spWebQueueSetResult.Transaction.CommitRetaining;
end;

procedure TWEBQueue.SendDoc;
var
  vl_result: TResultSoap;
  vl_doc: TOutDoc;
begin
  dm.spWebQueueSetResult.Params.ClearValues;
  dm.spWebQueueSetResult.ParamByName('P_ID').AsInteger := self.f_id;
  dm.spWebQueueSetResult.ExecuteImmediate;
  case f_type of
    docOut:
      begin
        vl_doc := TOutDoc.Create(self.f_obj_id);
        LogMsg('Создан документ отправки ' + vl_doc.f_number);
        vl_doc.doc_type := 1;
        dm.spWebQueueSetResult.Transaction.CommitRetaining;
        vl_doc.InitFromDB;
        LogMsg('Грузим из базы');
        vl_result := vl_doc.Synchcronyze;
        LogMsg('Отправлен в сервис с результатом ' + vl_result.f_message);
        SaveResult(IntToStr(vl_result.f_result), vl_result.f_message);
      end;
    docMove:
      begin

      end;
  end;
end;

end.
