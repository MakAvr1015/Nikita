unit UDocClass;

interface

uses
  UInterfaces, UNsiClass, UDocumentsClasses, DB, Xml.XMLIntf;

type
  TDocPosition = record
    f_good: TNsiGood;
    f_quant: integer;
    f_price: currency;
    f_price_val: currency;
    f_summ: currency;
    f_discount_prc: currency;
    f_discount_sum: currency;
    f_descr: string;
  end;

type
  TDocPositionList = array of TDocPosition;

type

  TInventoryDoc = class(TInterfacedObject, IDoc)
    ID_Doc: integer;
  public
    constructor Create(var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;
  end;

  TInputDoc = class(TInterfacedObject, IDoc)
    ID_Doc: integer;
    doc_type: integer;
  public
    constructor Create(var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;
  end;

  /// <summary> Документ прихода </summary>
  TOutDoc = class(TInterfacedObject, IDoc)

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
    /// <summary> Отправитель </summary>
    f_owner: TNsiPartner;
    /// <summary> Тело документа </summary>
    f_positions: TDocPositionList;

    ID_Doc: integer;
    doc_type: integer;
    mainDs: TDataSet;
  public
    constructor Create(var doc_id: integer; dsJournal: TDataSet = nil);
    procedure InitFromDB;
    procedure OpenEditFrm;
    procedure OpenViewFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;

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

  TInputPay = class(TInterfacedObject, IDoc)
    ID_Doc: integer;
    doc_type: integer;
  public
    constructor Create(var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;
  end;

  TZakazDoc = class(TInterfacedObject, IDoc)
    ID_Doc: integer;
    doc_type: integer;
  public
    constructor Create(var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;
  end;

  ///
  ///  <summary> Перемещение </summary>
  TMoveDoc = class(TInterfacedObject, IDoc)
    ID_Doc: integer;
    doc_type: integer;

    f_number: String;
    /// <summary> Дата </summary>
    f_date: Tdate;
    /// <summary> ГУИД </summary>
    f_guid: String;
    /// <summary> Описание </summary>
    f_descr: String;
    /// <summary>
    /// Прайс
    /// </summary>
    f_price: String;
    /// <summary> Партнер </summary>
    f_partner: TNsiPartner;
    /// <summary> Склад источник </summary>
    f_sklad_from: TNsiSklad;
    /// <summary>
    /// Склад приемник
    /// </summary>
    f_sklad_to : TNsiSklad;
    /// <summary> Состояние документа </summary>
    f_state: integer;
    /// <summary> Автор </summary>
    f_user: String;
    /// <summary> Тело документа </summary>
    f_positions: TDocPositionList;
  public
    constructor Create(var doc_id: integer);
    /// <summary>
    ///  Загрузить из базы
    /// </summary>
    procedure InitFromDb;
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;
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
    /// <summary> Установить склад источник</summary>
    procedure SetF_sklad_from(p_sklad: TNsiSklad);
    /// <summary> Установить склад приемник</summary>
    procedure SetF_sklad_to(p_sklad: TNsiSklad);
    /// <summary> Установить состояние </summary>
    procedure SetF_state(p_state: integer);
    /// <summary> Установить дату </summary>
    procedure SetF_date(p_date: Tdate);
    /// <summary> Установить автора </summary>
    procedure SetF_user(p_user: String);
    /// <summary>
    ///   Установить прайс
    /// </summary>
    procedure SetF_price(p_price : String);
    /// <summary> Добавить строку документа </summary>
    procedure SetF_psition(p_position: TDocPosition);


  end;

  TOutputPay = class(TInterfacedObject, IDoc)
    ID_Doc: integer;
    doc_type: integer;
  public
    constructor Create(var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;
  end;

  TTemplateDoc = class(TInterfacedObject, IDoc)
    ID_Doc: integer;
    doc_type: integer;
  public
    constructor Create(var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState(p_newstate: integer): integer;
    function ExportDoc: PChar;
    procedure ImportXmlDoc (xmlDocument : IXMLNode);
    destructor Free;
  end;

implementation

uses
  Dialogs, Forms, SysUtils,
  OutDocumentServicesImpl1,
  MoveDocumentServicesImpl1,
  //OutDocumentServicesImpl11,
  UFrmInputDoc, UFrmInputDocBack, UFrmInputDocBackRozn,
  uFrmOutputDoc, UFrmInputPay, UFrmMoveDoc,
  UFrmEditInventory, uFrmRoznSale, uFrmOutDocBack, uFrmOutputPay,
  uDm, uFrmMoveDocSpisan, uFrmMoveDocPrihod, uFrmTemplateDoc,uFrmZakazDoc,
  UFrmViewDoc, uFrmDocView, uFrmDocSpisan, Upublic,
  FIBDataSet, ActiveX;

{ TInputDoc }

function TInputDoc.ChangeState(p_newstate: integer): integer;
begin
  dm.pStChangeState.StoredProcName := 'SP_T_DOC_IN_U';
  dm.pStChangeState.ParamByName('f_id').Value := ID_Doc;
  dm.pStChangeState.ParamByName('f_state').Value := p_newstate;
  dm.pStChangeState.ExecProc;
  dm.pStChangeState.Transaction.CommitRetaining;
end;

constructor TInputDoc.Create(var doc_id: integer);
begin
  // inherited;
  ID_Doc := doc_id;
  {
    if doc_id=0 then
    begin
    ShowMessage('Create new Input Doc');
    end
    else
    begin
    ShowMessage('Open existing Input Doc');
    end;
  }
end;

function TInputDoc.ExportDoc: PChar;
var
  export_xml: string;
begin
  dm.DsPublicDs.Active := false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  dm.DsPublicDs.SQLs.SelectSQL.Add('SELECT F_VALUE FROM PR_EXPORT_DOC_IN(' +
    IntToStr(ID_Doc) + ')');
  dm.DsPublicDs.Active := true;
  export_xml := '';
  while not dm.DsPublicDs.Eof do
  begin
    export_xml := export_xml + dm.DsPublicDs.FieldByName('F_value').AsString;
    dm.DsPublicDs.Next;
  end;
  dm.DsPublicDs.Active := false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  result := PChar(export_xml);
end;

destructor TInputDoc.Free;
begin
  // inherited;
end;

procedure TInputDoc.ImportXmlDoc(xmlDocument: IXMLNode);
begin

end;

procedure TInputDoc.OpenEditFrm;
begin
  case doc_type of
    1:
      with TFrmInputDoc.Create(Application.MainForm) do
      begin
        dsDocHead.ParamByName('f_doc_in').Value := ID_Doc;
        dsDocHead.ParamByName('f_doc_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Приходный документ №', Language,
          TranslateFile) + dsDocHeadF_NUMBER.AsString + ' от ' +
          dsDocHeadF_DATE.AsString;
        if ID_Doc = -10 then
          ID_Doc := dsDocHeadF_doc_in.Value;
        ShowAsChild;
      end;
    2:
      with TFrmInputDocBack.Create(Application.MainForm) do
      begin
        dsDocHead.ParamByName('f_doc_in').Value := ID_Doc;
        dsDocHead.Active := true;
        caption := translateCapt('Возврат покупателя №', Language,
          TranslateFile) + dsDocHeadF_NUMBER.AsString + ' от ' +
          dsDocHeadF_DATE.AsString;
        if ID_Doc = -10 then
          ID_Doc := dsDocHeadF_doc_in.Value;
        ShowAsChild;
      end;
    3:
      with TFrmInputDoc.Create(Application.MainForm) do
      begin
        dsDocHead.ParamByName('f_doc_in').Value := ID_Doc;
        dsDocHead.ParamByName('f_doc_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Хоз.документ(п) №', Language, TranslateFile) +
          dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
        if ID_Doc = -10 then
          ID_Doc := dsDocHeadF_doc_in.Value;
        ShowAsChild;
      end;
    4:
      with TFrmInputDocBackRozn.Create(Application.MainForm) do
      begin
        dsDocHead.ParamByName('f_doc_in').Value := ID_Doc;
        dsDocHead.ParamByName('f_doc_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Розничный возврат №', Language, TranslateFile)
          + dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
        if ID_Doc = -10 then
          ID_Doc := dsDocHeadF_doc_in.Value;
        ShowAsChild;
      end;

  end;
  self.Free;
end;

procedure TInputDoc.SaveDoc;
begin

end;

{ TOutDoc }

function TOutDoc.ChangeState(p_newstate: integer): integer;
begin
  dm.pStChangeState.StoredProcName := 'SP_T_DOC_OUT_U';
  dm.pStChangeState.ParamByName('f_id').Value := ID_Doc;
  dm.pStChangeState.ParamByName('f_state').Value := p_newstate;
  dm.pStChangeState.ExecProc;
  dm.pStChangeState.Transaction.CommitRetaining;
end;

constructor TOutDoc.Create(var doc_id: integer; dsJournal: TDataSet);
begin
  ID_Doc := doc_id;
  if dsJournal <> nil then
    mainDs := dsJournal;
end;

function TOutDoc.ExportDoc: PChar;
var
  export_xml: string;
begin
  dm.DsPublicDs.Active := false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  dm.DsPublicDs.SQLs.SelectSQL.Add('SELECT F_VALUE FROM PR_EXPORT_DOC_OUT(' +
    IntToStr(ID_Doc) + ')');
  dm.DsPublicDs.Active := true;
  export_xml := '';
  while not dm.DsPublicDs.Eof do
  begin
    export_xml := export_xml + dm.DsPublicDs.FieldByName('F_value').AsString;
    dm.DsPublicDs.Next;
  end;
  dm.DsPublicDs.Active := false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  result := PChar(export_xml);
end;

destructor TOutDoc.Free;
begin

end;

procedure TOutDoc.ImportXmlDoc(xmlDocument: IXMLNode);
begin

end;

procedure TOutDoc.InitFromDB;
var
  partner: TNsiPartner;
  sklad: TNsiSklad;
  vl_docPosition: TDocPosition;
begin
  case doc_type of
    1:
      with TFrmOutputDoc.Create(Application.MainForm) do
      begin
        dsDocHead.ParamByName('f_doc_out').Value := ID_Doc;
        dsDocHead.ParamByName('f_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Расходный документ №', Language,
          TranslateFile) + dsDocHeadF_NUMBER.AsString + ' от ' +
          dsDocHeadF_DATE.AsString;
        if ID_Doc = -10 then
          ID_Doc := dsDocHeadF_doc_out.Value
        else
        begin
          self.SetF_number(dsDocHeadF_NUMBER.AsString);
          self.SetF_state(dsDocHeadF_STATE.AsInteger);
          self.SetF_type(dsDocHeadF_TYPE.AsInteger);
          self.SetF_date(dsDocHeadF_DATE.AsDateTime);
          partner := TNsiPartner.Create;
          partner.SetName(dsDocHeadF_PARTNER_NAME.AsString);
          partner.SetInn(dsDocHeadF_PARTNER_INN.AsString);
          partner.SetAddress(dsDocHeadF_PARTNER_ADRES.AsString);
          sklad := TNsiSklad.Create();
          sklad.SetPrefix(dsDocHeadF_SKLAD_PREF.AsString);
          self.SetF_partner(partner);
          self.SetF_sklad(sklad);
          self.SetF_guid(dsDocHeadF_Guid.AsString);
          self.SetF_user(dsDocHeadF_USER.AsString);
//          self.SetF_date(dsDocHeadF_DATE.AsDateTime);
          dsDocStrings.First;
          while not dsDocStrings.Eof do
          begin
            vl_docPosition.f_quant := dsDocStringsF_CNT.AsInteger;
            vl_docPosition.f_good := TNsiGood.Create();
            vl_docPosition.f_good.SetArticle(dsDocStringsF_article.AsString);
            vl_docPosition.f_price_val := dsDocStringsF_PRICE_VAL.AsFloat;
            vl_docPosition.f_price := dsDocStringsF_PRICE_WO_SKIDKA.AsFloat;
            vl_docPosition.f_descr := dsDocStringsF_DESCR.AsString;
            vl_docPosition.f_summ := dsDocStringsF_SUM.AsFloat;
            self.SetF_psition(vl_docPosition);
            dsDocStrings.Next;
          end;

        end;
        Free;
      end;
  end;
end;

procedure TOutDoc.OpenEditFrm;
begin
  case doc_type of
    1:
      with TFrmOutputDoc.Create(Application.MainForm) do
      begin
        dsDocHead.ParamByName('f_doc_out').Value := ID_Doc;
        dsDocHead.ParamByName('f_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Расходный документ №', Language,
          TranslateFile) + dsDocHeadF_NUMBER.AsString + ' от ' +
          dsDocHeadF_DATE.AsString;
        if ID_Doc = -10 then
          ID_Doc := dsDocHeadF_doc_out.Value;
        { if mainDs <> nil then
          parentDs:=mainDs; }
        ShowAsChild;
      end;
    2:
      with TFrmRoznSale.Create(Application.MainForm) do
      begin
        if mainDs <> nil then
          parentDs := mainDs;
        dsDocHead.ParamByName('doc_id').Value := ID_Doc;
        dsDocHead.ParamByName('doc_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Розница №', Language, TranslateFile) +
          dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
        WindowState := wsMaximized;
        ShowAsChild;
      end;
    3:
      with TFrmOutDocBack.Create(Application.MainForm) do
      begin
        { if mainDs <> nil then
          parentDs:=mainDs; }
        dsDocHead.ParamByName('f_doc_out').Value := ID_Doc;
        dsDocHead.ParamByName('f_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Возврат поставщику №', Language,
          TranslateFile) + dsDocHeadF_NUMBER.AsString + ' от ' +
          dsDocHeadF_DATE.AsString;
        // WindowState:=wsMaximized;
        ShowAsChild;
      end;
    4:
      with TFrmOutputDoc.Create(Application.MainForm) do
      begin
        { if mainDs <> nil then
          parentDs:=mainDs; }
        dsDocHead.ParamByName('f_doc_out').Value := ID_Doc;
        dsDocHead.ParamByName('f_type').Value := doc_type;
        dsDocHead.Active := true;
        caption := translateCapt('Хоз.документ(р) №', Language, TranslateFile) +
          dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
        // WindowState:=wsMaximized;
        ShowAsChild;
      end;
  end;
  self.Free;
end;

procedure TOutDoc.OpenViewFrm;
begin
  { with TFrmViewDoc.Create(Application.MainForm) do
    begin
    p_doc_name:='T_DOC_OUT';
    p_doc_id:=ID_doc;
    dsDocHead.Active:=true;
    dsDocBody.Active:=true;
    Caption:=dsDocHead.FieldByName('F_TYPE_NAME').AsString+' №'+
    dsDocHead.FieldByName('F_Number').AsString + ' от '+dsDocHead.FieldByName('F_date').AsString;
    //    ShowAsDialog;
    ShowAsChild;

    end; }
  with TFrmDocView.Create(Application.MainForm) do
  begin
    dsDocHead.ParamByName('f_doc_out').Value := ID_Doc;
    dsDocHead.ParamByName('f_type').Value := doc_type;
    dsDocHead.Active := true;
    caption := translateCapt('Хоз.документ(р) №', Language, TranslateFile) +
      dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
    ShowAsChild;
  end;
  self.Free;
end;

procedure TOutDoc.SaveDoc;
begin
  with TFrmOutputDoc.Create(Application.MainForm) do
  begin
    dsDocHead.ParamByName('f_doc_out').Value := ID_Doc;
    dsDocHead.ParamByName('f_type').Value := doc_type;
    dsDocHead.Active := true;
    dsDocHead.Edit;
    dsDocHeadF_PARTNER.Value := self.f_partner.Partner_id;
    dsDocHeadF_SKLAD.Value := self.f_sklad.GetId;
//    dsDocHeadF_PRICE.Value := self.f_
    if dsDocHead.State = dsEdit then
      dsDocHead.Post;
    dsDocHead.Transaction.CommitRetaining;
    free;
  end;
end;

procedure TOutDoc.SetF_date(p_date: Tdate);
begin
  self.f_date := p_date;
end;

procedure TOutDoc.SetF_descr(p_descr: string);
begin
  self.f_descr := p_descr;
end;

procedure TOutDoc.SetF_guid(p_guid: string);
begin
  self.f_guid := p_guid;
end;

procedure TOutDoc.SetF_number(p_number: string);
begin
  self.f_number := p_number;
end;

procedure TOutDoc.SetF_partner(p_partner: TNsiPartner);
begin
  self.f_partner := p_partner;
end;

procedure TOutDoc.SetF_psition(p_position: TDocPosition);
var
  vl_index: integer;
begin
  vl_index := length(self.f_positions);
  SetLength(self.f_positions, vl_index + 1);
  self.f_positions[vl_index] := p_position;
end;

procedure TOutDoc.SetF_sklad(p_sklad: TNsiSklad);
begin
  self.f_sklad := p_sklad;
end;

procedure TOutDoc.SetF_state(p_state: integer);
begin
  self.f_state := p_state;
end;

procedure TOutDoc.SetF_type(p_type: integer);
begin
  self.f_type := p_type;
end;

procedure TOutDoc.SetF_user(p_user: String);
begin
  self.f_user := p_user;
end;

function TOutDoc.Synchcronyze: TResultSoap;
var
  vl_OutDocumentServicesImpl: OutDocumentServicesImpl;
  vl_doc: outDocument;
  vl_result: OutDocumentServicesImpl1.serviceResult;
  vl_cnt: integer;
  vl_positions: OutDocumentServicesImpl1.Array_Of_documentPos;
//  vl_pos : documentPos;
begin
  vl_OutDocumentServicesImpl := getOutDocumentServicesImpl(false,'',dm.HTTPRIO1);
  vl_doc := outDocument.Create;
  vl_doc.f_guid := f_guid;
  vl_doc.f_number := f_number;
  vl_doc.f_type := f_type;
  vl_doc.f_state := f_state;
  vl_doc.f_partner := OutDocumentServicesImpl1.partner.Create();
  vl_doc.f_partner.f_inn := f_partner.GetInn;
  vl_doc.f_partner.f_name := f_partner.getName;
  vl_doc.f_partner.f_address := f_partner.GetAddress;
  vl_doc.f_user := f_user;
  vl_doc.f_sklad := OutDocumentServicesImpl1.sklad.Create;
  vl_doc.f_sklad.f_prefix := f_sklad.GetPrefix;
  vl_doc.f_price := OutDocumentServicesImpl1.price.Create;
  // vl_doc.f_date := TXSDateTime.Create();
  vl_doc.f_date := FormatDateTime('DD.MM.YYYY', f_date);
  // vl_doc.f_date.AsDateTime := f_date;
  SetLength(vl_positions, length(self.f_positions));
//  SetLength(vl_doc.f_positions,length(self.f_positions));
  for vl_cnt := 0 to length(f_positions) - 1 do
  begin

    vl_positions[vl_cnt] := OutDocumentServicesImpl1.documentPos.Create();
  {  vl_positions[vl_cnt].f_quant := f_positions[vl_cnt].f_quant;
    vl_positions[vl_cnt].f_price := f_positions[vl_cnt].f_price;
    vl_positions[vl_cnt].f_price_val := f_positions[vl_cnt].f_price_val;
    vl_positions[vl_cnt].f_good := good.Create();
    vl_positions[vl_cnt].f_good.f_article := f_positions[vl_cnt]
      .f_good.GetArticle();
  }
  //  vl_pos := documentPos.Create();
    with vl_positions[vl_cnt] do
    begin
      f_quant := f_positions[vl_cnt].f_quant;
      f_price := f_positions[vl_cnt].f_price;
      f_price_val := f_positions[vl_cnt].f_price_val;
      f_good := OutDocumentServicesImpl1.good.Create();
      f_good.f_article := f_positions[vl_cnt].f_good.GetArticle();
    end;
   // vl_doc.f_positions[vl_cnt] := vl_pos;
  end;
  vl_doc.f_positions := vl_positions;
  try
    CoInitialize(nil);
    vl_result := vl_OutDocumentServicesImpl.SaveDoc(vl_doc);
    CoUninitialize;
  except
    on E: Exception do
    begin
//      vl_doc.ObjectToSOAP()
      vl_result := OutDocumentServicesImpl1.serviceResult.Create;
      vl_result.result := OutDocumentServicesImpl1.sresult.ERROR;
      vl_result.meaasge := E.Message;
    end;
  end;
  vl_doc.Free;
  vl_OutDocumentServicesImpl._Release;
  result.f_message := vl_result.meaasge;
  case vl_result.result of
   // OutDocumentServicesImpl1.sresult.OK:
     OutDocumentServicesImpl1.sResult.OK:
      result.f_result := 1;
   // OutDocumentServicesImpl1.sresult.ERROR:
      OutDocumentServicesImpl1.sResult.ERROR:
      result.f_result := 0;
  end;

end;

{ TInputPay }

function TInputPay.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TInputPay.Create(var doc_id: integer);
begin
  ID_Doc := doc_id;
end;

function TInputPay.ExportDoc: PChar;
begin

end;

destructor TInputPay.Free;
begin

end;

procedure TInputPay.ImportXmlDoc(xmlDocument: IXMLNode);
begin

end;

procedure TInputPay.OpenEditFrm;
begin
  with TFrmInputPay.Create(Application.MainForm) do
  begin
    dsMoneyInHead.ParamByName('F_pay').Value := ID_Doc;
    dsMoneyInHead.ParamByName('F_MONEY_TYPE').Value := doc_type;
    dsMoneyInHead.Active := true;
    if ID_Doc = -10 then
      ID_Doc := dsMoneyInHeadF_pay.Value;
    ShowAsChild;
  end;
  self.Free;
end;

procedure TInputPay.SaveDoc;
begin

end;

{ TMoveDoc }

function TMoveDoc.ChangeState(p_newstate: integer): integer;
begin
  dm.pStChangeState.StoredProcName := 'SP_T_DOC_MOVE_U';
  dm.pStChangeState.ParamByName('f_id').Value := ID_Doc;
  dm.pStChangeState.ParamByName('f_state').Value := p_newstate;
  dm.pStChangeState.ExecProc;
  dm.pStChangeState.Transaction.CommitRetaining;
end;

constructor TMoveDoc.Create(var doc_id: integer);
begin
  ID_Doc := doc_id;
end;

function TMoveDoc.ExportDoc: PChar;
begin

end;

destructor TMoveDoc.Free;
begin

end;

procedure TMoveDoc.ImportXmlDoc(xmlDocument: IXMLNode);
begin

end;

procedure TMoveDoc.InitFromDb;
var
  vl_docPosition: TDocPosition;
begin
  case doc_type of
    1:
      begin
        with TFrmMoveDoc.Create(Application.MainForm) do
        begin
          doc := self;
          dsDocHead.ParamByName('doc_id').Value := ID_Doc;
          dsDocHead.ParamByName('doc_type').Value := doc_type;
          dsDocHead.Active := true;
          caption := translateCapt('Перемещение №', Language, TranslateFile) +
            dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
          if ID_Doc = -10 then
            ID_Doc := dsDocHeadDoc_id.Value;
          self.SetF_number(dsDocHeadF_NUMBER.Value);
          self.SetF_date(dsDocHeadF_DATE.Value);
          self.SetF_descr(dsDocHeadF_DOP_INFO.Value);
          self.SetF_sklad_from(TNsiSklad.Create);
          self.f_sklad_from.SetId(dsDocHeadF_SKLAD_FROM.Value);
          self.f_sklad_from.SetPrefix(dsDocHeadF_SKLAD_FROM_PREFIX.value);
          self.f_sklad_from.SetName(dsDocHeadF_SKLAD_FROM_F_NAME.Value);
          self.SetF_sklad_to(TNsiSklad.Create);
          self.f_sklad_to.SetId(dsDocHeadF_SKLAD_TO.Value);
          self.f_sklad_to.SetName(dsDocHeadF_SKLAD_TO_F_NAME.Value);
          self.f_sklad_to.SetPrefix(dsDocHeadF_SKLAD_TO_PREFIX.value);
          self.SetF_guid(dsDocHeadF_GUID.Value);
          self.SetF_user(dsDocHeadF_User.value);
          self.SetF_price(dsDocHeadF_PRICE_NAME.Value);
          dsDocStrings.First;
          while not dsDocStrings.Eof do
          begin
            vl_docPosition.f_quant := dsDocStringsF_CNT.AsInteger;
            vl_docPosition.f_good := TNsiGood.Create();
            vl_docPosition.f_good.SetArticle(dsDocStringsF_article.AsString);
            vl_docPosition.f_price_val := dsDocStringsF_PRICE_VAL.AsFloat;
            vl_docPosition.f_price := dsDocStringsF_PRICE_VAL.AsFloat;
            vl_docPosition.f_descr := dsDocStringsF_DESCR.AsString;
            vl_docPosition.f_summ := dsDocStringsF_SUM.AsFloat;
            self.SetF_psition(vl_docPosition);
            dsDocStrings.Next;
          end;
          free;
        end;
      end;
  end;
end;

procedure TMoveDoc.OpenEditFrm;
var
  can_edit_price: string;
begin
  can_edit_price := dm.GetSYSValue('CAN_EDIT_OUT_PRICE');
  case doc_type of
    1:
      begin
        with TFrmMoveDoc.Create(Application.MainForm) do
        begin
          doc := self;
          dsDocHead.ParamByName('doc_id').Value := ID_Doc;
          dsDocHead.ParamByName('doc_type').Value := doc_type;
          dsDocHead.Active := true;
          caption := translateCapt('Перемещение №', Language, TranslateFile) +
            dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
          if ID_Doc = -10 then
            ID_Doc := dsDocHeadDoc_id.Value;
          if can_edit_price = '1' then
            cxGrid1DBTableView1F_PRICE_VAL.Options.Editing := true;
          ShowAsChild;
        end;
      end;
    2:
      begin
        with // TFrmDocSpisan.Create(Application.MainForm)do
          TFrmMoveDocSpisan.Create(Application.MainForm) do
        begin
          // doc:=self;
          dsDocHead.ParamByName('doc_id').Value := ID_Doc;
          dsDocHead.ParamByName('doc_type').Value := doc_type;
          dsDocHead.Active := true;
          caption := translateCapt('Списание №', Language, TranslateFile) +
            dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
          if ID_Doc = -10 then
            ID_Doc := dsDocHeadDoc_id.Value;
          ShowAsChild;
        end;
      end;
    3:
      begin
        with TFrmMoveDocPrihod.Create(Application.MainForm) do
        begin
          doc := self;
          dsDocHead.ParamByName('doc_id').Value := ID_Doc;
          dsDocHead.ParamByName('doc_type').Value := doc_type;
          dsDocHead.Active := true;
          caption := translateCapt('Оприходование №', Language, TranslateFile) +
            dsDocHeadF_NUMBER.AsString + ' от ' + dsDocHeadF_DATE.AsString;
          if ID_Doc = -10 then
            ID_Doc := dsDocHeadDoc_id.Value;
          ShowAsChild;
        end;
      end;

  end;

end;

procedure TMoveDoc.SaveDoc;
begin

end;

procedure TMoveDoc.SetF_date(p_date: Tdate);
begin
  self.f_date := p_date;
end;

procedure TMoveDoc.SetF_descr(p_descr: string);
begin
   self.f_descr := p_descr;
end;

procedure TMoveDoc.SetF_guid(p_guid: string);
begin
  self.f_guid := p_guid;
end;

procedure TMoveDoc.SetF_number(p_number: string);
begin
  self.f_number := p_number;
end;

procedure TMoveDoc.SetF_partner(p_partner: TNsiPartner);
begin
  self.f_partner := p_partner;
end;

procedure TMoveDoc.SetF_price(p_price: String);
begin
  self.f_price := p_price;
end;

procedure TMoveDoc.SetF_psition(p_position: TDocPosition);
var
  vl_index: integer;
begin
  vl_index := length(self.f_positions);
  SetLength(self.f_positions, vl_index + 1);
  self.f_positions[vl_index] := p_position;
end;

procedure TMoveDoc.SetF_sklad_from(p_sklad: TNsiSklad);
begin
  self.f_sklad_from := p_sklad;
end;

procedure TMoveDoc.SetF_sklad_to(p_sklad: TNsiSklad);
begin
  self.f_sklad_to := p_sklad;
end;

procedure TMoveDoc.SetF_state(p_state: integer);
begin
  self.f_state := p_state;
end;


procedure TMoveDoc.SetF_user(p_user: String);
begin
   self.f_user := p_user;
end;

function TMoveDoc.Synchcronyze: TResultSoap;
var
  vl_MoveDocServ : MoveDocumentServicesImpl;
  vl_doc: moveDocument;
  vl_result: serviceResult;
  vl_cnt: integer;
  vl_positions: Array_Of_documentPos;

begin
    {TODO -oMAK -cMoveDoc : Синхронизация через сервис}
    vl_MoveDocServ := GetMoveDocumentServicesImpl(false,'',dm.HTTPRIO1);
    vl_doc := moveDocument.Create;
    vl_doc.f_guid := self.f_guid;
    vl_doc.f_number := self.f_number;
    vl_doc.f_descr := self.f_descr;
    vl_doc.f_date := FormatDateTime('DD.MM.YYYY', f_date);
    vl_doc.f_sklad_from := sklad.Create;
    vl_doc.f_sklad_from.f_prefix := self.f_sklad_from.GetPrefix;
    vl_doc.f_sklad_to := sklad.Create;
    vl_doc.f_sklad_to.f_prefix := self.f_sklad_to.GetPrefix;
    vl_doc.f_user := self.f_user;
    SetLength(vl_positions, length(self.f_positions));
  for vl_cnt := 0 to length(f_positions) - 1 do
  begin

    vl_positions[vl_cnt] := documentPos.Create();
  {  vl_positions[vl_cnt].f_quant := f_positions[vl_cnt].f_quant;
    vl_positions[vl_cnt].f_price := f_positions[vl_cnt].f_price;
    vl_positions[vl_cnt].f_price_val := f_positions[vl_cnt].f_price_val;
    vl_positions[vl_cnt].f_good := good.Create();
    vl_positions[vl_cnt].f_good.f_article := f_positions[vl_cnt]
      .f_good.GetArticle();
  }
  //  vl_pos := documentPos.Create();
    with vl_positions[vl_cnt] do
    begin
      f_quant := f_positions[vl_cnt].f_quant;
      f_price := f_positions[vl_cnt].f_price;
      f_price_val := f_positions[vl_cnt].f_price_val;
      f_good := good.Create();
      f_good.f_article := f_positions[vl_cnt].f_good.GetArticle();
    end;
   // vl_doc.f_positions[vl_cnt] := vl_pos;
  end;
  vl_doc.f_positions := vl_positions;
  try
    CoInitialize(nil);
    vl_result := vl_MoveDocServ.SetDocument(vl_doc);
    CoUninitialize;
  except
    on E: Exception do
    begin
//      vl_doc.ObjectToSOAP()
      vl_result := serviceResult.Create;
      vl_result.result := sresult.ERROR;
      vl_result.meaasge := E.Message;
    end;
  end;
  vl_doc.Free;
  vl_MoveDocServ._Release;
  result.f_message := vl_result.meaasge;
  case vl_result.result of
   // OutDocumentServicesImpl1.sresult.OK:
     MoveDocumentServicesImpl1.sResult.OK:
      result.f_result := 1;
   // OutDocumentServicesImpl1.sresult.ERROR:
     MoveDocumentServicesImpl1.sResult.ERROR:
      result.f_result := 0;
  end;
end;

{ TInventoryDoc }

function TInventoryDoc.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TInventoryDoc.Create(var doc_id: integer);
begin
  ID_Doc := doc_id;
end;

function TInventoryDoc.ExportDoc: PChar;
begin

end;

destructor TInventoryDoc.Free;
begin

end;

procedure TInventoryDoc.ImportXmlDoc(xmlDocument: IXMLNode);
begin

end;

procedure TInventoryDoc.OpenEditFrm;
begin
  with TFrmEditInventory.Create(Application.MainForm) do
  begin
    dsDocHead.ParamByName('F_INVENTORY').Value := ID_Doc;
    dsDocHead.Active := true;
    if ID_Doc = -10 then
      ID_Doc := dsDocHeadf_inv.Value;
    ShowAsChild;
  end;
end;

procedure TInventoryDoc.SaveDoc;
begin

end;

{ TOutputPay }

function TOutputPay.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TOutputPay.Create(var doc_id: integer);
begin
  ID_Doc := doc_id;
end;

function TOutputPay.ExportDoc: PChar;
begin

end;

destructor TOutputPay.Free;
begin

end;

procedure TOutputPay.ImportXmlDoc(xmlDocument: IXMLNode);
begin

end;

procedure TOutputPay.OpenEditFrm;
begin
  with TFrmOutputPay.Create(Application.MainForm) do
  begin
    dsMoneyInHead.ParamByName('F_pay').Value := ID_Doc;
    dsMoneyInHead.ParamByName('F_MONEY_TYPE').Value := doc_type;
    dsMoneyInHead.Active := true;
    if ID_Doc = 0 then
      ID_Doc := dsMoneyInHeadF_pay.Value;
    ShowAsChild;
  end;
  self.Free;
end;

procedure TOutputPay.SaveDoc;
begin

end;

{ TTemplateDoc }

function TTemplateDoc.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TTemplateDoc.Create(var doc_id: integer);
begin
  ID_Doc := doc_id;
end;

function TTemplateDoc.ExportDoc: PChar;
begin

end;

destructor TTemplateDoc.Free;
begin

end;

procedure TTemplateDoc.ImportXmlDoc(xmlDocument: IXMLNode);
begin

end;

procedure TTemplateDoc.OpenEditFrm;
begin
  with TFrmTemplateDoc.Create(Application.MainForm) do
  begin
    dsDocHead.ParamByName('DOC_ID').Value := ID_Doc;
    dsDocHead.Active := true;
    if ID_Doc = -10 then
      ID_Doc := dsDocHeadDoc_id.Value;
    ShowAsChild;
  end;
  self.Free;
end;

procedure TTemplateDoc.SaveDoc;
begin

end;

{ TZakazDoc }

function TZakazDoc.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TZakazDoc.Create(var doc_id: integer);
begin
  self.ID_Doc := doc_id;
end;

function TZakazDoc.ExportDoc: PChar;
begin

end;

destructor TZakazDoc.Free;
begin

end;

procedure TZakazDoc.ImportXmlDoc(xmlDocument: IXMLNode);
var
  base_id,sklad_id,i,j,k,id,res,f_col         : integer;
  NodeDocs,NewDoc,nodeBody,newPos,ValueDoc    : IXmlNode;
  f_partner,f_good                            : integer;
  f_summ                                      : Currency;
begin
      LogMsg('Загружаем заголовок документа');
      NodeDocs:=xmlDocument;
      NewDoc:=NodeDocs.ChildNodes['T_NSI_PARTNER'];
      f_partner:=dm.ImportPartner(NewDoc,base_id);
      with TFrmZakazDoc.CreateForm(Application.MainForm) do
      begin
        dsDocHead.ParamByName('DOC_ID').Value := -10;
        dsDocHead.Active := true;
        dsDocHead.Edit;
        NewDoc := NodeDocs.ChildNodes['wbNumber'];
        dsDocHeadF_NUMBER.Value := NewDoc.Text;
        NewDoc:=NodeDocs.ChildNodes['wbDate'];
        LogMsg('Дата документа: '+NewDoc.Text);
//        dsDocHeadF_DATE.Value:=NewDoc.Text;
        dsDocHeadF_PARTNER.Value := f_partner;
        LogMsg('Записываем заголовок');
        dsDocHead.Post;
        nodeBody:=NodeDocs.ChildNodes['DocBody'];
        for j := 0 to nodeBody.ChildNodes.Count - 1 do
        begin
          newPos:=nodeBody.ChildNodes[j];
          LogMsg('строка документа: '+IntToStr(j));

          NewDoc:=newPos.ChildNodes['T_NSI_GOOD'];
          LogMsg('Импортируем номенклатуру');
          f_good:=dm.ImportGood(NewDoc,base_id);
          LogMsg('Номенклатура загружена');


          f_summ:=StrToCurr(newPos.ChildNodes['Summ'].Text);
          f_col := StrToInt(newPos.ChildNodes['Kol'].Text);
          dsDocBody.Insert;
          dsDocBodyF_GOOD.Value := f_good;
          dsDocBodyF_CNT.Value := f_col;
          dsDocBodyF_SUM.Value := f_summ;
          dsDocBodyF_PRICE_VAL.Value :=  f_summ / f_col;
          dsDocBody.Post;

//          spInsDocStr.ParamByName('f_cnt').Value:=newPos.ChildNodes['Kol'].Text;
//          spInsDocStr.ParamByName('f_sum').Value:=newPos.ChildNodes['Summ'].Text;


        end;
        dsDocHead.Transaction.CommitRetaining;
        RefreshDs(dsDocBody, 'F_GOOD', dsDocBodyF_GOOD.Value);
        caption := translateCapt('Заказ №', Language,
          TranslateFile) + dsDocHeadF_NUMBER.AsString + ' от ' +
          dsDocHeadF_DATE.AsString;
         // if self.ID_Doc = -10 then
          self.ID_Doc := dsDocHeadF_doc.Value;
        ShowAsChild;
      end;
{
      dsImportDoc.Active:=false;
      dsImportDoc.ParamByName('f_partner').Value:=f_partner;
      dsImportDoc.ParamByName('f_doc_type').Value:=NodeDocs.Attributes['DocType'];
//      dsImportDoc.ParamByName('f_doc_type').Value:=NodeDocs.Attributes['DocType'];
      dsImportDoc.ParamByName('f_ext_id').Value:=NodeDocs.Attributes['Id'];
      dsImportDoc.ParamByName('f_ext_base').Value:=base_id;
      dsImportDoc.ParamByName('f_sklad').Value:=sklad_id;
      NewDoc:=NodeDocs.ChildNodes['DocUser'];
      dsImportDoc.ParamByName('f_user').Value:=NewDoc.Text;
      NewDoc:=NodeDocs.ChildNodes['wbSkdPrc'];
      if NewDoc.Text <> '' then
        dsImportDoc.ParamByName('F_SKD_PRC').Value:=NewDoc.Text
      else
        dsImportDoc.ParamByName('F_SKD_PRC').Clear;
      NewDoc:=NodeDocs.ChildNodes['wbNumber'];
      LogMsg('Номер документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_number').Value:=NewDoc.Text;
      NewDoc:=NodeDocs.ChildNodes['wbDate'];
      LogMsg('Дата документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_date').Value:=NewDoc.Text;
      NewDoc:=NodeDocs.ChildNodes['Discount_card'];
      LogMsg('скидочная карта документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_discount').Value:=NewDoc.Text;

      LogMsg('Записываем заголовок');
      dsImportDoc.Active:=true;
      LogMsg('Заголовок записан');
      LogMsg('Загружаем табличную часть');
      nodeBody:=NodeDocs.ChildNodes['DocBody'];
      spInsDocStr.ParamByName('f_doc_out').Value:=dsImportDoc.FieldByName('f_id').Value;
      for j := 0 to nodeBody.ChildNodes.Count - 1 do
      begin
        newPos:=nodeBody.ChildNodes[j];
        LogMsg('строка документа: '+IntToStr(j));
        f_summ:=StrToCurr(newPos.ChildNodes['Summ'].Text);

        spInsDocStr.ParamByName('f_cnt').Value:=newPos.ChildNodes['Kol'].Text;
        spInsDocStr.ParamByName('f_sum').Value:=newPos.ChildNodes['Summ'].Text;
        if newPos.ChildNodes['Description'].Text<>'' then
          spInsDocStr.ParamByName('f_descr').Value:=newPos.ChildNodes['Description'].Text
        else
          spInsDocStr.ParamByName('f_descr').Clear;
        spInsDocStr.ParamByName('f_price').Value:=f_summ/spInsDocStr.ParamByName('f_cnt').Value;
        if newPos.ChildNodes['Skidka'].Text <> '' then
          spInsDocStr.ParamByName('f_skd').Value:= newPos.ChildNodes['Skidka'].Text
        else
          spInsDocStr.ParamByName('f_skd').Clear;
        NewDoc:=newPos.ChildNodes['T_NSI_GOOD'];
        LogMsg('Импортируем номенклатуру');
        f_good:=dm.ImportGood(NewDoc,base_id);
        LogMsg('Номенклатура загружена');
        spInsDocStr.ParamByName('f_good').Value:=f_good;
        LogMsg('Записываем строку документа');
        spInsDocStr.ExecProc;
        LogMsg('Строка записана');
      end;
      dsImportDoc.Transaction.CommitRetaining;
      LogMsg('Фиксация документа');
      id:=dsImportDoc.FieldByName('f_id').AsInteger;}

end;

procedure TZakazDoc.OpenEditFrm;
begin
  with TFrmZakazDoc.CreateForm(Application.MainForm) do
  begin
    dsDocHead.ParamByName('DOC_ID').Value := self.ID_Doc;
    dsDocHead.Active := true;
        caption := translateCapt('Заказ №', Language,
          TranslateFile) + dsDocHeadF_NUMBER.AsString + ' от ' +
          dsDocHeadF_DATE.AsString;
    if self.ID_Doc = -10 then
      self.ID_Doc := dsDocHeadF_doc.Value;
    ShowAsChild;
  end;
  self.Free;
end;

procedure TZakazDoc.SaveDoc;
begin

end;

end.
