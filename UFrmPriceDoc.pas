unit UFrmPriceDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, Menus, RzButton, RzPanel, ExtCtrls, RzStatus,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FIBDataSet, FIBDatabase, pFIBDatabase, pFIBDataSet, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzDBBnEd, RzDBEdit, DBCtrls, RzDBCmbo,
  StdCtrls, Mask, RzEdit, RzLabel, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, cxContainer, cxImage,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, System.ImageList, Vcl.ImgList, frxDBSet, frxChBox,
  frxTableObject, frxRich, frxExportBaseDialog, frxExportDOCX, frxOLE;

type
  TFrmPriceDoc = class(TFrmPrototype)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel6: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsPriceDocHead: TpFIBDataSet;
    dsPriceDocBody: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    dsPriceDocHeadF_NUM: TFIBStringField;
    dsPriceDocHeadF_DATE: TFIBDateField;
    dsPriceDocHeadF_PARENT: TFIBBCDField;
    dsPriceDocHeadF_STATE: TFIBBCDField;
    dsPriceDocHeadF_PRICE: TFIBBCDField;
    dsPriceDocHeadF_PRICE_NAME: TFIBStringField;
    dsPriceDocHeadF_STATE_NAME: TFIBStringField;
    srPriceDocHead: TDataSource;
    srPriceDocBody: TDataSource;
    dsPriceDocHeadF_DOC_HEAD: TFIBBCDField;
    dsPriceDocBodyF_ID: TFIBBCDField;
    dsPriceDocBodyF_GOOD: TFIBBCDField;
    dsPriceDocBodyF_PRICE: TFIBBCDField;
    dsPriceDocBodyF_DOC_PRICE: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_PRICE: TcxGridDBColumn;
    dsPriceDocBodyF_GOOD_NAME: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    dsPriceDocBodyF_OLD_PRICE: TFIBBCDField;
    cxGrid1DBTableView1F_OLD_PRICE: TcxGridDBColumn;
    dsPriceDocBodyF_IN_PRICE: TFIBFloatField;
    cxGrid1DBTableView1F_IN_PRICE: TcxGridDBColumn;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsPriceDocBodyF_SKLAD_OST: TBCDField;
    cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn;
    dsPriceDocBodyF_ARTICLE: TFIBStringField;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dsPriceDocHeadAfterOpen(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
    procedure dsPriceDocBodyAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dsPriceDocBodyAfterDelete(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsPriceDocBodyBeforePost(DataSet: TDataSet);
  private
    scan  : string;
    { Private declarations }
  public
    { Public declarations }
    procedure InsPosition;
  end;

var
  FrmPriceDoc: TFrmPriceDoc;

implementation

uses
 udm, upublic, UTypes;
{$R *.dfm}

procedure TFrmPriceDoc.BtnOKClick(Sender: TObject);
begin
  PostAllDS(Self,true);
  refreshDs(dsPriceDocBody);
  inherited;
end;

procedure TFrmPriceDoc.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsPriceDocBody);
end;

procedure TFrmPriceDoc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if ((AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_PRICE.Index]<
    AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_OLD_PRICE.Index])
    and (AviewInfo.Item.Name='cxGrid1DBTableView1F_PRICE')
  )then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
  end;

end;

procedure TFrmPriceDoc.cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  with TcxDragControlObject(Source) do
  begin
    if Control is TcxGridSite then
      with TcxGridSite(Control) do
      begin
        DragDropGood(TcxGridDBTableView(GridView),dsPriceDocBody);
      end;
  end;
end;

procedure TFrmPriceDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
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

procedure TFrmPriceDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
      scan:=scan+key;
  end;
end;

procedure TFrmPriceDoc.dsPriceDocBodyAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmPriceDoc.dsPriceDocBodyAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshDs(DataSet,'f_good',dsPriceDocBodyF_GOOD.Value);
  cxGrid1.SetFocus;
end;


procedure TFrmPriceDoc.dsPriceDocBodyBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (dsPriceDocBodyF_GOOD.IsNull and not dsPriceDocBodyF_GOOD_NAME.IsNull) then
  begin

    dm.dsGood_ins.Active:=false;
    dm.dsGood_ins.ParamByName('f_name').Value:=dsPriceDocBodyF_GOOD_NAME.Value;
    dm.dsGood_ins.ParamByName('f_article').Value:=dsPriceDocBodyF_ARTICLE.Value;
    dm.dsGood_ins.Active:=true;
    dm.dsGood_ins.Transaction.CommitRetaining;
    dsPriceDocBodyF_GOOD.Value:=dm.dsGood_ins.FieldByName('f_id').Value;
  end;
end;

procedure TFrmPriceDoc.dsPriceDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsPriceDocHead.ParamByName('f_price_doc').Value:=dsPriceDocHeadF_DOC_HEAD.Value;
  dsPriceDocBody.ParamByName('f_doc_head').Value:=dsPriceDocHeadF_DOC_HEAD.Value;
  dsPriceDocBody.Active:=true;
end;

procedure TFrmPriceDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
  goods:=GetNsiGood(date(),scan);
  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      dsPriceDocBody.Insert;
      dsPriceDocBodyF_GOOD.Value:=goods[i];
      dsPriceDocBody.Post;
//      cxGrid1DBTableView1.DataController.SelectRows(
//        dsPriceDocBody.RecNo-1,dsPriceDocBody.RecNo-1);

    end;
  end
  else
  begin
    beep;
  end;
  scan:='';
end;

procedure TFrmPriceDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPrice;
  if (key>0) then
  begin
    dsPriceDocHead.Edit;
    dsPriceDocHeadF_PRICE.Value:=key;
    dsPriceDocHead.Post;
    RefreshDs(dsPriceDocHead);
    RefreshDs(dsPriceDocBody);
  end;
end;

end.
