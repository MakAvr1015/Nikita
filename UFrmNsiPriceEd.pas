unit UFrmNsiPriceEd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, Menus, RzButton, RzPanel, ExtCtrls, RzStatus,uDm,
  StdCtrls, Mask, RzEdit, RzDBEdit, DB, FIBDataSet, FIBDatabase, pFIBDatabase,
  pFIBDataSet, RzRadChk, RzDBChk, DBCtrls, RzDBCmbo, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, cxLookAndFeels,
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
  TFrmNsiPriceEd = class(TFrmPrototype)
    dsNsiPrice: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    srNsiPrice: TDataSource;
    dsNsiPriceF_ID: TFIBBCDField;
    dsNsiPriceF_NAME: TFIBStringField;
    dsNsiPriceF_FORMULA: TFIBStringField;
    dsNsiPriceF_ROUND: TFIBBCDField;
    dsNsiPriceF_PARENT_OBJECT: TFIBBCDField;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    dsNsiPriceF_SAVE_RESULT: TFIBSmallIntField;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    dsParentSrc: TpFIBDataSet;
    srParentSrc: TDataSource;
    dsParentSrcF_ID: TFIBBCDField;
    dsParentSrcF_NAME: TFIBStringField;
    dsParentSrcF_PARENT_OBJECT: TFIBBCDField;
    dsParentSrcF_FORMULA: TFIBStringField;
    dsParentSrcF_ROUND: TFIBBCDField;
    dsParentSrcF_SAVE_RESULT: TFIBSmallIntField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDiapazon: TpFIBDataSet;
    srDiapazon: TDataSource;
    dsDiapazonF_NSI_PRICE_STR: TFIBBCDField;
    dsDiapazonF_START_LINE: TFIBFloatField;
    dsDiapazonF_END_LINE: TFIBFloatField;
    dsDiapazonF_FORMULA: TFIBFloatField;
    dsDiapazonF_ROUND: TFIBFloatField;
    cxGrid1DBTableView1F_NSI_PRICE_STR: TcxGridDBColumn;
    cxGrid1DBTableView1F_START_LINE: TcxGridDBColumn;
    cxGrid1DBTableView1F_END_LINE: TcxGridDBColumn;
    cxGrid1DBTableView1F_FORMULA: TcxGridDBColumn;
    cxGrid1DBTableView1F_ROUND: TcxGridDBColumn;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    dsDiapazonF_ID: TFIBBCDField;
    dsNsiPriceF_CODE: TFIBStringField;
    RzDBEdit4: TRzDBEdit;
    Label4: TLabel;
    procedure dsNsiPriceAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiPriceEd: TFrmNsiPriceEd;

implementation

{$R *.dfm}

procedure TFrmNsiPriceEd.dsNsiPriceAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsParentSrc.Active:=true;
  dsDiapazon.ParamByName('f_id').Value:=dsNsiPriceF_ID.Value;
  dsDiapazon.Active:=true;
end;

end.
