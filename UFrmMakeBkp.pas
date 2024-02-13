unit UFrmMakeBkp;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    cxShellComboBox: TcxShellComboBox;
    Panel2: TPanel;
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
  uPublic, Winapi.ShellAPI, Windows;

{$R *.dfm}

procedure TFrmMakeBkp.BtnBckpClick(Sender: TObject);
var
  h,h1 : hwnd;
begin
  panel2.Caption := Gbak_path;
  { TODO : Добавить создание дочернего процесса с перехватом консоли }
  h1 := ShellExecute(Panel2.Handle,nil,'cmd',nil,Pchar(Gbak_path),SW_SHOW);
end;

end.
