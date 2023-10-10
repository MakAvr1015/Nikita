unit UFrmInputDocBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmInputDoc, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxLabel, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, FIBDataSet, FIBDatabase, pFIBDatabase,
  pFIBDataSet, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, RzDBBnEd,
  RzDBEdit, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit, RzLabel, RzPanel,
  RzButton, ExtCtrls, RzStatus, FIBQuery, pFIBQuery, pFIBStoredProc,
  cxPropertiesStore, RzForms, cxCurrencyEdit, cxImage, cxContainer, cxDBEdit,
  cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich, frxExportBaseDialog,
  frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFrmInputDocBack = class(TFrmInputDoc)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInputDocBack: TFrmInputDocBack;

implementation

{$R *.dfm}

end.
