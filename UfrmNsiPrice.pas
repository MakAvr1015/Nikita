unit UfrmNsiPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDatabase,
  pFIBDatabase, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  pFIBDataSet, FIBQuery, pFIBQuery, pFIBStoredProc, Menus, RzStatus,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, UFramGoodCard, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich, frxExportBaseDialog,
  frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfrmNsiPrice = class(TFrmPrototype)
    dsListNsiPrice: TpFIBDataSet;
    dsListPriceGood: TpFIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Splitter1: TSplitter;
    srNsiPrice: TDataSource;
    srListPriceGood: TDataSource;
    pFIBTransaction: TpFIBTransaction;
    dsListNsiPriceF_NAME: TFIBStringField;
    dsListNsiPriceF_PARENT_OBJECT: TFIBBCDField;
    dsListNsiPriceF_FORMULA: TFIBStringField;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARENT_OBJECT: TcxGridDBColumn;
    cxGrid1DBTableView1F_FORMULA: TcxGridDBColumn;
    dsListNsiPriceF_PRICE_ID: TFIBBCDField;
    cxGrid1DBTableView1F_PRICE_ID: TcxGridDBColumn;
    dsListPriceGoodF_ID: TFIBBCDField;
    dsListPriceGoodF_GOOD: TFIBBCDField;
    dsListPriceGoodF_PRICE: TFIBBCDField;
    dsListPriceGoodF_STR_DATE: TFIBDateField;
    dsListPriceGoodF_MAKE_DATE: TFIBDateTimeField;
    dsListPriceGoodF_GOOD_NAME: TFIBStringField;
    cxGrid2DBTableView1F_ID: TcxGridDBColumn;
    cxGrid2DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid2DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid2DBTableView1F_STR_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1F_MAKE_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    dsListPriceGoodF_VALUE: TFIBFloatField;
    cxGrid2DBTableView1F_VALUE: TcxGridDBColumn;
    cxGrid2DBTableView1F_DEFAULT_SKLAD_OST: TcxGridDBColumn;
    spCalcPrice: TpFIBStoredProc;
    dsListNsiPriceF_ROUND: TFIBBCDField;
    cxGrid1DBTableView1F_ROUND: TcxGridDBColumn;
    dsListPriceGoodF_ARTICLE: TFIBStringField;
    cxGrid2DBTableView1F_ARTICLE: TcxGridDBColumn;
    dsListPriceGoodF_DEFAULT_SKLAD_OST: TFIBBCDField;
    FramGoodCard1: TFramGoodCard;
    Panel1: TPanel;
    Splitter2: TSplitter;
    dsListNsiPriceF_CODE: TFIBStringField;
    cxGrid1DBTableView1F_CODE: TcxGridDBColumn;
    procedure BtnExecuteClick(Sender: TObject);
    procedure dsListNsiPriceAfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNsiPrice: TfrmNsiPrice;

implementation

{$R *.dfm}
uses uDm,uPublic,uFrmCalcPrice,uFrmNsiPriceEd;

procedure TfrmNsiPrice.BtnExecuteClick(Sender: TObject);
begin
  spCalcPrice.ParamByName('F_PRICE_ID').Value:=dsListNsiPriceF_PRICE_ID.Value;
  with TFrmCalcPrice.Create(self) do
  begin
    EdStartDate.Date:=date;
    if ShowAsDialog then
    begin
      spCalcPrice.ParamByName('F_START_DATE').Value:=EdStartDate.Date;
      spCalcPrice.ExecProc;
      if spCalcPrice.Transaction.Active then
        spCalcPrice.Transaction.CommitRetaining;
      RefreshDs(dsListNsiPrice);
    end;
  end;
end;

procedure TfrmNsiPrice.BtnNewClick(Sender: TObject);
begin
  FrmNsiPriceEd:=TFrmNsiPriceEd.Create(self);
  FrmNsiPriceEd.dsNsiPrice.ParamByName('PRICE_ID').Value:=-10;
  if FrmNsiPriceEd.ShowAsDialog then
  begin
    PostAllDS(FrmNsiPriceEd,true);
    refreshDs(dsListNsiPrice);    
  end;
  FrmNsiPriceEd.Free;
end;

procedure TfrmNsiPrice.BtnSaveClick(Sender: TObject);
begin
  inherited;
  dsListPriceGood.Transaction.CommitRetaining;
end;

procedure TfrmNsiPrice.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if (BorderStyle<>bsDialog) then
  begin
  FrmNsiPriceEd:=TFrmNsiPriceEd.Create(self);
  FrmNsiPriceEd.dsNsiPrice.ParamByName('PRICE_ID').Value:=dsListNsiPriceF_PRICE_ID.Value;
  if FrmNsiPriceEd.ShowAsDialog then
  begin
    PostAllDS(FrmNsiPriceEd,true);
    refreshDs(dsListNsiPrice);
  end;
  FrmNsiPriceEd.Free;
  end;
end;

procedure TfrmNsiPrice.dsListNsiPriceAfterOpen(DataSet: TDataSet);
begin
    dsListPriceGood.Active:=true;
end;

end.
