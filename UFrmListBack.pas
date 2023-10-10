unit UFrmListBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmDocInpList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBQuery, pFIBQuery, pFIBStoredProc, cxPropertiesStore,
  RzForms, frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Menus, StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls,
  RzStatus, ComCtrls, ToolWin, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, System.ImageList, Vcl.ImgList,
  frxDBSet;

type
  TFrmListBack = class(TFrmListInputDocs)
    PopupMenuNewDoc: TPopupMenu;
    NOptBack: TMenuItem;
    NRoznBack: TMenuItem;
    procedure BtnNewDDClick(Sender: TObject);
    procedure NOptBackClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmListBack: TFrmListBack;

implementation
  uses
    uDocClass;
{$R *.dfm}

procedure TFrmListBack.BtnNewDDClick(Sender: TObject);
begin
  BtnPrint.Down:=true;
end;

procedure TFrmListBack.NOptBackClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  inherited;
  with TInputDoc.Create(key) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

end.
