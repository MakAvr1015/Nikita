unit UFrmZakazDoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPrototype, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, cxPropertiesStore, RzForms,
  frxClass, Vcl.Menus, cxTextEdit, cxMaskEdit, cxDropDownEdit, RzButton,
  RzPanel, Vcl.ExtCtrls, RzStatus, dxBarBuiltInMenu, cxPC, UInterfaces, Data.DB,
  FIBDataSet, FIBDatabase, pFIBDatabase, pFIBDataSet, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,

  cxGridCustomView, cxGrid, RzDBSpin, Vcl.DBCtrls, RzDBCmbo, RzDBEdit, RzDBBnEd,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzLabel, RzTabs, cxImage, cxDBEdit, Vcl.Grids,
  Vcl.DBGrids, frxExportRTF, frxExportPDF, frxExportXML, frxExportXLS,
  frxFIBComponents, frxChBox, frxTableObject, frxCross, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxDCtrl, frxOLE, frxDesgn, frxBarcode,
  frxDBSet, System.ImageList, Vcl.ImgList;

type
  TFrmZakazDoc = class(TFrmPrototype, IFrmDoc)
    dsDocHead: TpFIBDataSet;
    dsDocBody: TpFIBDataSet;
    dsOutDocs: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_PARTNER: TFIBBCDField;
    dsDocHeadF_PARTNER_NAME: TFIBStringField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocHeadF_USER: TFIBStringField;
    dsDocHeadF_DESCR: TFIBStringField;
    dsDocHeadF_CNT: TFIBBCDField;
    dsDocHeadF_SUM: TFIBBCDField;
    dsDocHeadF_DISCOUNT: TFIBBCDField;
    dsDocHeadF_DISCOUNT_SUM: TFIBBCDField;
    dsOutDocsF_ID: TFIBBCDField;
    dsOutDocsF_NUMBER: TFIBStringField;
    dsOutDocsF_DATE: TFIBDateField;
    dsOutDocsF_SKLAD: TFIBBCDField;
    dsOutDocsF_SKLAD_NAME: TFIBStringField;
    dsOutDocsF_PRICE: TFIBBCDField;
    dsOutDocsF_PRICE_NAME: TFIBStringField;
    dsOutDocsF_CNT: TFIBBCDField;
    dsOutDocsF_SUM: TFIBBCDField;
    dsOutDocsF_DOP_INFO: TFIBStringField;
    dsOutDocsF_USR: TFIBStringField;
    srDocHead: TDataSource;
    srOutDocs: TDataSource;
    srDocBody: TDataSource;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RzDBSpinEdit1: TRzDBSpinEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    cxGrid1DBTableViewGoods: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableViewGoodsF_ID: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_DOC: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_GOOD: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_GOOD_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_CNT: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_CNT_FACT: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_SUM: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_DISCOUNT: TcxGridDBColumn;
    cxGrid1DBTableViewGoodsF_DISCOUNT_SUM: TcxGridDBColumn;
    dsDocHeadF_DOC: TFIBBCDField;
    dsDocBodyF_ID: TFIBBCDField;
    dsDocBodyF_DOC: TFIBBCDField;
    dsDocBodyF_GOOD: TFIBBCDField;
    dsDocBodyF_GOOD_NAME: TFIBStringField;
    dsDocBodyF_GOOD_ARTICLE: TFIBStringField;
    dsDocBodyF_CNT: TFIBBCDField;
    dsDocBodyF_CNT_FACT: TFIBBCDField;
    dsDocBodyF_PRICE_VAL: TFIBBCDField;
    dsDocBodyF_SUM: TFIBBCDField;
    dsDocBodyF_DISCOUNT: TFIBFloatField;
    dsDocBodyF_DISCOUNT_SUM: TFIBBCDField;
    RzDBMemo1: TRzDBMemo;
    RzToolbar1: TRzToolbar;
    BtnNew1: TRzToolButton;
    BtnImport: TRzToolButton;
    BtnRecycle: TRzToolButton;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    dsGoodPhotoF_PHOTO: TFIBBlobField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsMakeOutDoc: TpFIBDataSet;
    cxGrid2DBTableView1F_ID: TcxGridDBColumn;
    cxGrid2DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid2DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1F_SKLAD: TcxGridDBColumn;
    cxGrid2DBTableView1F_SKLAD_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid2DBTableView1F_PRICE_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid2DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid2DBTableView1F_DOP_INFO: TcxGridDBColumn;
    cxGrid2DBTableView1F_USR: TcxGridDBColumn;
    dsOutDocsF_STATE_NAME: TStringField;
    cxGrid2DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid2DBTableView1F_STATE_NAME: TcxGridDBColumn;
    dsOutDocsF_STATE: TBCDField;
    dsOutDocsF_DOC_OUT: TBCDField;
    dsDocBodyF_OST: TFIBStringField;
    procedure cxGrid1DBTableViewGoodsKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBSpinEdit1Exit(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure dsDocBodyAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableViewGoodsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dsDocHeadAfterPost(DataSet: TDataSet);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure BtnNew1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnRecycleClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure dsDocBodyCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableViewGoodsCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

  public
    procedure AddPosition(P_good: Integer; p_cnt: Integer;
      p_price: Currency = 0);
    procedure RefreshDoc;
    function GetTableName: string;
    function GetDocId: Integer;
    property TableName: string read GetTableName;
    property DocId: Integer read GetDocId;

  var
  private
    { Private declarations }
    scan: string;
    scan_time: TTime;
    procedure InsPosition;
  end;

var
  FrmZakazDoc: TFrmZakazDoc;

implementation

uses
    udm, upublic, UTypes, UNsiClass, UDocClass, UDlgMakeDocFromZakaz;
{$R *.dfm}
{ TFrmZakazDoc }

procedure TFrmZakazDoc.AddPosition(P_good, p_cnt: Integer; p_price: Currency);
begin

end;

procedure TFrmZakazDoc.BtnNew1Click(Sender: TObject);
var
  vl_OutDoc : TOutDoc;
  vl_outDocId : integer;
begin

  with TDlgMakeDocFromZakaz.Create(self) do
  begin
    if ShowModal = mrOk then
    begin
      dsMakeOutDoc.Active := false;
      dsMakeOutDoc.ParamByName('P_ZAKAZ').Value := dsDocHeadF_DOC.Value;
      if cxRadioButtonEmptyDoc.Checked then
        dsMakeOutDoc.ParamByName('P_CNT').Value := 0;
      if cxRadioButtonAllZakaz.Checked then
        dsMakeOutDoc.ParamByName('P_CNT').Value := 1;
      if cxRadioButtonNoOut.Checked then
        dsMakeOutDoc.ParamByName('P_CNT').Value := 2;
      dsMakeOutDoc.ParamByName('P_SKLAD').Value := cxLookupComboBoxSklad.EditingValue;
      if cxRadioButtonSkldOst.checked then
        dsMakeOutDoc.ParamByName('P_SKLAD_OST').Value := 1
      else
        dsMakeOutDoc.ParamByName('P_SKLAD_OST').Value := 0;
      dsMakeOutDoc.Active := true;
      vl_outDocId := dsMakeOutDoc.FieldByName('F_DOC_OUT').AsInteger;
      vl_OutDoc := TOutDoc.Create(vl_outDocId);
      vl_OutDoc.doc_type := 1;
      vl_OutDoc.InitFromDB;
      vl_OutDoc.OpenEditFrm;
      RefreshDs(dsOutDocs, 'F_OUT');
    end;
    free;
  end;

end;

procedure TFrmZakazDoc.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsDocBody);
end;

procedure TFrmZakazDoc.BtnRecycleClick(Sender: TObject);
begin
  dsOutDocs.Delete;
  dsOutDocs.Transaction.CommitRetaining;
end;

procedure TFrmZakazDoc.BtnRefreshClick(Sender: TObject);
begin
  dsDocHead.DisableControls;
  dsDocHead.Active := false;
  dsDocHead.Active := true;
  dsDocHead.EnableControls;

  udm.RefreshDs(dsOutDocs,'F_ID',dsOutDocsF_ID.AsInteger);
  udm.RefreshDs(dsDocBody,'F_ID',dsDocBodyF_ID.AsInteger);

end;

procedure TFrmZakazDoc.cxGrid1DBTableViewGoodsCellDblClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.Name = 'cxGrid1DBTableView1F_CNT' then
  begin
    cxGrid1DBTableViewGoodsF_CNT.Options.Editing := true;
  end
  else if ACellViewInfo.Item.Name = 'cxGrid1DBTableView1F_PRICE_VAL' then
  begin
    cxGrid1DBTableViewGoodsF_PRICE_VAL.Options.Editing := true;
  end
  else
  { if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_DESCR' then
    begin
    cxGrid1DBTableView1F_DESCR.Options.Editing:=true;
    end
    else }
  { if (ACellViewInfo.Item.Name='cxGrid1DBTableView1F_RESERVED') and (dsDocBodyF_RESERVED.AsInteger>0) then
    begin
    GetReservDocByArticle(dsDocBodyF_good.AsInteger,dsDocBodyF_article.AsString);
    end
    else }
  begin
    ShowNsiGoodEdit(dsDocBodyF_GOOD.AsInteger);
  end;
end;

procedure TFrmZakazDoc.cxGrid1DBTableViewGoodsCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if ((AviewInfo.GridRecord.Values[cxGrid1DBTableViewGoodsF_CNT.Index]<>
      AviewInfo.GridRecord.Values[cxGrid1DBTableViewGoodsF_CNT_FACT.Index]
    )
    and (AviewInfo.Item.Name='cxGrid1DBTableViewGoodsF_CNT')
  )then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
  end;
end;

procedure TFrmZakazDoc.cxGrid1DBTableViewGoodsKeyPress(Sender: TObject;
  var Key: Char);
begin
  case Key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
  else
    begin
      if (time() - scan_time) < 0.0001 then
        scan := scan + Key
      ELSE
        scan := Key;
      scan_time := time();
    end;
  end;
end;

procedure TFrmZakazDoc.cxGrid2DBTableView1DblClick(Sender: TObject);
var
  Key: Integer;
begin
  Key := dsOutDocsF_DOC_OUT.AsInteger;
  inherited;
  with TOutDoc.Create(Key, dsOutDocs) do
  begin
    doc_type := 1;
    OpenEditFrm;
  end;
end;

procedure TFrmZakazDoc.dsDocBodyAfterPost(DataSet: TDataSet);
begin
  if self.Visible then
  begin
    cxGrid1DBTableViewGoodsF_CNT.Options.Editing := false;
    cxGrid1DBTableViewGoodsF_PRICE_VAL.Options.Editing := false;
  // cxGrid1DBTableView1F_DESCR.Options.Editing:=false;
    dsDocBody.Transaction.CommitRetaining;
    RefreshDs(DataSet, 'F_GOOD', dsDocBodyF_GOOD.Value);
    cxGrid1.SetFocus;
  end;
end;

procedure TFrmZakazDoc.dsDocBodyCalcFields(DataSet: TDataSet);
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
end;

procedure TFrmZakazDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  dsDocHead.ParamByName('doc_ID').Value := dsDocHeadF_DOC.Value;
  dsDocBody.ParamByName('f_doc').Value := dsDocHeadF_DOC.Value;
  dsDocBody.Active := true;
  // dsGoodPhoto.Active := true;
end;

procedure TFrmZakazDoc.dsDocHeadAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshDs(dsDocBody);
end;

procedure TFrmZakazDoc.FormCreate(Sender: TObject);
var
  tf: tStringfield;
begin
  inherited;
  cxGrid1DBTableViewGoods.OnDragOver := self.GoodGridDragOverEvent;

  dm.dsSklad.First;

  while not dm.dsSklad.Eof do
  begin
    tf:=TStringField.Create(dsDocBody);
    tf.Calculated:=true;
    tf.Index:=dsDocBody.FieldCount;
    tf.FieldName:='Sklad_'+dm.dsSklad.FieldByName('f_id').AsString;
    tf.tag:=dm.dsSklad.FieldByName('f_id').AsInteger;
    tf.DataSet:=dsDocBody;
    with cxGrid1DBTableViewGoods.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
//      Summary.FooterKind:=skSum;
      Caption:=dm.dsSklad.FieldByName('f_name').AsString;
    end;
    dm.dsSklad.Next;
  end;
end;

function TFrmZakazDoc.GetDocId: Integer;
begin

end;

function TFrmZakazDoc.GetTableName: string;
begin

end;

procedure TFrmZakazDoc.InsPosition;
var
  i: Integer;
  cnt: Integer;
  goods: Tdigits;
begin
  goods := GetNsiGood(dsDocHeadF_DATE.Value, scan, 0,
    dsDocHeadF_PRICE.AsInteger);
  cnt := length(goods);
  if cnt > 0 then
  begin
    for i := 0 to cnt - 1 do
    begin
      dsDocBody.Insert;
      dsDocBodyF_GOOD.Value := goods[i];
      dsDocBody.Post;
      cxGrid1DBTableViewGoods.DataController.SelectRows
        (cxGrid1DBTableViewGoods.DataController.FocusedRowIndex,
        cxGrid1DBTableViewGoods.DataController.FocusedRowIndex);

    end;
  end
  else
  begin
    beep;
  end;
  scan := '';
end;

procedure TFrmZakazDoc.RefreshDoc;
begin

end;

procedure TFrmZakazDoc.RzDBButtonEdit1ButtonClick(Sender: TObject);
var
  Key: Integer;
begin
  Key := GetNsiPartner;
  if Key > 0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_PARTNER.Value := Key;
    dsDocHead.Post;
    RefreshDs(dsDocHead);
  end;
end;

procedure TFrmZakazDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
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
    RefreshDs(dsDocBody);
  end;
end;

procedure TFrmZakazDoc.RzDBSpinEdit1Exit(Sender: TObject);
begin
  if dsDocHead.State = dsEdit then
  begin
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocBody);
  end;
end;

end.
