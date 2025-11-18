unit UFrmOutputDoc;

interface

uses
  uinterfaces, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLabel, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, RzDBBnEd, RzDBEdit, DBCtrls, RzDBCmbo,
  StdCtrls, Mask, RzEdit, RzLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, frxExportXML, frxClass, frxExportPDF, frxFIBComponents, frxBarcode,
  Menus, RzStatus, frxExportRTF, frxExportXLS, frxExportHTML, frxCross,
  frxDCtrl, frxDesgn, RzTabs, RzForms, cxButtonEdit, FIBQuery, pFIBQuery,
  pFIBStoredProc, RzSpnEdt, RzDBSpin, cxPropertiesStore, cxImage, cxContainer,
  cxCheckBox, cxDBEdit, cxTextEdit, cxCurrencyEdit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  UDocumentsClasses, UDocClass,
  cxMaskEdit, cxDropDownEdit, frxChBox, frxTableObject,
  frxRich, frxExportBaseDialog, frxExportDOCX, frxOLE, System.ImageList,Vcl.Clipbrd,
  Vcl.ImgList, frxDBSet, dxDateRanges, dxScrollbarAnnotations, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls, dxShellDialogs;

type
  TFrmOutputDoc = class(TFrmPrototype, IFrmDoc)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    dsDocHead: TpFIBDataSet;
    dsDocHeadF_SKLAD: TFIBBCDField;
    dsDocHeadF_PARTNER: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_PARTNER_NAME: TFIBStringField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_NAME: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocStrings: TpFIBDataSet;
    srDocStrings: TDataSource;
    srDocHead: TDataSource;
    pFIBTransaction: TpFIBTransaction;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_DOC_OUT: TFIBBCDField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_CNT: TFIBFloatField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    cxGrid1DBTableView1F_DOC_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    dsDocStringsF_SKLAD_OST: TFIBFloatField;
    cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    dsPaymentsList: TpFIBDataSet;
    srPaymentsList: TDataSource;
    dsPaymentsListF_ID: TFIBBCDField;
    dsPaymentsListF_DOC: TFIBBCDField;
    dsPaymentsListF_MONEY: TFIBBCDField;
    dsPaymentsListF_DOC_INFO: TFIBStringField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1F_ID: TcxGridDBColumn;
    cxGrid2DBTableView1F_DOC: TcxGridDBColumn;
    cxGrid2DBTableView1F_MONEY: TcxGridDBColumn;
    cxGrid2DBTableView1F_DOC_INFO: TcxGridDBColumn;
    spMakePayDoc: TpFIBStoredProc;
    BtnMakePay: TButton;
    dsDocHeadF_SKIDKA: TFIBIntegerField;
    RzLabel7: TRzLabel;
    RzDBSpinEdit1: TRzDBSpinEdit;
    dsDocStringsF_SKIDKA: TFIBBCDField;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn;
    dsDocHeadF_PAY_SUM: TFIBBCDField;
    dsDocHeadF_DOC_SUM: TFIBBCDField;
    dsDocHeadF_PAYDATE_PLAN: TFIBDateField;
    RzLabel8: TRzLabel;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    dsDocHeadF_DOC_OUT: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    chckType: TcxDBCheckBox;
    dsDocHeadF_TYPE: TFIBBCDField;
    dsDocHeadF_PROPERTY_1: TFIBStringField;
    dsDocStringsF_DESCR: TFIBStringField;
    cxGrid1DBTableView1F_DESCR: TcxGridDBColumn;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    dsDocStringsF_PICTURE: TFIBStringField;
    cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_PRICE_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    dsDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn;
    dsDocStringsF_RESERVED: TFIBFloatField;
    cxGrid1DBTableView1F_RESERVED: TcxGridDBColumn;
    BtnSend: TButton;
    dsDocHeadF_PARTNER_INN: TFIBStringField;
    dsDocHeadF_PARTNER_ADRES: TFIBStringField;
    dsDocHeadF_GUID: TFIBStringField;
    dsDocHeadF_USER: TFIBStringField;
    dsDocHeadF_SKLAD_PREF: TFIBStringField;
    dsDocHeadF_OWNER: TFIBIntegerField;
    dsDocHeadF_SKLAD_F_NAME: TFIBStringField;
    RzDBButtonEdit4: TRzDBButtonEdit;
    RzLabel9: TRzLabel;
    dsPaymentsListF_SUMMA: TFIBBCDField;
    cxGrid2DBTableView1F_SUMMA: TcxGridDBColumn;
    Button1: TButton;
    TabSheet3: TRzTabSheet;
    Memo1: TMemo;
    RzURLLabel1: TRzURLLabel;
    dsDocHeadF_EMAIL: TFIBStringField;
    Button2: TButton;
    spSetDocProp: TpFIBStoredProc;
    dsDocHeadF_UKASSA: TFIBStringField;
    IWURL1: TIWURL;
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnOpenClick(Sender: TObject);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure BtnMakePayClick(Sender: TObject);
    procedure dsDocHeadAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure dsPaymentsListAfterDelete(DataSet: TDataSet);
    procedure RzDBSpinEdit1Exit(Sender: TObject);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dsDocStringsAfterScroll(DataSet: TDataSet);
    procedure BtnSendClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzDBButtonEdit4ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsDocStringsCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    scan  : string;
    scan_time : TTime;
    Doc : ^TOutDoc;
    procedure InsPosition;
    function SyncWebService: TResultSoap;
    procedure AddPosition(P_good: Integer; p_cnt: Integer; p_price: Currency);
    procedure RefreshDoc;
    function GetTableName: String;
    function GetDocId: Integer;
    property TableName: String read GetTableName;
    property DocId: Integer read GetDocId;

  end;

var
  FrmOutputDoc: TFrmOutputDoc;

implementation

uses
  System.JSON,System.DateUtils, udm,upublic, UTypes, UNsiClass;
{$R *.dfm}

procedure TFrmOutputDoc.BtnMakePayClick(Sender: TObject);
var
  pay_sum : string;
begin
  pay_sum:=floatToStr(dsDocHeadF_DOC_SUM.AsFloat-dsDocHeadF_PAY_SUM.AsFloat);
  if InputQuery('','Сумма оплаты',pay_sum) then
  begin
    spMakePayDoc.ParamByName('f_doc_id').Value:=dsDocHeadF_DOC_OUT.Value;
    spMakePayDoc.ParamByName('f_sum').Value:=pay_sum;
    spMakePayDoc.ExecProc;
    refreshDs(dsDocHead);
    refreshDs(dsPaymentsList);
  end;
end;

procedure TFrmOutputDoc.BtnOKClick(Sender: TObject);
begin
  PostAllDS(Self,true);
  refreshDs(dsDocStrings);
  inherited;
end;

procedure TFrmOutputDoc.BtnOpenClick(Sender: TObject);
begin
  StartImport(@dsDocStrings);
end;

procedure TFrmOutputDoc.BtnSendClick(Sender: TObject);
begin
  SyncWebService;
end;

procedure TFrmOutputDoc.Button1Click(Sender: TObject);
var
  jsonInvoice,jsonPaymentData,jsonPos,jsonPrice,jsonReciept,jsonCustomer: TJSONObject;
  jsonCart, jsonItem : TJSONArray;
  respJson: TJsonValue;
  request_key : TGUID;
  i : integer;
  vl_result : string;
  vl_owner : TNsiPartner;
  vl_vat : string;
begin
  if length(dsDocHeadF_EMAIL.AsString) = 0 then
  begin
    Dialogs.MessageDlg('Не заполнена электронная почта клиента',mtError,[mbOk],0,mbOk);
    exit;
  end;
  vl_owner := TNsiPartner.Create;
  vl_owner.Partner_id := dsDocHeadF_OWNER.AsInteger;
  if vl_owner.GetNsiProp(21) = '5' then
    vl_vat := '7'
  else
    vl_vat := '1';
  vl_owner.Free;
  jsonInvoice := TJSONObject.Create;
  jsonReciept := TJSONObject.Create;
  jsonCustomer := TJSONObject.Create;
  jsonCustomer.AddPair('full_name',StringReplace(dsDocHeadF_PARTNER_NAME.AsString,AnsiString(#13#10),'',[]));
  jsonCustomer.AddPair('email',dsDocHeadF_EMAIL.AsString);
  jsonReciept.AddPair('customer',jsonCustomer);
  jsonPaymentData := TJSONObject.Create;
  jsonPaymentData.addPair('description',TJSONString.Create('Счет на оплату ' + dsDocHeadF_NUMBER.AsString));
  jsonPaymentData.addPair('capture',TJSONBool.create(true));
  jsonPaymentData.addPair('metadata',TJSONObject.create.addPair('order_id',TJSONNumber.create(dsDocHeadF_DOC_OUT.AsInteger)));
  jsonPrice := TJSONObject.Create;
  jsonPrice.AddPair('value',TJSONNumber.create(dsDocHeadF_DOC_SUM.AsCurrency));
  jsonPrice.AddPair('currency','RUB');
  jsonPaymentData.AddPair('amount',jsonPrice);



  jsonCart := TJSONArray.Create;
  jsonItem := TJSONArray.Create;
  dsDocStrings.First;
  while not dsDocStrings.Eof do
  begin
    jsonPos := TJSONObject.Create;
    vl_result := '(' + dsDocStringsF_ARTICLE.AsString + ') ' + dsDocStringsF_GOOD_NAME.AsString;
    jsonPos.AddPair('description',vl_result);
    jsonPrice := TJSONObject.Create;
    jsonPrice.AddPair('value',TJSONNumber.Create(dsDocStringsF_PRICE_WO_SKIDKA.AsCurrency));
    jsonPrice.AddPair('currency','RUB');
    jsonPos.AddPair('price',jsonPrice);
    jsonPrice := TJSONObject.Create;
    jsonPrice.AddPair('value',TJSONNumber.Create(dsDocStringsF_PRICE_VAL.AsCurrency));
    jsonPrice.AddPair('currency','RUB');
    jsonPos.AddPair('discount_price',jsonPrice);
    jsonPos.AddPair('quantity',TJSONNumber.Create(dsDocStringsF_CNT.AsInteger));
    jsonCart.AddElement(jsonPos);

    jsonPos := TJSONObject.Create;
    vl_result := '(' + dsDocStringsF_ARTICLE.AsString + ') ' + dsDocStringsF_GOOD_NAME.AsString;
    jsonPos.AddPair('description',vl_result);
    jsonPos.AddPair('quantity',TJSONNumber.Create(dsDocStringsF_CNT.AsInteger));
    jsonPrice := TJSONObject.Create;
    jsonPrice.AddPair('value',TJSONNumber.Create(dsDocStringsF_PRICE_VAL.AsCurrency));
    jsonPrice.AddPair('currency','RUB');
    jsonPos.AddPair('amount',jsonPrice);
    jsonPos.AddPair('vat_code',vl_vat);
    jsonItem.AddElement(jsonPos);
    dsDocStrings.Next;
  end;
  jsonReciept.AddPair('items',jsonItem);
  jsonPaymentData.AddPair('receipt',jsonReciept);
  jsonInvoice.AddPair('payment_data',jsonPaymentData);

  jsonInvoice.AddPair('cart',jsonCart);
  jsonInvoice.AddPair('expires_at',DateToISO8601(date()+2));
//  jsonInvoice.AddPair('description','Это пробный счет, не обращать внимания. Отладка');
  jsonPaymentData := TJSONObject.Create;
  jsonPaymentData.addPair('плательщик',dsDocHeadF_PARTNER_NAME.AsString);
  jsonPaymentData.addPair('автор',dm.pFIBDatabase.ConnectParams.UserName);
  jsonInvoice.AddPair('metadata',jsonPaymentData);
//  Memo1.Text := jsonInvoice.ToString;
  dm.RESTRequest1.Params.ParameterByName('d').Value := jsonInvoice.ToString;
  CreateGUID(request_key);
  dm.RESTRequest1.Params.ParameterByName('Idempotence-Key').Value := GUIDToString(request_key);//dsDocHeadF_NUMBER.AsString;
  dm.RESTRequest1.Execute;
  jsonInvoice.Parse(TEncoding.UTF8.GetBytes(dm.RESTRequest1.Response.Content),0);
  Memo1.Lines.Add(jsonInvoice.ToString);
  try
  respJson := jsonInvoice.Values['delivery_method'];
  Memo1.Lines.Add(respJson.ToString);
  RzURLLabel1.Caption := respJson.GetValue<TJSONString>('url').value;
  spSetDocProp.ParamByName('P_DOC_ID').Value := dsDocHeadF_DOC_OUT.AsInteger;
  spSetDocProp.ParamByName('P_DOC_MOVETYPE').Value := 2;
  spSetDocProp.ParamByName('P_PROPERTY_ID').Value := 3;
  spSetDocProp.ParamByName('P_VALUE').Value := RzURLLabel1.Caption;
  spSetDocProp.ExecProc;
  spSetDocProp.Transaction.CommitRetaining;
  Memo1.Lines.Add(RzURLLabel1.Caption);
  except
  on E : Exception do
        Dialogs.MessageDlg('Ошибка получения ссылки - ' + E.Message,mtError,[mbOk],0,mbOk);
  end;
  jsonInvoice.free;
end;

procedure TFrmOutputDoc.Button2Click(Sender: TObject);
var
  ClipBoard : TClipboard;
begin
  ClipBoard:=TClipboard.Create;
  ClipBoard.SetTextBuf(PChar(RzURLLabel1.Caption));
  ClipBoard.Free;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_CNT' then
  begin
    cxGrid1DBTableView1F_CNT.Options.Editing:=true;
  end
  else
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_PRICE_VAL' then
  begin
    cxGrid1DBTableView1F_PRICE_VAL.Options.Editing:=true;
  end
  else
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_DESCR' then
  begin
    cxGrid1DBTableView1F_DESCR.Options.Editing:=true;
  end
  else
  if (ACellViewInfo.Item.Name='cxGrid1DBTableView1F_RESERVED') and (dsDocStringsF_RESERVED.AsInteger>0) then
  begin
    GetReservDocByArticle(dsDocStringsF_good.AsInteger,dsDocStringsF_article.AsString);
  end
  else
  begin
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index];
  end;

  if ((AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_sklad_OST.Index]
      -AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_reserved.Index]
    <0)
    and (AviewInfo.Item.Name='cxGrid1DBTableView1F_CNT')
  )then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  with TcxDragControlObject(Source) do
  begin
    if Control is TcxGridSite then
      with TcxGridSite(Control) do
      begin
        DragDropGood(TcxGridDBTableView(GridView),dsDocStrings);
      end;
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if sender <> Source then
      if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')<>nil then
      begin
        Accept:=true;
      end;
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
    begin
      if (time()- scan_time)<0.0001 then
        scan:=scan+key
      ELSE
        scan:=key;
      scan_time:=time();
    end;
  end;
end;


procedure TFrmOutputDoc.cxGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift=[ssCtrl]) and (Key=vk_F1) then
    BtnSend.Visible:=true;
end;

procedure TFrmOutputDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  dsDocHead.ParamByName('f_doc_out').Value:=dsDocHeadf_doc_out.Value;
  dsDocStrings.ParamByName('f_doc_out').Value:=dsDocHeadf_doc_out.Value;
  dsDocStrings.Active:=true;
  dsPaymentsList.Active:=true;
  RzURLLabel1.Caption := dsDocHeadF_UKASSA.AsString;
end;

procedure TFrmOutputDoc.dsDocHeadAfterPost(DataSet: TDataSet);
begin
  inherited;
  refreshDs(dsDocStrings);
end;

procedure TFrmOutputDoc.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmOutputDoc.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  cxGrid1DBTableView1F_CNT.Options.Editing:=false;
  cxGrid1DBTableView1F_PRICE_VAL.Options.Editing:=false;
  cxGrid1DBTableView1F_DESCR.Options.Editing:=false;
  dsDocStrings.Transaction.CommitRetaining;
  if  not dsDocStringsF_GOOD.IsNull then
    RefreshDs(DataSet,'F_GOOD',dsDocStringsF_GOOD.AsInteger)
  else
    RefreshDs(DataSet,'F_GOOD',dsDocStringsF_GOOD.AsInteger);
  cxGrid1.SetFocus;
end;


procedure TFrmOutputDoc.dsDocStringsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cxGrid1DBTableView1F_CNT.Options.Editing:=false;
  cxGrid1DBTableView1F_PRICE_VAL.Options.Editing:=false;
  cxGrid1DBTableView1F_DESCR.Options.Editing:=false;

end;

procedure TFrmOutputDoc.dsDocStringsCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcFieldsDopInfo(DataSet,'f_good_dop_info');
end;

procedure TFrmOutputDoc.dsPaymentsListAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid2.SetFocus;
end;

procedure TFrmOutputDoc.FormCreate(Sender: TObject);
begin
  AddInfoColumns(cxGrid1DBTableView1);
  inherited;
end;

procedure TFrmOutputDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
  goods:=GetNsiGood(dsDocHeadF_DATE.Value,scan,dsDocHeadF_SKLAD.Value,dsDocHeadF_PRICE.AsInteger);
  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      dsDocStrings.Insert;
      dsDocStringsF_Good.Value:=goods[i];
      dsDocStrings.Post;
      cxGrid1DBTableView1.DataController.SelectRows(
        cxGrid1DBTableView1.DataController.FocusedRowIndex,
        cxGrid1DBTableView1.DataController.FocusedRowIndex);

    end;
  end
  else
  begin
    beep;
  end;
  scan:='';
end;

procedure TFrmOutputDoc.RzDBButtonEdit1ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_PARTNER.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmOutputDoc.RzDBButtonEdit2ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiSklad;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_SKLAD.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmOutputDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPrice;
  if (key>0) then
  begin
    dsDocHead.Edit;
    dsDocHeadF_PRICE.Value:=key;
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocStrings);
  end;
end;

procedure TFrmOutputDoc.RzDBButtonEdit4ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_OWNER.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmOutputDoc.RzDBSpinEdit1Exit(Sender: TObject);
begin
  inherited;
  if dsDocHead.State=dsEdit then
  begin
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocStrings);
  end;
end;

function TFrmOutputDoc.SyncWebService :TResultSoap;
var
  doc : TOutDocument;
  partner : TNsiPartner;
  sklad   : TNsiSklad;
  vl_docPosition : UDocumentsClasses.TDocPosition;
begin
  doc:=TOutDocument.Create();
  doc.SetF_number(self.dsDocHeadF_NUMBER.AsString);
  doc.SetF_state(self.dsDocHeadF_STATE.AsInteger);
  doc.SetF_type(self.dsDocHeadF_TYPE.AsInteger);
  doc.SetF_date(self.dsDocHeadF_Date.AsDateTime);
  partner:=TNsiPartner.Create;
  partner.SetName(self.dsDocHeadF_PARTNER_NAME.AsString);
  partner.SetInn(self.dsDocHeadF_PARTNER_INN.AsString);
  partner.SetAddress(self.dsDocHeadF_PARTNER_ADRES.AsString);
  sklad:= TnsiSklad.Create();
  sklad.SetPrefix(self.dsDocHeadF_SKLAD_PREF.AsString);
  doc.SetF_partner(partner);
  doc.setF_sklad(sklad);
  doc.SetF_guid(self.dsDocHeadF_Guid.AsString);
  doc.SetF_user(self.dsDocHeadF_USER.AsString);
  //self.dsDocHeadF_GUID);
  doc.SetF_date(self.dsDocHeadF_DATE.AsDateTime);
  dsDocStrings.First;
  while not dsDocStrings.Eof do
  begin
    vl_docPosition.f_quant:=self.dsDocStringsF_CNT.AsInteger;
    vl_docPosition.f_good:=TNsiGood.Create();
    vl_docPosition.f_good.SetArticle(dsDocStringsF_article.AsString);
    vl_docPosition.f_price_val:=self.dsDocStringsF_PRICE_VAL.AsFloat;
    vl_docPosition.f_price:=self.dsDocStringsF_PRICE_WO_SKIDKA.AsFloat;
    vl_docPosition.f_descr:=self.dsDocStringsF_DESCR.AsString;
    vl_docPosition.f_summ:=self.dsDocStringsF_SUM.AsFloat;
//    vl_docPosition.f_discount_prc:=self.dsDocStr
    doc.SetF_psition(vl_docPosition);
    dsDocStrings.Next;
  end;
  result:=doc.Synchcronyze;
  partner.Free;
  sklad.Free;
  doc.Free;
end;

procedure TFrmOutputDoc.AddPosition(P_good: Integer; p_cnt: Integer;
  p_price: Currency);
begin
  raise Exception.Create('Not implemented!'); { TODO: Implement }
end;

procedure TFrmOutputDoc.RefreshDoc;
begin
//  raise Exception.Create('Not implemented!'); { TODO: Implement }
  RefreshDs(dsDocStrings);
end;

function TFrmOutputDoc.GetTableName: String;
begin
  //raise Exception.Create('Not implemented!'); { TODO: Implement }
  result := 'T_DOC_OUT';
end;

function TFrmOutputDoc.GetDocId: Integer;
begin
//  raise Exception.Create('Not implemented!'); { TODO: Implement }
  if dsDocHead.Active then
    result := dsDocHeadF_DOC_OUT.AsInteger
  else
    result := 0;
end;

end.
