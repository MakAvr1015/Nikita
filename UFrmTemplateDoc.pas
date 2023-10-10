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
  frxExportDOCX, frxOLE;

///  <summary>
///  Документ - заготовка
///  </summary>
type
  TFrmTemplateDoc = class(TFrmPrototype,IFrmDoc)
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
    dsDocStringsF_SCANCODE: TFIBBCDField;
    dsDocStringsF_SCANCODE_VAL: TFIBStringField;
    cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn;
    cxGrid1DBTableView1F_SCANCODE_VAL: TcxGridDBColumn;
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
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dsDocStringsCalcFields(DataSet: TDataSet);
    procedure BtnExecuteClick(Sender: TObject);
    procedure dsDocStringsAfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    scan  : string;
    scan_time : TTime;
    procedure InsPosition;
  public
    { Public declarations }
    function GetDocId : integer;
    function GetTableName : string;
    property DocId : integer read GetDocId;
    property TableName : string read GetTableName;
    procedure AddPosition(P_good : integer; p_cnt : integer; p_price : Currency = 0);
    procedure RefreshDoc;
  end;

var
  FrmTemplateDoc: TFrmTemplateDoc;

implementation

{$R *.dfm}
uses
  uDm,uPublic, UTypes;
procedure TFrmTemplateDoc.AddPosition(P_good, p_cnt: integer;
  p_price: Currency);
begin
  ShowMessage('It Works');
end;

procedure TFrmTemplateDoc.BtnExecuteClick(Sender: TObject);
begin

  if MessageDlg('Отметить весь товар как новинки?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    dsDocStrings.DisableControls;
    dsDocStrings.First;
    while not dsDocStrings.Eof do
    begin
      dm.spSetGoodCh_Date.ParamByName('P_GOOD').Value:=dsDocStrings.FieldByName('F_GOOD').Value;
      dm.spSetGoodCh_Date.ExecProc;
      dsDocStrings.Next;
    end;
    dsDocStrings.EnableControls;
    dm.spSetGoodCh_Date.Transaction.CommitRetaining;
    MessageDlg('Товар отмечен как новинки',mtInformation,[],0)
  end;
end;

procedure TFrmTemplateDoc.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsDocStrings);
end;

procedure TFrmTemplateDoc.BtnRefreshClick(Sender: TObject);
begin
  RefreshDs(dsDocStrings,'F_ID',dsDocStringsF_ID.AsInteger);
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (ACellViewInfo.Item.Name='cxGrid1DBTableView1F_RESERVED') and (dsDocStringsF_RESERVED.AsInteger>0) then
  begin
    GetReservDocByArticle(dsDocStringsF_good.AsInteger,dsDocStringsF_article.AsString);
  end
  else
  if not dsDocStringsF_GOOD.IsNull then
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);

end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index];
  end;

  if ((AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_OST_SKLAD_DEF.Index]<0)
    and (AviewInfo.Item.Name='cxGrid1DBTableView1F_CNT')
  )then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
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
        DragDropGood(TcxGridDBTableView(GridView),dsDocStrings);
      end;
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')<>nil then
    begin
      Accept:=true;
    end;
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
    begin
      if (time()- scan_time)<0.000001 then
        scan:=scan+key
      ELSE
        scan:=key;
      scan_time:=time();
    end;
  end;

end;

procedure TFrmTemplateDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocHead.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.Active:=true;
end;

procedure TFrmTemplateDoc.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmTemplateDoc.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  dsDocStrings.Transaction.CommitRetaining;
  RefreshDs(DataSet,'f_good',dsDocStringsF_GOOD.Value);
  cxGrid1.SetFocus;

end;

procedure TFrmTemplateDoc.dsDocStringsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if DataSet.Active then
  begin
    FramBanner1.dsAnalogList.Active:=false;
    FramBanner1.dsAnalogList.ParamByName('P_GOOD').Value:=DataSet.FieldByName('F_GOOD').AsInteger;
    FramBanner1.dsAnalogList.Active:=true;
  end;
end;

procedure TFrmTemplateDoc.dsDocStringsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (dsDocStringsF_GOOD.IsNull and not dsDocStringsF_ARTICLE.IsNull) then
  begin
{    dm.dsGood_ins.Active:=false;
    dm.dsGood_ins.ParamByName('f_name').Value:=dsDocStringsF_GOOD_NAME.Value;
    dm.dsGood_ins.ParamByName('f_article').Value:=dsDocStringsF_ARTICLE.Value;
    dm.dsGood_ins.Active:=true;
    dm.dsGood_ins.Transaction.CommitRetaining;
    dsDocStringsF_GOOD.Value:=dm.dsGood_ins.FieldByName('f_id').Value; }
    dsDocStringsF_GOOD.Value:=dm.InsExtGood(dsDocStringsF_ARTICLE.AsString,dsDocStringsF_GOOD_NAME.AsString,
      '');
    if not dsDocStringsF_scancode.IsNull then
    begin
      dm.dsImportScancode.Active:=false;
      dm.dsImportScancode.ParamByName('f_good').Value:=dsDocStringsF_GOOD.Value;
      dm.dsImportScancode.ParamByName('f_scancode').Value:=dsDocStringsF_scancode.value;
      dm.dsImportScancode.Active:=true;
      dm.dsImportScancode.Transaction.CommitRetaining;
    end;
  end;
end;

procedure TFrmTemplateDoc.dsDocStringsCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('f_ost').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    DataSet.FieldByName('Sklad_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
  CalcFieldsDopInfo(DataSet);
end;

procedure TFrmTemplateDoc.FormCreate(Sender: TObject);
var
  tf: tStringfield;
begin
  inherited;
  dm.dsSklad.First;

  while not dm.dsSklad.Eof do
  begin
    tf:=TStringField.Create(dsDocStrings);
    tf.Calculated:=true;
    tf.Index:=dsDocStrings.FieldCount;
    tf.FieldName:='Sklad_'+dm.dsSklad.FieldByName('f_id').AsString;
    tf.tag:=dm.dsSklad.FieldByName('f_id').AsInteger;
    tf.DataSet:=dsDocStrings;
    with cxGrid1DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
//      Summary.FooterKind:=skSum;
      Caption:=dm.dsSklad.FieldByName('f_name').AsString;
    end;
    dm.dsSklad.Next;
  end;
  AddInfoColumns(cxGrid1DBTableView1);
  self.RestoreState;
end;

function TFrmTemplateDoc.GetDocId: integer;
begin
  if dsDocHead.active then
    result := dsDocHead.fieldByName('DOC_ID').asInteger
  else
    result := 0;
end;

function TFrmTemplateDoc.GetTableName: string;
begin
  result := 'T_DOC_TEMPLATE';
end;

procedure TFrmTemplateDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
//  showMessage(scan);
  goods:=GetNsiGood(date(),scan);

  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      dsDocStrings.Insert;
      dsDocStringsF_SCANCODE.Value:=goods[i];
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
procedure TFrmTemplateDoc.RefreshDoc;
begin
  BtnRefreshClick(Self);
end;

procedure TFrmTemplateDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
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

end.
