unit UFrmMoveDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, Grids, DBGrids, RzDBGrid,
  StdCtrls, RzCmboBx, RzDBCmbo, Mask, RzEdit, RzDBEdit, uDm, FIBDatabase,
  pFIBDatabase, DB, FIBDataSet, pFIBDataSet, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, RzLabel, DBCtrls, RzDBBnEd, cxButtonEdit,
  cxDBLookupComboBox, cxLabel, frxClass, frxFIBComponents, frxBarcode,
  frxExportXLS, frxExportPDF, Menus, RzStatus, frxDesgn, frxExportRTF,
  frxExportXML, frxExportHTML, frxCross, frxDCtrl, RzForms, FIBQuery, pFIBQuery,
  pFIBStoredProc, cxPropertiesStore, cxImage, cxContainer, cxDBEdit,

  uDocClass,
  cxColorComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, UInterfaces,
  System.ImageList, Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

type
  TFrmMoveDoc = class(TFrmPrototype, IFrmDoc)
    RzPanel1: TRzPanel;
    dsDocHead: TpFIBDataSet;
    srDocHead: TDataSource;
    pFIBTransaction: TpFIBTransaction;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDocStrings: TpFIBDataSet;
    srDocStrings: TDataSource;
    dsGoodsSource: TpFIBDataSet;
    srGoodsSource: TDataSource;
    dsGoodsSourceF_ID: TFIBBCDField;
    dsGoodsSourceF_NAME: TFIBStringField;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzLabel5: TRzLabel;
    RzDBButtonEdit3: TRzDBButtonEdit;
    RzLabel6: TRzLabel;
    RzDBButtonEdit1: TRzDBButtonEdit;
    dsCopy2Price: TpFIBDataSet;
    spSetPrise: TpFIBStoredProc;
    dsDocHeadDOC_ID: TFIBBCDField;
    dsDocHeadF_SKLAD_FROM: TFIBBCDField;
    dsDocHeadF_SKLAD_TO: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_FROM_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_FROM_INN: TFIBStringField;
    dsDocHeadF_SKLAD_FROM_F_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_FROM_KPP: TFIBStringField;
    dsDocHeadF_SKLAD_TO_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_TO_INN: TFIBStringField;
    dsDocHeadF_SKLAD_TO_F_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_TO_KPP: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocHeadF_DOC_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_MOVE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn;
    cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1f_sklad_ost: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_TO_OST: TcxGridDBColumn;
    dsDocHeadF_DOC_MOVE: TFIBBCDField;
    dsDocHeadF_DOP_INFO: TFIBStringField;
    PopupMenuExecute: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dsCopy2Spisan: TpFIBDataSet;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1F_DESCR: TcxGridDBColumn;
    RzDBMemo1: TRzDBMemo;
    dsDocHeadF_SKLAD_TO_PREFIX: TFIBStringField;
    dsDocHeadF_SKLAD_FROM_PREFIX: TFIBStringField;
    dsDocHeadF_GUID: TFIBStringField;
    dsDocHeadF_USER: TFIBStringField;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_DOC_MOVE: TFIBBCDField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    dsDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsDocStringsF_ED_IZM_NAME: TFIBStringField;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_PRICE: TFIBBCDField;
    dsDocStringsF_CNT: TFIBBCDField;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    dsDocStringsF_SKLAD_OST: TFIBFloatField;
    dsDocStringsF_SKLAD_TO_OST: TFIBFloatField;
    dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    dsDocStringsF_DESCR: TFIBStringField;
    dsDocStringsF_SCANCODE: TStringField;
    procedure BtnOKClick(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsDocStringsBeforePost(DataSet: TDataSet);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnExecuteClick(Sender: TObject);
    procedure BtnSetPriceClick(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dsDocStringsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dsDocStringsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    scan  : string;
    scan_time : TTime;

  public
    { Public declarations }
    doc : TMoveDoc;
    procedure InsPosition;

    procedure AddPosition(P_good : integer; p_cnt : integer; p_price : Currency = 0);
    procedure RefreshDoc;
    function GetTableName : string;
    function GetDocId : integer;
    property TableName : string read GetTableName;
    property DocId : integer read GetDocId;
  end;

var
  FrmMoveDoc: TFrmMoveDoc;

implementation
  uses upublic,uDlgCopyDoc2Price, UTypes;
{$R *.dfm}

procedure TFrmMoveDoc.AddPosition(P_good, p_cnt: integer; p_price: Currency);
begin

end;

procedure TFrmMoveDoc.BtnExecuteClick(Sender: TObject);
begin
  BtnExecute.Down:=true;
end;

procedure TFrmMoveDoc.BtnOKClick(Sender: TObject);
begin
  PostAllDS(Self,true);
  refreshDs(dsDocStrings);
  inherited;
end;

procedure TFrmMoveDoc.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsDocStrings);
end;

procedure TFrmMoveDoc.BtnSetPriceClick(Sender: TObject);
var
  price_id  : integer;
begin
  price_id:=0;
  price_id:=GetNsiPrice;
  if price_id>0 then
  begin
    spSetPrise.ParamByName('f_price').Value:=price_id;
    spSetPrise.ParamByName('f_doc').Value:=dsDocHeadDOC_ID.Value;
    spSetPrise.ExecProc;
    RefreshDs(DsDocstrings);
  end;
end;

procedure TFrmMoveDoc.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_CNT' then
  begin
    cxGrid1DBTableView1F_CNT.Options.Editing:=true;
  end
  else
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_DESCR' then
  begin
    cxGrid1DBTableView1F_DESCR.Options.Editing:=true;
  end
  else
  begin
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);
  end;


end;

procedure TFrmMoveDoc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index];
  end;
  if ((AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_sklad_OST.Index]<0)
    and (AviewInfo.Item.Name='cxGrid1DBTableView1F_CNT') ) then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
  end;
end;

procedure TFrmMoveDoc.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
{  if not dsDocStringsF_GOOD.IsNull then
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);}
end;

procedure TFrmMoveDoc.cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
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

procedure TFrmMoveDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')<>nil then
    begin
      Accept:=true;
    end;
  end;
end;

procedure TFrmMoveDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
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

procedure TFrmMoveDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
//  inherited;
  dsDocHead.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.Active:=true;
end;

procedure TFrmMoveDoc.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmMoveDoc.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  dsDocStrings.Transaction.CommitRetaining;
  if not dsDocStringsF_SCANCODE.IsNull then
    RefreshDs(DataSet,'f_scancode',dsDocStringsF_SCANCODE.AsInteger)
  else
    RefreshDs(DataSet,'f_good',dsDocStringsF_GOOD.AsInteger);
  cxGrid1.SetFocus;
end;

procedure TFrmMoveDoc.dsDocStringsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cxGrid1DBTableView1F_CNT.Options.Editing:=false;
  cxGrid1DBTableView1F_DESCR.Options.Editing:=false;

end;

procedure TFrmMoveDoc.dsDocStringsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (dsDocStringsF_GOOD.IsNull and not dsDocStringsF_GOOD_NAME.IsNull) then
  begin
    dm.dsGood_ins.Active:=false;
    dm.dsGood_ins.ParamByName('f_name').Value:=dsDocStringsF_GOOD_NAME.Value;
    dm.dsGood_ins.ParamByName('f_article').Value:=dsDocStringsF_ARTICLE.Value;
    dm.dsGood_ins.Active:=true;
    dm.dsGood_ins.Transaction.CommitRetaining;
    dsDocStringsF_GOOD.Value:=dm.dsGood_ins.FieldByName('f_id').Value;
  end;
end;

procedure TFrmMoveDoc.dsDocStringsCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcFieldsDopInfo(DataSet);
end;

procedure TFrmMoveDoc.FormCreate(Sender: TObject);
begin
  inherited;
  AddInfoColumns(cxGrid1DBTableView1);
end;

function TFrmMoveDoc.GetDocId: integer;
begin
  if dsDocHead.Active then
    result := dsDocHeadDOC_ID.AsInteger
  else
    result := 0;
end;

function TFrmMoveDoc.GetTableName: string;
begin
   result := 'T_DOC_MOVE';
end;

procedure TFrmMoveDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
//  goods:=GetNsiGood(date(),scan);
  if not dsDocHeadF_SKLAD_FROM.IsNull then
    goods:=GetNsiGood(dsDocHeadF_DATE.Value,scan,dsDocHeadF_SKLAD_FROM.AsInteger,dsDocHeadF_PRICE.AsInteger)
  else
  begin
    goods:=GetNsiGood(dsDocHeadF_DATE.Value,scan,0,dsDocHeadF_PRICE.AsInteger);
  end;
  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      dsDocStrings.Insert;
      dsDocStringsF_GOOD.Value:=goods[i];
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

procedure TFrmMoveDoc.N1Click(Sender: TObject);
begin
  with TdlgCopyDoc2Price.Create(Application.MainForm) do
  begin
    if ShowModal=mrok then
    begin
      dsDocHead.Transaction.CommitRetaining;
      dsCopy2Price.Active:=false;
      dsCopy2Price.ParamByName('f_doc_in').Value:=dsDocHeadDOC_ID.Value;
      dsCopy2Price.ParamByName('F_CHANGE_PRICE').Value:=edNacenka.Value;
      dsCopy2Price.Active:=true;
      dsCopy2Price.Transaction.CommitRetaining;
      if ChckOpenDoc.Checked then
        ShowDocPrice(dsCopy2Price.FieldByName('f_doc_price').asInteger);
    end;
    free;
  end;
end;

procedure TFrmMoveDoc.N2Click(Sender: TObject);
var
  Key : integer;
begin
  dsDocHead.Transaction.CommitRetaining;
  dsCopy2Spisan.Active:=false;
  dsCopy2Spisan.ParamByName('f_doc_in').Value:=dsDocHeadDOC_ID.Value;
  dsCopy2Spisan.Active:=true;
  dsCopy2Spisan.Transaction.CommitRetaining;
  key:=dsCopy2Spisan.FieldByName('f_move_doc').asInteger;
  with TMoveDoc.Create(key) do
  begin
    doc_type:=2;
    OpenEditFrm;
  end;
end;

procedure TFrmMoveDoc.RefreshDoc;
begin
  RefreshDs(dsDocStrings,'F_ID');
end;

procedure TFrmMoveDoc.RzDBButtonEdit1ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiSklad;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_SKLAD_TO.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmMoveDoc.RzDBButtonEdit2ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiSklad;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_SKLAD_FROM.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmMoveDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
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
