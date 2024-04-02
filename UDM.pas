unit UDM;

interface

uses
  SysUtils, Classes, ActnList, ImgList, Controls, Forms, DSContainer,
  FIBDatabase, pFIBDatabase, DB, ADODB, Dialogs, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBQuery, pFIBStoredProc, msXmlDom, XmlDoc, XmlDom, XmlIntf,
  pFIBScripter, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, IdFTPList, cxEdit,
  cxEditRepositoryItems,
  SIBEABase, SIBFIBEA, IB_Services, IdIntercept, IdInterceptThrottler,
  UThrRefreshNsi,
  Provider, pFIBClientDataSet, DBClient, ExtCtrls, cxStyles, cxClasses,
  cxGridTableView, StdActns,
  cxGraphics, cxGridCardView, cxVGrid, cxDropDownEdit, pFIBErrorHandler, fib,
  cxImageList, System.ImageList, System.Actions, cxLocalization, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLookAndFeels, Soap.InvokeRegistry,
  Soap.Rio, Soap.SOAPHTTPClient, Soap.SOAPHTTPTrans,
  UQueueProc, IdHTTP, cxDBEditRepository;

type
  Tdm = class(TDataModule)
    ActionList: TActionList;
    ActNsiTovar: TAction;
    ActNsiPartner: TAction;
    ActNsiSklad: TAction;
    ActNsiStatus: TAction;
    ImageList: TImageList;
    ActDocInp: TAction;
    ActDocOut: TAction;
    ActDocMoneyInp: TAction;
    ActDocMoneyOut: TAction;
    pFIBDatabase: TpFIBDatabase;
    pFIBTransaction: TpFIBTransaction;
    ActNsiPrice: TAction;
    dsGood_ins: TpFIBDataSet;
    dsGetGoodByScan: TpFIBDataSet;
    ActNsiBank: TAction;
    dsGetGoodByScanF_NAME: TFIBStringField;
    dsGetGoodByScanF_GOODS_GRP: TFIBBCDField;
    dsGetGoodByScanF_ED_IZM: TFIBBCDField;
    dsGetGoodByScanF_ED_IZM_NAME: TFIBStringField;
    dsGetGoodByScanF_ED_IZM_SHORT_NAME: TFIBStringField;
    ActZapas: TAction;
    dsGetGoodByScanF_ARTICLE: TFIBStringField;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    ActDocPrice: TAction;
    ActDocMove: TAction;
    srGetGoodByScan: TDataSource;
    ActInventory: TAction;
    dsStateSource: TpFIBDataSet;
    dsStateSourceF_ID: TFIBBCDField;
    dsStateSourceF_NAME: TFIBStringField;
    dsStateSourceF_PARENT: TFIBBCDField;
    srStateSource: TDataSource;
    spImportPartner: TpFIBDataSet;
    spImportPartnerF_ID: TFIBBCDField;
    dsImportScancode: TpFIBDataSet;
    dsImportScancodeF_RESULT: TFIBSmallIntField;
    dsImportNsiGood: TpFIBDataSet;
    ActDocInpBack: TAction;
    ActDocOutBack: TAction;
    DsPublicDs: TpFIBDataSet;
    pStChangeState: TpFIBStoredProc;
    ActDocMoveSpisan: TAction;
    IdFTP: TIdFTP;
    spImportPictures: TpFIBStoredProc;
    ActDocMovePrihod: TAction;
    ActDocTemplate: TAction;
    ActNsiDiscount: TAction;
    ActReportKKM: TAction;
    dsGetPhoto: TpFIBDataSet;
    dsGetPhotoF_MEMO: TFIBBlobField;
    srGetPhoto: TDataSource;
    spUpdateGood: TpFIBStoredProc;
    ActNsiTovarType: TAction;
    cxEditRepository: TcxEditRepository;
    ActDocInpHz: TAction;
    ActDocOutHZ: TAction;
    ActNsiDocProperty: TAction;
    spSetContext: TpFIBStoredProc;
    dsGetSysParam: TpFIBDataSet;
    dsNsiGoods: TpFIBDataSet;
    dsNsiGoodsF_NAME: TFIBStringField;
    dsNsiGoodsF_GOODS_GRP: TFIBBCDField;
    dsNsiGoodsF_ARTICLE: TFIBStringField;
    dsNsiGoodsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsNsiGoodsF_DOP_INFO: TFIBStringField;
    dsNsiGoodsF_ED_IZM: TFIBBCDField;
    dsNsiGoodsF_ED_IZM_NAME: TFIBStringField;
    dsNsiGoodsF_PICTURE: TStringField;
    dsNsiGoodsF_COLOR: TFIBStringField;
    spPostEventGood: TpFIBStoredProc;
    TimerRefreshNsiGood: TTimer;
    ActNsiGoodsInfo: TAction;
    dsSklad: TpFIBDataSet;
    dsSkladF_ID: TFIBBCDField;
    dsSkladF_NAME: TFIBStringField;
    dsNsiGoodsF_GOOD: TFIBBCDField;
    dsGetGoodByScanF_GOOD: TFIBBCDField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    WindowCascade1: TWindowCascade;
    ImageListLage: TImageList;
    cxImageList1: TcxImageList;
    dsNsiGoodsF_MMEDIA: TFIBBlobField;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    dsNsiGoodsF_CRE_DATE: TFIBDateField;
    cxStyle36: TcxStyle;
    cxVerticalGridStyleSheetDevExpress: TcxVerticalGridStyleSheet;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    dsGoodProps: TpFIBDataSet;
    dsGoodsPropsValues: TpFIBDataSet;
    dsGoodsPropsValuesF_ID: TFIBBCDField;
    dsGoodsPropsValuesF_NSI_GOODS_INFO: TFIBBCDField;
    dsGoodsPropsValuesF_ORDER: TFIBBCDField;
    dsGoodsPropsValuesF_VALUE: TFIBStringField;
    dsGoodPropsF_ID: TFIBBCDField;
    dsGoodPropsF_NAME: TFIBStringField;
    dsGoodPropsF_MULTI: TFIBSmallIntField;
    cxEditRepositoryComboBoxItem1: TcxEditRepositoryComboBoxItem;
    dsNsiGoodsF_GOOD_TYPE: TFIBStringField;
    dsNsiGoodsDopInfo: TpFIBDataSet;
    dsImportNsiGoodsDopInfo: TpFIBDataSet;
    dsImportNsiGoodsDopInfoF_ID: TFIBBCDField;
    dsImportNsiGoodsDopInfoF_GOOD: TFIBBCDField;
    dsImportNsiGoodsDopInfoF_GOOD_INFO: TFIBBCDField;
    dsImportNsiGoodsDopInfoF_GOOD_INFO_NAME: TFIBStringField;
    dsImportNsiGoodsDopInfoF_GOOD_INFO_VAL: TFIBStringField;
    spSetGoodCh_Date: TpFIBStoredProc;
    pFibErrorHandler1: TpFibErrorHandler;
    dsNsiDocProp: TpFIBDataSet;
    cxLookAndFeelController: TcxLookAndFeelController;
    HTTPRIO1: THTTPRIO;
    dsWebQueueGet: TpFIBDataSet;
    dsWebQueueGetF_ID: TFIBIntegerField;
    dsWebQueueSel: TpFIBDataSet;
    dsWebQueueSelF_ID: TFIBBCDField;
    dsWebQueueSelF_OBJ_TYPE: TFIBStringField;
    dsWebQueueSelF_OBJ_ID: TFIBBCDField;
    dsWebQueueSelF_GUID: TFIBStringField;
    dsWebQueueSelF_CRE_TIME: TFIBDateTimeField;
    dsWebQueueSelF_SEND_TIME: TFIBDateTimeField;
    dsWebQueueSelF_RESULT: TFIBStringField;
    dsWebQueueSelF_MESSAGE: TFIBStringField;
    spWebQueueSetResult: TpFIBStoredProc;
    pFIBTransaction1: TpFIBTransaction;
    IdHTTP1: TIdHTTP;
    srSklad: TDataSource;
    GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    ActDocZakaz: TAction;
    pFIBSecurityService1: TpFIBSecurityService;
    dsSkladF_PREFIX: TStringField;
    dsPrice: TpFIBDataSet;
    cxEditRepositorydsPrice: TcxEditRepositoryLookupComboBoxItem;
    srPrice: TDataSource;
    cxEditRepositoryDateItem1: TcxEditRepositoryDateItem;
    cxLocalizer1: TcxLocalizer;
    dsGetGoodByScanF_SCANCODE: TFIBBCDField;
    dsGetGoodByScanF_SCANCODE_VAL: TFIBStringField;
    procedure DummyAct(Sender: TObject);
    procedure ActDocInpExecute(Sender: TObject);
    procedure ActNsiPartnerExecute(Sender: TObject);
    procedure ActNsiTovarExecute(Sender: TObject);
    procedure ActDocOutExecute(Sender: TObject);
    procedure ActNsiPriceExecute(Sender: TObject);
    procedure ActNsiSkladExecute(Sender: TObject);
    procedure ActNsiBankExecute(Sender: TObject);
    procedure ActZapasExecute(Sender: TObject);
    procedure ActDocPriceExecute(Sender: TObject);
    procedure ActDocMoneyInpExecute(Sender: TObject);
    procedure ActDocMoveExecute(Sender: TObject);
    procedure ActInventoryExecute(Sender: TObject);
    procedure pFIBDatabaseAfterConnect(Sender: TObject);
    procedure ActDocInpBackExecute(Sender: TObject);
    procedure ActDocOutBackExecute(Sender: TObject);
    procedure ActDocMoneyOutExecute(Sender: TObject);
    procedure ActDocMoveSpisanExecute(Sender: TObject);
    procedure ActDocMovePrihodExecute(Sender: TObject);
    procedure ActDocTemplateExecute(Sender: TObject);
    procedure ActNsiDiscountExecute(Sender: TObject);
    procedure ActReportKKMExecute(Sender: TObject);
    procedure ActNsiTovarTypeExecute(Sender: TObject);
    procedure ActDocInpHzExecute(Sender: TObject);
    procedure ActDocOutHZExecute(Sender: TObject);
    procedure ActNsiDocPropertyExecute(Sender: TObject);
    procedure SIBfibEventAlerterEventAlert(Sender: TObject; EventName: string;
      EventCount: Integer);
    procedure TimerRefreshNsiGoodTimer(Sender: TObject);
    procedure ActNsiGoodsInfoExecute(Sender: TObject);
    procedure pFIBDatabaseBeforeConnect(Database: TFIBDatabase;
      LoginParams: TStrings; var DoConnect: Boolean);
    procedure pFIBDatabaseBeforeDisconnect(Sender: TObject);
    procedure RefreshNsiGoodGUI;
    procedure dsGoodPropsAfterOpen(DataSet: TDataSet);
    procedure pFibErrorHandler1FIBErrorEvent(Sender: TObject;
      ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
    procedure HTTPRIO1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ActDocZakazExecute(Sender: TObject);

  private
    { Private declarations }
    queueProc: TQueueProc;
  public
    { Public declarations }
    refreshThread: TRefreshNsi;
    refreshNsiGood: Boolean;



    procedure UploadPhoto(Article: string; Path: string; ChDate: TDateTime);
    function ImportGood(GoodNode: IXmlNode; ext_base: Integer): Integer;
    function ImportPartner(PartnerNode: IXmlNode; ext_base: Integer): Integer;
    ///  <summary>
    ///  Импорт Товара с описанием и доп.реквизитами
    ///  </summary>
    function InsExtGood(Article, name, NSI_DOP_INFO_VAL : string; dop_info: string = ''; good_type: string = ''; p_cnt: Integer = 0): Integer;
    function GetSYSValue(sysParam: string): string;

  end;

procedure RefreshDs(DS: TDataSet; FldName: string = 'No'; key: Integer = 0;
  fetch: Boolean = false);
procedure PostAllDS(P_comp: TComponent; Commit: Boolean;
  p_close: Boolean = false);
procedure ExportDs(DS: Pointer);
procedure LogMsg(msg: string);
procedure ClearLog;

var
  dm: Tdm;

implementation

uses
  uFrmPrototype, UPublic, uFrmProgress, cxGridDBTableView;

{$R *.dfm}

procedure ClearLog;
var
  logFile: TextFile;
  filehandle: Integer;

begin
  if FileExists(app_data + '\nikita.log') then
  begin
    try
      DeleteFile(app_data + '\nikita.log');
    finally

    end;
  end;
end;
///  <summary>
///  Логирование действий
/// </summary>
procedure LogMsg(msg: string);
var
  logFile: TextFile;
  filehandle: Integer;
begin
  if Not FileExists(app_data + '\nikita.log') then
  begin
    filehandle := FileCreate(app_data + '\nikita.log');
    fileClose(filehandle);
  end;
  try
    AssignFile(logFile, app_data + '\nikita.log');
    Append(logFile);
    Writeln(logFile, TimeToStr(time) + ': ' + msg);
    Flush(logFile);
    CloseFile(logFile);
  Except
    on E: Exception do ShowMessage(E.Message);

  //finally

    //ShowMessage('Ошибка записи в лог '+);
  end;
end;

procedure ExportDs(DS: Pointer);
var
  dlgRes: TModalResult;
  NodeDoc: TXmlDocument;
  RecNode: IXmlNode;
  i: Integer;
begin
  NodeDoc := TXmlDocument.Create(application);
  NodeDoc.Active := true;
  // RecNode:=NodeDoc.AddChild('Документ');
  if (TComponent(DS^) is TDataSet) then
  begin
    TDataSet(DS^).DisableControls;
    TDataSet(DS^).Active := true;
    TDataSet(DS^).First;
    while not TDataSet(DS^).Eof do
    begin
      RecNode := NodeDoc.AddChild(TDataSet(DS^).name);
      for i := 0 to TDataSet(DS^).FieldCount - 1 do
      begin
        RecNode.Attributes[TDataSet(DS^).Fields[i].FieldName] := TDataSet(DS^)
          .Fields[i].AsString;
      end;
      TDataSet(DS^).Next;
    end;
  end;
  NodeDoc.SaveToFile('c:\file.xml');
  NodeDoc.Free;
end;

procedure PostAllDS(P_comp: TComponent; Commit: Boolean;
  p_close: Boolean = false);
var
  i: Integer;
  dlgRes: TModalResult;
begin
  dlgRes := mrNone;
  with P_comp do
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TpFIBDataSet then
      begin
        if TpFIBDataSet(Components[i]).Active then
        begin
          if TpFIBDataSet(Components[i]).State in [dsEdit, dsInsert] then
          begin
            try
              TpFIBDataSet(Components[i]).Post;
            except
              on E: Exception do
              begin
                TpFIBDataSet(Components[i]).Cancel;
                MessageDlg(E.Message, mtError, [], E.HelpContext);
              end;
            end;
          end;
          if Commit then
            try
              TpFIBDataSet(Components[i]).Transaction.CommitRetaining;
            except
              on E: Exception do
              begin
                TpFIBDataSet(Components[i]).Transaction.RollbackRetaining;
                MessageDlg(E.Message, mtError, [], E.HelpContext);
              end;
            end;
          if p_close then
            TpFIBDataSet(Components[i]).Active := false;
        end;
      end;
    end;
  end;
end;

procedure RefreshDs(DS: TDataSet; FldName: string = 'No'; key: Integer = 0;
  fetch: Boolean = false);
var
  id, i: Integer;
  pnt: TbookMark;
  FieldName: string;
begin
  id := 0;
  pnt := DS.GetBookmark;
  DS.DisableControls;
  if (DS.Active) then
  begin
    if FldName = 'No' then
    begin
      for i := 0 to DS.FieldCount - 1 do
      begin
        if ((DS.Fields[i].Tag = 1) and not DS.Fields[i].IsNull) then
        begin
          FieldName := DS.Fields[i].FieldName;
          break;
        end;
      end;
    end
    else
      FieldName := FldName;
    if (DS.Fields.FindField(FieldName) <> nil) then
      if (not DS.Fields.FindField(FieldName).IsNull) then
        if not DS.FieldByName(FieldName).Calculated then
          id := DS.FieldByName(FieldName).Value;
  end;
  DS.Active := false;
  DS.Active := true;
  if fetch then
    DS.Last;
  DS.GotoBookmark(pnt);
  if key > 0 then
    id := key;
  if (id > 0) and (DS.Fields.FindField(FieldName) <> nil) then
  begin
    DS.Locate(FieldName, id, []);
  end;
  DS.EnableControls;
end;

procedure Tdm.ActDocInpBackExecute(Sender: TObject);
begin
  ShowInDocBackJournal;
end;

procedure Tdm.ActDocInpExecute(Sender: TObject);
begin
  ShowDocInJournal;
end;

procedure Tdm.ActDocInpHzExecute(Sender: TObject);
begin
  ShowDocInJournalHz;
end;

procedure Tdm.ActDocMoneyInpExecute(Sender: TObject);
begin
  ShowMoneyInJournal;
end;

procedure Tdm.ActDocMoneyOutExecute(Sender: TObject);
begin
  ShowMoneyOutJournal;
end;

procedure Tdm.ActDocMoveExecute(Sender: TObject);
begin
  ShowMoveDocJournal;
end;

procedure Tdm.ActDocMovePrihodExecute(Sender: TObject);
begin
  ShowMoveDocPrihodJournal;
end;

procedure Tdm.ActDocMoveSpisanExecute(Sender: TObject);
begin
  ShowMoveDocSpisanJournal;
end;

procedure Tdm.ActDocOutBackExecute(Sender: TObject);
begin
  ShowOutDocBackJournal;
end;

procedure Tdm.ActDocOutExecute(Sender: TObject);
begin
  ShowDocOutJournal;
end;

procedure Tdm.ActDocOutHZExecute(Sender: TObject);
begin
  ShowDocOutJournalHz;
end;

procedure Tdm.ActDocPriceExecute(Sender: TObject);
begin
  ShowDocPriceJournal;
end;

procedure Tdm.ActDocTemplateExecute(Sender: TObject);
begin
  ShowTemplateDocJournal;
end;

procedure Tdm.ActDocZakazExecute(Sender: TObject);
begin
  ShowZakazList;
end;

procedure Tdm.ActInventoryExecute(Sender: TObject);
begin
  ShowInventoryJournal;
end;

procedure Tdm.ActNsiTovarTypeExecute(Sender: TObject);
begin
  ShowNsiGoodType;
end;

procedure Tdm.ActNsiBankExecute(Sender: TObject);
begin
  ShowNsiBank;
end;

procedure Tdm.ActNsiDiscountExecute(Sender: TObject);
begin
  ShowNsiDiscountCard;
end;

procedure Tdm.ActNsiDocPropertyExecute(Sender: TObject);
begin
  ShowNsiDocProperty;
end;

procedure Tdm.ActNsiGoodsInfoExecute(Sender: TObject);
begin
  ShowNsiGoodsInfo;
end;

procedure Tdm.ActNsiPartnerExecute(Sender: TObject);
begin
  ShowNsiPartner;
end;

procedure Tdm.ActNsiPriceExecute(Sender: TObject);
begin
  ShowNsiPrice;
end;

procedure Tdm.ActNsiSkladExecute(Sender: TObject);
begin
  ShowNsiSklad;
end;

procedure Tdm.ActNsiTovarExecute(Sender: TObject);
begin
  ShowNsiGoods;
end;

procedure Tdm.ActReportKKMExecute(Sender: TObject);
begin
  ShowKKMReport;
end;

procedure Tdm.ActZapasExecute(Sender: TObject);
begin
  ShowZapas;
end;

{procedure Tdm.cxGridDBTableViewDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
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
                                                                                                                                                                                                            }
procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  if Assigned(queueProc) then
    FreeAndNil(queueProc);
end;

procedure Tdm.dsGoodPropsAfterOpen(DataSet: TDataSet);
var
  i: Integer;
  editItemClass: TcxEditRepositoryItemClass;
  editItem: TcxEditRepositoryItem;
begin
  DataSet.First;
//  cxEditRepository.Clear;
  while not DataSet.Eof do
  begin
    // cxEditRepository.Items[dataset.RecNo]:=TcxEditRepositorySpinItem.Create(self);
    // editItem:=TcxEditRepositoryItemClass.
    dsGoodsPropsValues.Active := false;
    dsGoodsPropsValues.ParamByName('f_nsi_goods_info').Value :=
      DataSet.FieldByName('F_ID').AsInteger;
    dsGoodsPropsValues.Active := true;
    dsGoodsPropsValues.Last;
    if dsGoodsPropsValues.RecordCount > 0 then
    begin
      editItemClass := TcxEditRepositoryComboBoxItem;
      editItem := cxEditRepository.CreateItem(TcxEditRepositoryComboBoxItem);
      // TcxEditRepositoryComboBoxItem(editItem).Properties.DropDownListStyle:= lsFixedList
      dsGoodsPropsValues.First;

      while not dsGoodsPropsValues.Eof do
      begin
        TcxEditRepositoryComboBoxItem(editItem).Properties.Items.Add
          (dsGoodsPropsValuesF_VALUE.Value);
        dsGoodsPropsValues.Next;
      end;
      TcxEditRepositoryComboBoxItem(editItem).Properties.DropDownListStyle :=
        lsFixedList;
      editItem.name := 'Editor' + DataSet.FieldByName('F_ID').AsString;
    end;
    { editItem:=cxEditRepository.CreateItem(editItemClass);
      editItemClass(editItem).
      with cxEditRepository.CreateItem(editItemClass) do
      begin
      Name:='Editor'+dataSet.FieldByName('F_ID').AsString;
      end; }
    DataSet.Next;
  end;

end;

procedure Tdm.DummyAct(Sender: TObject);
begin
  with TFrmPrototype.Create(application.MainForm) do
  begin
    showAsChild;
  end;
end;

function Tdm.GetSYSValue(sysParam: string): string;
begin
  dsGetSysParam.Active := false;
  dsGetSysParam.ParamByName('PARAM_NAME').Value := sysParam;
  dsGetSysParam.Active := true;
  result := dsGetSysParam.FieldByName('PARAM_VALUE').AsString;
end;

procedure Tdm.HTTPRIO1HTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Data: Pointer);
begin
  { HTTPReqResp.UserName:='msk01';
    HTTPReqResp.Password:='msk456ert'; }
end;

function Tdm.ImportGood(GoodNode: IXmlNode; ext_base: Integer): Integer;
var
  f_partner, k: Integer;
  Scancodes: IXmlNode;
  str: string;
  ftp_path: string;
  ms: TMemoryStream;
  AFList: TIdFTPListItems;
begin

  DsPublicDs.Active := false;
  DsPublicDs.SQLs.SelectSQL.Clear;
  DsPublicDs.SQLs.SelectSQL.Add
    ('SELECT coalesce(param_value,1) as param_value FROM SP_GET_SYS_PARAM(''download_photo'')');
  DsPublicDs.Active := true;
  if (DsPublicDs.FieldByName('param_value').AsInteger = 1) then
  begin
    LogMsg('Грузим фотку');
    DsPublicDs.Active := false;
    DsPublicDs.SQLs.SelectSQL.Clear;
    DsPublicDs.SQLs.SelectSQL.Add
      ('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_host'')');
    DsPublicDs.Active := true;
    // ftpClient.HostName:=dsPublicDS.FieldByName('param_value').AsString;
    DsPublicDs.Active := false;
    DsPublicDs.SQLs.SelectSQL.Clear;
    DsPublicDs.SQLs.SelectSQL.Add
      ('SELECT coalesce(param_value,''21'') as param_value FROM SP_GET_SYS_PARAM(''ftp_port'')');
    DsPublicDs.Active := true;
    // ftpClient.Port:=dsPublicDS.FieldByName('param_value').AsString;
    DsPublicDs.Active := false;
    DsPublicDs.SQLs.SelectSQL.Clear;
    DsPublicDs.SQLs.SelectSQL.Add
      ('SELECT coalesce(param_value,''/'') as param_value FROM SP_GET_SYS_PARAM(''ftp_path'')');
    DsPublicDs.Active := true;
    ftp_path := DsPublicDs.FieldByName('param_value').AsString;
    // ftpClient.HostDirName:=dsPublicDS.FieldByName('param_value').AsString;
    DsPublicDs.Active := false;
    DsPublicDs.SQLs.SelectSQL.Clear;
    DsPublicDs.SQLs.SelectSQL.Add
      ('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_login'')');
    DsPublicDs.Active := true;
    // ftpClient.UserName:=dsPublicDS.FieldByName('param_value').AsString;
    DsPublicDs.Active := false;
    DsPublicDs.SQLs.SelectSQL.Clear;
    DsPublicDs.SQLs.SelectSQL.Add
      ('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_password'')');
    DsPublicDs.Active := true;
    { ftpClient.PassWord:=dsPublicDS.FieldByName('param_value').AsString;
      try
      if not ftpClient.Connected then
      begin
      ftpClient.Passive:=true;
      ftpClient.Connect;
      ftpClient.TypeBinary;
      end;
      //      ftpClient.HostDirName:='/';
      CreateDir(Prg_PAth+'\photo');

      except
      end; }
  end;

  LogMsg('Начинаем загрузку номенклатуры');
  f_partner := ImportPartner(GoodNode.ChildNodes['T_NSI_PARTNER'], ext_base);
  dsImportNsiGood.Active := false;
  dsImportNsiGood.Params.ClearValues;
  dsImportNsiGood.ParamByName('f_name').Value := GoodNode.ChildNodes
    ['f_name'].Text;
  dsImportNsiGood.ParamByName('F_UPDATE').Value := 0;

  if GoodNode.ChildNodes['f_barter'].Text <> '' then
    dsImportNsiGood.ParamByName('f_barter').Value := GoodNode.ChildNodes
      ['f_barter'].Text;
  LogMsg('Наименование: ' + GoodNode.ChildNodes['f_name'].Text);
  // dsImportNsiGood.ParamByName('f_id').Value:=GoodNode.ChildNodes['f_id'].Text;
  dsImportNsiGood.ParamByName('f_article').Value := GoodNode.ChildNodes
    ['f_article'].Text;
  LogMsg('Артикул: ' + GoodNode.ChildNodes['f_article'].Text);
  str := StringReplace(GoodNode.ChildNodes['f_article'].Text, ' ', '_',
    [rfReplaceAll]) + '.jpg';
  dsImportNsiGood.ParamByName('f_dop_info').Value := GoodNode.ChildNodes
    ['f_dop_info'].Text;
  LogMsg('Описание: ' + GoodNode.ChildNodes['f_dop_info'].Text);

  dsImportNsiGood.ParamByName('f_partner').Value := f_partner;
  dsImportNsiGood.ParamByName('f_ext_base').Value := ext_base;
  dsImportNsiGood.Active := true;
  LogMsg('Зафиксировали в справочнике');
  dsImportScancode.ParamByName('f_good').Value :=
    dsImportNsiGood.FieldByName('f_good_id').Value;
  LogMsg('Начинаем загружать штрихкоды');
  Scancodes := GoodNode.ChildNodes['T_NSI_SCANCODE'];
  for k := 0 to Scancodes.ChildNodes.Count - 1 do
  begin
    dsImportScancode.Active := false;
    if Scancodes.ChildNodes[k].IsTextElement then
      dsImportScancode.ParamByName('f_Scancode').Value :=
        Scancodes.ChildNodes[k].Text
    else
    begin
      dsImportScancode.ParamByName('f_Scancode').Value := Scancodes.ChildNodes
        [k].DOMNode.firstChild.nodeValue;
    end;
    LogMsg('Штрихкод: ' + dsImportScancode.ParamByName('f_Scancode').Value);
    dsImportScancode.Active := true;
    LogMsg('Штрихкод загружен');
  end;
  { dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,1) as param_value FROM SP_GET_SYS_PARAM(''download_photo'')');
    dsPublicDS.Active:=true;
    if (dsPublicDS.FieldByName('param_value').AsInteger=1) then
    begin
    LogMsg('Грузим фотку');
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_host'')');
    dsPublicDS.Active:=true;
    ftpClient.HostName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''21'') as param_value FROM SP_GET_SYS_PARAM(''ftp_port'')');
    dsPublicDS.Active:=true;
    ftpClient.Port:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''/'') as param_value FROM SP_GET_SYS_PARAM(''ftp_path'')');
    dsPublicDS.Active:=true;
    str:=dsPublicDS.FieldByName('param_value').AsString;
    //    ftpClient.HostDirName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_login'')');
    dsPublicDS.Active:=true;
    ftpClient.UserName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_password'')');
    dsPublicDS.Active:=true;
    ftpClient.PassWord:=dsPublicDS.FieldByName('param_value').AsString;
  }
  { if ftpClient.Connected then
    begin
    try

    ftpClient.HostFileName:=ftp_path+'/'+str;
    ftpClient.LocalFileName:=Prg_PAth+'\photo\'+str;

    ftpClient.size;
    if ftpClient.SizeResult>0 then

    if ftpClient.Get then
    begin


    AFList:=TIdFTPListItems.Create;

    IdFTP.ExtListItem(AFList,str);
    if AFList.Count>0 then
    begin
    IdFTP.Get(str,Prg_PAth+'\photo\'+str,true);//Файл Откуда-Куда
    spImportPictures.ParamByName('F_article').Value:=GoodNode.ChildNodes['f_article'].Text;
    spImportPictures.ParamByName('F_mmedia').LoadFromFile(Prg_PAth+'\photo\'+str);
    spImportPictures.ExecProc;
    end
    else
    begin
    LogMsg('Не удалось загрузить с фтп');
    LogMsg(ftpClient.ErrorMessage);
    end;
    except
    end; }
  { if IdFTP.Connected then
    IdFTP.Disconnect;
    //    AFList.Free;
    end; }
  DsPublicDs.Active := false;
  DsPublicDs.SQLs.SelectSQL.Clear;
  result := dsImportNsiGood.FieldByName('f_good_id').AsInteger;
  LogMsg('Номенклатура загружена');
end;

function Tdm.ImportPartner(PartnerNode: IXmlNode; ext_base: Integer): Integer;
begin
  spImportPartner.Active := false;
  spImportPartner.ParamByName('f_name').Value := PartnerNode.ChildNodes
    ['f_name'].Text;
  spImportPartner.ParamByName('f_inn').Value := PartnerNode.ChildNodes
    ['f_inn'].Text;
  spImportPartner.ParamByName('f_kpp').Value := PartnerNode.ChildNodes
    ['f_kpp'].Text;
  spImportPartner.ParamByName('f_ext_base').Value := ext_base;
  spImportPartner.ParamByName('f_ext_id').Value := PartnerNode.ChildNodes
    ['f_id'].Text;
  spImportPartner.Active := true;
  result := spImportPartner.FieldByName('f_id').AsInteger;
end;

function Tdm.InsExtGood(Article, name, NSI_DOP_INFO_VAL : string; dop_info: string = ''; good_type: string = ''; p_cnt: Integer = 0): Integer;
begin
  dsImportNsiGood.Active := false;
  dsImportNsiGood.Params.ClearValues;
  dsImportNsiGood.ParamByName('f_update').Value := 1;
  if name <> '' then
    dsImportNsiGood.ParamByName('f_name').Value := name;
  dsImportNsiGood.ParamByName('f_article').Value := Article;
  dsImportNsiGood.ParamByName('f_dop_info').Value := dop_info;
  dsImportNsiGood.ParamByName('f_good_type').Value := good_type;
  dsImportNsiGood.ParamByName('f_cnt').Value := p_cnt;
  dsImportNsiGood.Active := true;
  dsImportNsiGood.Transaction.CommitRetaining;
  result := dsImportNsiGood.FieldByName('f_good_id').AsInteger;
end;

procedure Tdm.pFIBDatabaseAfterConnect(Sender: TObject);
var
  frm_progress: TFrmProgress;
begin
  LogMsg('После подключения, инициализация справочников');
  frm_progress := TFrmProgress.Create(application.MainForm);
  frm_progress.cxProgressBar.Properties.Max := 4;
  frm_progress.Show;
  try
    LogMsg('Грузим статусы');
    dsStateSource.Active := true;
    dsStateSource.FetchAll;
    frm_progress.cxProgressBar.Position:= 1;
    LogMsg('Грузим склады');
    dsSklad.Active := true;
    dsSklad.FetchAll;
    frm_progress.cxProgressBar.Position:= 2;
    dsPrice.Active := true;
    dsPrice.FetchAll;
    frm_progress.cxProgressBar.Position:= 3;
    LogMsg('Грузим товары');
    dsGoodProps.Active := true;
    dsGoodProps.FetchAll;
    frm_progress.cxProgressBar.Position:= 4;
  except
    on E: Exception do
    begin
      MessageDlg(E.Message, mtError, [], E.HelpContext);
    end;
  end;
  frm_progress.Close;
  frm_progress.Free;
//  TimerRefreshNsiGood.enabled := true;
end;

procedure Tdm.pFIBDatabaseBeforeConnect(Database: TFIBDatabase;
  LoginParams: TStrings; var DoConnect: Boolean);
begin
  LogMsg('Устанавливаем путь к базе '+DataBasePath);
  Database.DbName := DataBasePath;
  LogMsg('Установили путь');
end;

procedure Tdm.pFIBDatabaseBeforeDisconnect(Sender: TObject);
begin
  try
    if refreshThread <> nil then
      refreshThread.Terminate;
  finally

  end;
end;

procedure Tdm.pFibErrorHandler1FIBErrorEvent(Sender: TObject;
  ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);

begin
  { ShowMessage(ErrorValue.SQLMessage);
    DoRaise:=true; }
end;

procedure Tdm.RefreshNsiGoodGUI;
var
  frm_progress: TFrmProgress;
begin
  if refreshThread <> nil then
    refreshThread.Terminate;
  dsNsiGoods.DisableControls;
  dsNsiGoods.Active := false;
  TimerRefreshNsiGood.Enabled := false;
  frm_progress := TFrmProgress.Create(application.MainForm);
  frm_progress.Show;
  try
    DM.dsNsiGoods.Active := true;
    frm_progress.cxProgressBar.Properties.Max := DM.dsNsiGoods.RecordCount;
    frm_progress.cxLabel.Caption := 'Загружаем справочник товаров';
    while not DM.dsNsiGoods.Eof do
    begin
      frm_progress.cxProgressBar.Position := DM.dsNsiGoods.RecNo;
      application.ProcessMessages;
      DM.dsNsiGoods.Next;
    end;

  except
    on E: Exception do
    begin
      MessageDlg(E.Message, mtError, [], E.HelpContext);
    end;
  end;
  frm_progress.Close;
  frm_progress.Free;
  TimerRefreshNsiGood.Enabled := true;
  dsNsiGoods.EnableControls;
end;

procedure Tdm.SIBfibEventAlerterEventAlert(Sender: TObject; EventName: string;
  EventCount: Integer);
var
  v_context_val: string;
begin
  if EventName = 'need_password' then
  begin
    v_context_val := GetPassword;
  end;
  if EventName = 'refresh_goods' then
  begin
    // if refreshThread<>nil then
    refreshNsiGood := true;

  end;
end;

procedure Tdm.TimerRefreshNsiGoodTimer(Sender: TObject);
var
  vl_param: String;
begin
{
  if HTTPRIO1.URL = '' then
  begin
    vl_param := GetSYSValue('SOAP_ADDRESS');
    if vl_param <> '' then
    begin
      HTTPRIO1.URL := vl_param;
      HTTPRIO1.HTTPWebNode.UserName := GetSYSValue('SOAP_LOGIN');
      HTTPRIO1.HTTPWebNode.Password := GetSYSValue('SOAP_PASSWORD');
    end;
  end;
  if HTTPRIO1.URL <> '' then
  begin
    try
      IdHTTP1.Request.UserName := HTTPRIO1.HTTPWebNode.UserName;
      IdHTTP1.Request.Password := HTTPRIO1.HTTPWebNode.Password;
      IdHTTP1.get(HTTPRIO1.URL);
    except
      exit;
    end;
}
    if Assigned(queueProc) then
      FreeAndNil(queueProc);
    queueProc := TQueueProc.Create;
//  end;
  {
    if refreshNsiGood then
    begin
    if refreshThread <> nil then
    begin
    refreshThread.Terminate;
    refreshThread.WaitFor;
    refreshThread.Free;
    end;
    refreshThread:=TRefreshNsi.Create(false);
    end; }
end;

procedure Tdm.UploadPhoto(Article, Path: string; ChDate: TDateTime);
begin
  dsGetPhoto.Active := false;
  dsGetPhoto.ParamByName('f_good').Value := Article;
  dsGetPhoto.ParamByName('f_ch_date').Value := ChDate;
  dsGetPhoto.Active := true;
  if not dsGetPhoto.Eof then
    TFIBBlobField(DM.dsGetPhoto.FieldByName('F_MEMO'))
      .SaveToFile(Path + '\' + StringReplace(Article, ' ', '_', [rfReplaceAll])
      + '.jpg');
  dsGetPhoto.ParamByName('f_ch_date').Clear;
  dsGetPhoto.Active := false;
end;

end.
