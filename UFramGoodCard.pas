unit UFramGoodCard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, DB, FIBDataSet, pFIBDataSet,
  cxLabel, cxDBLabel, ExtCtrls, cxControls, cxContainer, cxEdit, cxImage,
  cxDBEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue,
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
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFramGoodCard = class(TFrame)
    cxDBImage1: TcxDBImage;
    Panel4: TPanel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    dsGetGoodsInfo: TpFIBDataSet;
    dsGetGoodsInfoF_NAME: TFIBStringField;
    dsGetGoodsInfoF_ARTICLE: TFIBStringField;
    dsGetGoodsInfoF_DOP_INFO: TFIBStringField;
    dsGetGoodsInfoF_GOODS_GRP_EXT_ID: TFIBStringField;
    dsGetGoodsInfoF_SCANCODE: TFIBStringField;
    srGetGoodsInfo: TDataSource;
    dsGetGoodsInfoF_MEMO: TFIBBlobField;
    cxDBLabel3: TcxDBLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsGoodsDopInfo: TpFIBDataSet;
    srGoodsDopInfo: TDataSource;
    dsGoodsDopInfoF_ID: TFIBBCDField;
    dsGoodsDopInfoF_GOOD: TFIBBCDField;
    dsGoodsDopInfoF_GOOD_INFO: TFIBBCDField;
    dsGoodsDopInfoF_GOOD_INFO_NAME: TFIBStringField;
    dsGoodsDopInfoF_GOOD_INFO_VAL: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_INFO: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_INFO_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_INFO_VAL: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
