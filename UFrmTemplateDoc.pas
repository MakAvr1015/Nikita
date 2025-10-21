unit UFrmTemplateDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, RzDBEdit, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit,
  RzLabel, RzPanel, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, RzButton, ExtCtrls, RzStatus, FIBDataSet,
  pFIBDataSet, cxImage, RzDBBnEd, FIBDatabase, pFIBDatabase, cxContainer,
  cxDBEdit, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, UFramBanner,
  cxSplitter,
  UInterfaces, cxTextEdit, cxMaskEdit, cxDropDownEdit, System.ImageList,
  Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich, frxExportBaseDialog,
  frxExportDOCX, frxOLE, dxDateRanges, dxScrollbarAnnotations, dxShellDialogs,
  dxBarBuiltInMenu, cxButtons, cxPC, FIBQuery, pFIBQuery, pFIBStoredProc;

/// <summary>
/// Документ - заготовка
/// </summary>
type
  TFrmTemplateDoc = class(TFrmPrototype, IFrmDoc)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    srDocStrings: TDataSource;
    dsDocStrings: TpFIBDataSet;
    dsDocHead: TpFIBDataSet;
    srDocHead: TDataSource;
    RzLabel6: TRzLabel;
    RzDBButtonEdit3: TRzDBButtonEdit;
    dsDocHeadDOC_ID: TFIBBCDField;
    dsDocHeadF_DOC_MOVE: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_DOC_TEMPLATE: TFIBBCDField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    dsDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsDocStringsF_ED_IZM_NAME: TFIBStringField;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_CNT: TFIBBCDField;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_TEMPLATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    dsDocStringsF_OST_SKLAD_DEF: TFIBBCDField;
    cxGrid1DBTableView1F_OST_SKLAD_DEF: TcxGridDBColumn;
    dsDocStringsF_DESCR: TFIBStringField;
    cxGrid1DBTableView1F_DESCR: TcxGridDBColumn;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    srGoodPhoto: TDataSource;
    dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    dsDocStringsF_OST: TFIBStringField;
    cxGrid1DBTableView1F_OST: TcxGridDBColumn;
    FramBanner1: TFramBanner;
    cxSplitter1: TcxSplitter;
    dsDocStringsF_RESERVED: TFIBBCDField;
    cxGrid1DBTableView1F_RESERVED: TcxGridDBColumn;
    cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn;
    dsDocStringsF_SCANCODE: TStringField;
    PopupMenuExec: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cxPageControl1: TcxPageControl;
    GoodPage: TcxTabSheet;
    DocsPage: TcxTabSheet;
    funcCreateDoc: TpFIBDataSet;
    dsDocHeadF_SKLAD: TFIBBCDField;
    dsDocHeadF_SKLAD_NAME: TFIBStringField;
    dsDocHeadF_PARTNER: TFIBBCDField;
    dsDocHeadF_PARTNER_NAME: TFIBStringField;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    dsDocsList: TpFIBDataSet;
    dsDocsListF_ID: TFIBBCDField;
    dsDocsListF_DOC_ID: TFIBBCDField;
    dsDocsListF_TYPE: TFIBBCDField;
    dsDocsListF_NAME: TFIBStringField;
    dsDocsListF_NUMBER: TFIBStringField;
    dsDocsListF_DATE: TFIBDateField;
    dsDocsListF_PARTNER: TFIBBCDField;
    dsDocsListF_PARTNER_NAME: TFIBStringField;
    dsDocsListF_PRICE: TFIBBCDField;
    dsDocsListF_PRICE_NAME: TFIBStringField;
    dsDocsListF_SKLAD_FROM: TFIBBCDField;
    dsDocsListF_SKLAD_FROM_NAME: TFIBStringField;
    dsDocsListF_SKLAD_TO: TFIBBCDField;
    dsDocsListF_SKLAD_TO_NAME: TFIBStringField;
    dsDocsListF_STATE: TFIBBCDField;
    dsDocsListF_STATE_NAME: TFIBStringField;
    dsDocsListF_CNT: TFIBBCDField;
    dsDocsListF_SUM: TFIBBCDField;
    srDocList: TDataSource;
    RzToolbar1: TRzToolbar;
    BtnNew1: TRzToolButton;
    BtnInsertRecord: TRzToolButton;
    BtnDeleteRecord: TRzToolButton;
    pFIBStoredProcLinkDocs: TpFIBStoredProc;
    dsDocStringsF_CNT_OUT: TFIBBCDField;
    dsDocStringsF_CNT_MOVE: TFIBBCDField;
    dsDocStringsF_SUM_OUT: TFIBBCDField;
    dsDocStringsF_SUM_MOVE: TFIBBCDField;
    cxGrid1DBTableView1F_CNT_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT_MOVE: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM_MOVE: TcxGridDBColumn;
    BtnNewLinkedDoc: TRzToolButton;
    funcCreateLinkDoc: TpFIBDataSet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1F_ID: TcxGridDBColumn;
    cxGrid2DBTableView1F_DOC_ID: TcxGridDBColumn;
    cxGrid2DBTableView1F_TYPE: TcxGridDBColumn;
    cxGrid2DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid2DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1F_PARTNER: TcxGridDBColumn;
    cxGrid2DBTableView1F_PARTNER_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid2DBTableView1F_PRICE_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_SKLAD_FROM: TcxGridDBColumn;
    cxGrid2DBTableView1F_SKLAD_FROM_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_SKLAD_TO: TcxGridDBColumn;
    cxGrid2DBTableView1F_SKLAD_TO_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid2DBTableView1F_STATE_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid2DBTableView1F_SUM: TcxGridDBColumn;
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsDocStringsBeforePost(DataSet: TDataSet);
    procedure BtnRefreshClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject;
      X, Y: Integer);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject;
      X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dsDocStringsCalcFields(DataSet: TDataSet);
    procedure SetAsNew(Sender: TObject);
    procedure dsDocStringsAfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure BtnInsertRecordClick(Sender: TObject);
    procedure BtnDeleteRecordClick(Sender: TObject);
    procedure BtnNewLinkedDocClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    scan: string;
    scan_time: TTime;
    procedure InsPosition;
  public
    { Public declarations }
    function GetDocId: Integer;
    function GetTableName: string;
    property DocId: Integer read GetDocId;
    property TableName: string read GetTableName;
    procedure AddPosition(P_good: Integer; p_cnt: Integer;
      p_price: Currency = 0);
    procedure RefreshDoc;
  end;

var
  FrmTemplateDoc: TFrmTemplateDoc;

implementation

{$R *.dfm}

uses
  uDm, uPublic, UTypes, UDocClass, uDlgCreateDocFromTemplate;

procedure TFrmTemplateDoc.AddPosition(P_good, p_cnt: Integer;
  p_price: Currency);
begin
  ShowMessage('It Works');
end;

procedure TFrmTemplateDoc.SetAsNew(Sender: TObject);
var
  vl_msg: String;
  vl_date: TDateTime;
begin
  case TControl(Sender).tag of
    1:
      begin
        vl_msg := 'Отметить весь товар как новинки?';
        vl_date := Date;
      end;

    -1:
      begin
        vl_msg := 'Снять со всего товара метку новинок?';
        vl_date := EncodeDate(1900, 1, 1);
      end;
  end;
  if MessageDlg(vl_msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsDocStrings.DisableControls;
    dsDocStrings.First;
    dm.spSetGoodCh_Date.ParamByName('P_DATE').Clear;
    dm.spSetGoodCh_Date.ParamByName('P_DATE').AsDate := vl_date;
    while not dsDocStrings.Eof do
    begin
      dm.spSetGoodCh_Date.ParamByName('P_GOOD').Value :=
        dsDocStrings.FieldByName('F_GOOD').Value;
      dm.spSetGoodCh_Date.ExecProc;
      dsDocStrings.Next;
    end;
    dsDocStrings.EnableControls;
    dm.spSetGoodCh_Date.Transaction.CommitRetaining;
    MessageDlg('Отметка новинок изменена', mtInformation, [], 0)
  end;
end;

procedure TFrmTemplateDoc.BtnDeleteRecordClick(Sender: TObject);
begin
  dsDocsList.Delete;
  dsDocsList.Transaction.CommitRetaining;
  RefreshDs(dsDocsList, 'F_ID', dsDocsListF_ID.AsInteger);
end;

procedure TFrmTemplateDoc.BtnInsertRecordClick(Sender: TObject);
var
  vl_ListDocType  : Tstrings;
  vl_selected     : Tstrings;
  vl_index        : integer;
  vl_doc_id       : integer;
  vl_doc_type     : integer;
begin
  vl_ListDocType := TStringList.create;
  vl_ListDocType.Add('1=Расходный документ');
  vl_ListDocType.Add('2=Перемещение');
  vl_selected := ShowDlgSelectVal('Выберите тип документа',vl_ListDocType,false);
  for vl_index := 0 to vl_selected.Count-1 do
  begin
    vl_doc_id := 0;
    if vl_selected[vl_index] = '1' then
    begin
       vl_doc_id := GetDocOut;
       vl_doc_type := 1;
    end;
    if vl_selected[vl_index] = '2' then
    begin
       vl_doc_id := GetDocMove;
       vl_doc_type := 2;
    end;
    if vl_doc_id >0 then
    begin
      pFIBStoredProcLinkDocs.Params.ClearValues;
      pFIBStoredProcLinkDocs.ParamByName('P_DOC').Value := vl_doc_id;
      pFIBStoredProcLinkDocs.ParamByName('P_DOCTYPE').Value := vl_doc_type;
      pFIBStoredProcLinkDocs.ParamByName('P_TEMPLATE').Value := dsDocHeadDOC_ID.AsInteger;
      pFIBStoredProcLinkDocs.ExecProc;
      pFIBStoredProcLinkDocs.Transaction.CommitRetaining;
    end;
  end;
  RefreshDs(dsDocsList, 'F_ID', dsDocsListF_ID.AsInteger);
  vl_selected.Free;
  vl_ListDocType.Free;
end;

procedure TFrmTemplateDoc.BtnNewLinkedDocClick(Sender: TObject);
var
  vl_ListDocType  : Tstrings;
  vl_selected     : Tstrings;
  vl_index        : integer;
  vl_doc_id       : integer;
  vl_doc_type     : integer;

begin
  vl_ListDocType := TStringList.create;
  vl_ListDocType.Add('1=Расходный документ');
  vl_ListDocType.Add('2=Перемещение');
  vl_selected := ShowDlgSelectVal('Выберите тип документа',vl_ListDocType,false);
  for vl_index := 0 to vl_selected.Count-1 do
  begin
    vl_doc_id := 0;
    if vl_selected[vl_index] = '1' then
    begin
       vl_doc_type := 1;
    end;
    if vl_selected[vl_index] = '2' then
    begin
       vl_doc_type := 2;
    end;
    if dsDocsListF_ID.AsInteger >0 then
    begin
      funcCreateLinkDoc.Active := false;
      funcCreateLinkDoc.Params.ClearValues;
      funcCreateLinkDoc.ParamByName('P_TEMPLATE').AsInteger :=
        dsDocHeadDOC_ID.AsInteger;
      funcCreateLinkDoc.ParamByName('P_DST_TYPE').AsInteger :=
        vl_doc_type;
      funcCreateLinkDoc.ParamByName('P_SRC_DOC').AsInteger :=
        dsDocsListF_DOC_ID.AsInteger;
      funcCreateLinkDoc.ParamByName('P_SRC_TYPE').AsInteger :=
        dsDocsListF_TYPE.AsInteger;
      funcCreateLinkDoc.Active := true;
      funcCreateLinkDoc.Transaction.CommitRetaining;
    end;
  end;
  RefreshDs(dsDocsList, 'F_ID', dsDocsListF_ID.AsInteger);
  vl_selected.Free;
  vl_ListDocType.Free;
end;

procedure TFrmTemplateDoc.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsDocStrings);
end;

procedure TFrmTemplateDoc.BtnRefreshClick(Sender: TObject);
begin
  RefreshDs(dsDocStrings, 'F_ID', dsDocStringsF_ID.AsInteger);
end;

procedure TFrmTemplateDoc.cxButton1Click(Sender: TObject);
begin
  with TDlgCreateDocFromTemplate.Create(self) do
  begin
    if ShowModal = mrOk then
    begin
      funcCreateDoc.Active := false;
      funcCreateDoc.Params.ClearValues;
      funcCreateDoc.ParamByName('P_TEMPLATE').AsInteger :=
        dsDocHeadDOC_ID.AsInteger;
      funcCreateDoc.ParamByName('P_DOC_TYPE').AsInteger :=
        cxComboDocType.ItemIndex + 1;
      funcCreateDoc.ParamByName('P_SKLAD').AsInteger :=
        cxLookupComboBoxSklad.EditValue;
      funcCreateDoc.ParamByName('P_COPY_BODY').AsInteger :=
        cxRadioGroupGood.Properties.Items[cxRadioGroupGood.ItemIndex].Value;
      funcCreateDoc.ParamByName('P_BODY_CNT').AsInteger :=
        cxRadioGroupCnt.Properties.Items[cxRadioGroupCnt.ItemIndex].Value;
      funcCreateDoc.Active := true;
      funcCreateDoc.Transaction.CommitRetaining;
      RefreshDs(dsDocsList, 'F_ID', dsDocsListF_ID.AsInteger);
    end;
    free;
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1CellDblClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (ACellViewInfo.Item.Name = 'cxGrid1DBTableView1F_RESERVED') and
    (dsDocStringsF_RESERVED.AsInteger > 0) then
  begin
    GetReservDocByArticle(dsDocStringsF_GOOD.AsInteger,
      dsDocStringsF_ARTICLE.AsString);
  end
  else if not dsDocStringsF_GOOD.IsNull then
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);

end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AViewInfo.GridRecord.Values
    [cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color := AViewInfo.GridRecord.Values
      [cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index];
  end;

  if ((AViewInfo.GridRecord.Values[cxGrid1DBTableView1F_OST_SKLAD_DEF.Index] <
    0) and (AViewInfo.Item.Name = 'cxGrid1DBTableView1F_CNT')) then
  begin
    ACanvas.Font.Color := clRed;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1DragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  with TcxDragControlObject(Source) do
  begin
    if Control is TcxGridSite then
      with TcxGridSite(Control) do
      begin
        DragDropGood(TcxGridDBTableView(GridView), dsDocStrings);
      end;
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')
      <> nil then
    begin
      Accept := true;
    end;
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case Key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
  else
    begin
      if (time() - scan_time) < 0.000001 then
        scan := scan + Key
      ELSE
        scan := Key;
      scan_time := time();
    end;
  end;

end;

procedure TFrmTemplateDoc.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  Key: Integer;
begin
  key := dsDocsListF_DOC_ID.AsInteger;
  case dsDocsListF_TYPE.AsInteger of
    1:
      with TOutDoc.Create(key, dsDocsList) do
      begin
        doc_type := 1;
        OpenEditFrm;
      end;
    2:
      with TMoveDoc.Create(key) do
      begin
        doc_type := 1;
        OpenEditFrm;
      end;
  end;
end;

procedure TFrmTemplateDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocHead.ParamByName('doc_id').Value := dsDocHeadDOC_ID.Value;
  dsDocStrings.ParamByName('doc_id').Value := dsDocHeadDOC_ID.Value;
  dsDocStrings.Active := true;
  dsDocsList.Active := false;
  dsDocsList.ParamByName('P_TEMPLATE').Value := dsDocHeadDOC_ID.Value;
  dsDocsList.Active := true;
end;

procedure TFrmTemplateDoc.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmTemplateDoc.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  dsDocStrings.Transaction.CommitRetaining;
  RefreshDs(DataSet, 'f_good', dsDocStringsF_GOOD.Value);
  cxGrid1.SetFocus;

end;

procedure TFrmTemplateDoc.dsDocStringsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if DataSet.Active then
  begin
    FramBanner1.dsAnalogList.Active := false;
    FramBanner1.dsAnalogList.ParamByName('P_GOOD').Value :=
      DataSet.FieldByName('F_GOOD').AsInteger;
    FramBanner1.dsAnalogList.Active := true;
  end;
end;

procedure TFrmTemplateDoc.dsDocStringsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (dsDocStringsF_GOOD.IsNull and not dsDocStringsF_ARTICLE.IsNull) then
  begin
    { dm.dsGood_ins.Active:=false;
      dm.dsGood_ins.ParamByName('f_name').Value:=dsDocStringsF_GOOD_NAME.Value;
      dm.dsGood_ins.ParamByName('f_article').Value:=dsDocStringsF_ARTICLE.Value;
      dm.dsGood_ins.Active:=true;
      dm.dsGood_ins.Transaction.CommitRetaining;
      dsDocStringsF_GOOD.Value:=dm.dsGood_ins.FieldByName('f_id').Value; }
    dsDocStringsF_GOOD.Value := dm.InsExtGood(dsDocStringsF_ARTICLE.AsString,
      dsDocStringsF_GOOD_NAME.AsString, '');
    if not dsDocStringsF_SCANCODE.IsNull then
    begin
      dm.dsImportScancode.Active := false;
      dm.dsImportScancode.ParamByName('f_good').Value :=
        dsDocStringsF_GOOD.Value;
      dm.dsImportScancode.ParamByName('f_scancode').Value :=
        dsDocStringsF_SCANCODE.Value;
      dm.dsImportScancode.Active := true;
      dm.dsImportScancode.Transaction.CommitRetaining;
    end;
  end;
end;

procedure TFrmTemplateDoc.dsDocStringsCalcFields(DataSet: TDataSet);
var
  v_ost: string;
  i: Integer;
  v_val: TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text := DataSet.FieldByName('f_ost').AsString;
  for i := 0 to v_val.Count - 1 do
  begin
    try
      DataSet.FieldByName('Sklad_' + v_val.Names[i]).Value :=
        v_val.Values[v_val.Names[i]];
    except
      on E: Exception do
      begin
        // InfoMsg(E.Message, E.HelpContext);
        DataSet.FieldByName('Sklad_' + v_val.Names[i]).Value := 0;
      end;
    end;
  end;
  v_val.free;
  CalcFieldsDopInfo(DataSet, 'F_GOOD_DOP_INFO');
end;

procedure TFrmTemplateDoc.FormCreate(Sender: TObject);
var
  tf: TFloatField; // tStringfield;
begin

  dm.dsSklad.First;

  while not dm.dsSklad.Eof do
  begin
    // tf:=TStringField.Create(dsDocStrings);
    tf := TFloatField.Create(dsDocStrings);
    tf.Calculated := true;
    tf.Index := dsDocStrings.FieldCount;
    tf.FieldName := 'Sklad_' + dm.dsSklad.FieldByName('f_id').AsString;
    tf.tag := dm.dsSklad.FieldByName('f_id').AsInteger;
    tf.DataSet := dsDocStrings;
    with cxGrid1DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName := tf.FieldName;
      Summary.FooterKind := skSum;
      Summary.GroupFooterKind := skSum;
      Summary.GroupKind := skSum;
      Caption := dm.dsSklad.FieldByName('f_name').AsString;
      visible := false;
    end;
    dm.dsSklad.Next;
  end;
  AddInfoColumns(cxGrid1DBTableView1);
  inherited;
end;

function TFrmTemplateDoc.GetDocId: Integer;
begin
  if dsDocHead.Active then
    result := dsDocHead.FieldByName('DOC_ID').AsInteger
  else
    result := 0;
end;

function TFrmTemplateDoc.GetTableName: string;
begin
  result := 'T_DOC_TEMPLATE';
end;

procedure TFrmTemplateDoc.InsPosition;
var
  i: Integer;
  cnt: Integer;
  goods: Tdigits;
begin
  // showMessage(scan);
  goods := GetNsiGood(Date(), scan);

  cnt := length(goods);
  if cnt > 0 then
  begin
    for i := 0 to cnt - 1 do
    begin
      dsDocStrings.Insert;
      dsDocStringsF_GOOD.Value := goods[i];
      dsDocStrings.Post;
      cxGrid1DBTableView1.DataController.SelectRows
        (cxGrid1DBTableView1.DataController.FocusedRowIndex,
        cxGrid1DBTableView1.DataController.FocusedRowIndex);
    end;
  end
  else
  begin
    beep;
  end;
  scan := '';
end;

procedure TFrmTemplateDoc.RefreshDoc;
begin
  BtnRefreshClick(self);
end;

procedure TFrmTemplateDoc.RzDBButtonEdit1ButtonClick(Sender: TObject);
var
  Key: Integer;
begin
  Key := GetNsiPartner;
  if (Key > 0) then
  begin
    dsDocHead.Edit;
    dsDocHeadF_PARTNER.Value := Key;
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocStrings);
  end;
end;

procedure TFrmTemplateDoc.RzDBButtonEdit2ButtonClick(Sender: TObject);
var
  Key: Integer;
begin
  Key := GetNsiSklad;
  if (Key > 0) then
  begin
    dsDocHead.Edit;
    dsDocHeadF_SKLAD.Value := Key;
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocStrings);
  end;
end;

procedure TFrmTemplateDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
var
  Key: Integer;
begin
  Key := GetNsiPrice;
  if (Key > 0) then
  begin
    dsDocHead.Edit;
    dsDocHeadF_PRICE.Value := Key;
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocStrings);
  end;
end;

end.
