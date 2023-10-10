unit UFrmMoveDocSpisan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMoveDoc, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxImage, FIBQuery, pFIBQuery, pFIBStoredProc,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, FIBDataSet, FIBDatabase, pFIBDatabase,
  pFIBDataSet, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, RzDBBnEd,
  RzDBEdit, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit, RzLabel, RzPanel,
  RzButton, ExtCtrls, RzStatus, cxContainer, cxDBEdit, cxColorComboBox,
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
  TFrmMoveDocSpisan = class(TFrmMoveDoc)
    dsNsiPropertyVal: TpFIBDataSet;
    dsNsiPropertyValF_ID: TFIBBCDField;
    dsNsiPropertyValF_DOC_PROPERTY: TFIBBCDField;
    dsNsiPropertyValF_VALUE: TFIBStringField;
    srNsiPropertyVal: TDataSource;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    dsDocProperty: TpFIBDataSet;
    dsDocPropertyF_ID: TFIBBCDField;
    dsDocPropertyF_PROPERTY_ID: TFIBBCDField;
    dsDocPropertyF_PROPERTY_NAME: TFIBStringField;
    dsDocPropertyF_VALUE: TFIBStringField;
    srDocProperty: TDataSource;
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
 
  end;

var
  FrmMoveDocSpisan: TFrmMoveDocSpisan;

implementation

{$R *.dfm}

procedure TFrmMoveDocSpisan.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsNsiPropertyVal.Active:=true;
  dsDocProperty.Active:=false;
  dsDocProperty.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocProperty.Active:=true;
end;

end.
