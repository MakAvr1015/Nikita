unit UDlgMakeDocFromZakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxRadioGroup, cxGroupBox, RzLabel, Vcl.Mask,
  RzEdit, RzDBEdit, RzDBBnEd, Vcl.Menus, cxButtons, cxTextEdit, cxMaskEdit,
  cxButtonEdit, uDm, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TDlgMakeDocFromZakaz = class(TForm)
    cxRadioGroup1: TcxRadioGroup;
    cxRadioButtonAllZakaz: TcxRadioButton;
    cxRadioButtonNoOut: TcxRadioButton;
    cxRadioGroup2: TcxRadioGroup;
    cxRadioButtonSkldOst: TcxRadioButton;
    cxRadioButtonZakOst: TcxRadioButton;
    RzLabel5: TRzLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLookupComboBoxSklad: TcxLookupComboBox;
    cxRadioButtonEmptyDoc: TcxRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgMakeDocFromZakaz: TDlgMakeDocFromZakaz;

implementation
  uses
    uPublic;
{$R *.dfm}

end.
