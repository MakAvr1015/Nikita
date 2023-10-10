unit UDlgSave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters,
  StdCtrls, cxCalendar, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxShellComboBox, ExtCtrls, Mask, cxGraphics,
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
  dxSkinXmas2008Blue, dxCore, cxDateUtils, RzShellDialogs{, sMaskEdit,
  sCustomComboEdit, sTooledit};

type
  TDlgSave = class(TForm)
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    SaveImg: TcxCheckBox;
    editDateFrom: TcxDateEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label4: TLabel;
    DirToSave: TcxShellComboBox;
    RzSaveDialog: TRzSaveDialog;
    procedure sFilenameEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgSave: TDlgSave;

implementation

{$R *.dfm}

procedure TDlgSave.sFilenameEditChange(Sender: TObject);
begin
//  DirToSave.Path:=ExtractFilePath(sFilenameEdit.FileName);
end;

end.
