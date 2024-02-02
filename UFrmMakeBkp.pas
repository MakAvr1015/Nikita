unit UFrmMakeBkp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, System.ImageList, Vcl.ImgList, frxClass,
  frxDBSet, frxExportRTF, frxExportPDF, frxExportXML, frxExportXLS,
  frxFIBComponents, frxChBox, frxTableObject, frxCross, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxDCtrl, frxOLE, frxDesgn, frxBarcode,
  cxClasses, cxPropertiesStore, RzForms, Vcl.Menus, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, RzButton, RzPanel, Vcl.ExtCtrls, RzStatus, Vcl.ComCtrls,
  Winapi.ShlObj, cxShellCommon, cxTreeView, cxShellTreeView, cxShellComboBox,
  IB_Services, Vcl.StdCtrls, FIBDatabase, pFIBDatabase;

type
  TFrmMakeBkp = class(TFrmPrototype)
    localDbase: TpFIBDatabase;
    Panel1: TPanel;
    BtnBckp: TButton;
    pFIBBackupService: TpFIBBackupService;
    pFIBRestoreService1: TpFIBRestoreService;
    cxShellComboBox: TcxShellComboBox;
    Memo1: TMemo;
    procedure BtnBckpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMakeBkp: TFrmMakeBkp;

implementation

uses
  uPublic;

{$R *.dfm}

procedure TFrmMakeBkp.BtnBckpClick(Sender: TObject);
begin
//  pFIBBackupService.ServerName := DataBasePath;
  pFIBBackupService.BackupFile.Clear;
  pFIBBackupService.BackupFile.Add(cxShellComboBox.Path + '\nbase.bkp');
  pFIBBackupService.Active := true;
//  pFIBBackupService.Verbose := true;
  pFIBBackupService.ServiceStart;
  while not pFIBBackupService.Eof do
    Memo1.Lines.Add(pFIBBackupService.GetNextLine);
  pFIBBackupService.Active := False;
end;

end.
