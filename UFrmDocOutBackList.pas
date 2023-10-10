unit UFrmDocOutBackList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmDocOutList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBQuery, pFIBQuery, pFIBStoredProc, cxPropertiesStore,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls, RzStatus,
  ComCtrls, ToolWin, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxContainer,
  System.ImageList, Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

type
  TFrmDocOutBackList = class(TFrmDocOutList)
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocOutBackList: TFrmDocOutBackList;

implementation

{$R *.dfm}
uses
  udm,uDocClass,uPublic;

procedure TFrmDocOutBackList.BtnEditClick(Sender: TObject);
var
  key : integer;
begin

  key:=dsDocListF_doc_out.Value;
  with TOutDoc.Create(key) do
  begin
    doc_type:=3;
    OpenEditFrm;
  end;
end;

procedure TFrmDocOutBackList.BtnNewClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  with TOutDoc.Create(key) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

end.
