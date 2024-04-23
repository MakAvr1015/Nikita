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
  IB_Services, Vcl.StdCtrls, FIBDatabase, pFIBDatabase, cxRadioGroup;

type
  TFrmMakeBkp = class(TFrmPrototype)
    localDbase: TpFIBDatabase;
    Panel1: TPanel;
    BtnBckp: TButton;
    cxShellComboBox: TcxShellComboBox;
    Panel2: TPanel;
    MemoLog: TMemo;
    cxRadioButtonFull: TcxRadioButton;
    cxRadioButtonStock: TcxRadioButton;
    cxRadioButtonEmpty: TcxRadioButton;
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
  uPublic, Winapi.ShellAPI, Windows, uPassWord;

{$R *.dfm}

procedure TFrmMakeBkp.BtnBckpClick(Sender: TObject);
var
  ResultCode: Cardinal;
  gbak_str: String;
  auth_str : String;
  vl_log: Tstrings;
  vl_path: String;
  vl_make: boolean;
begin
  vl_path := cxShellComboBox.Path + '\Nikita';

  vl_make := false;
  with TPasswordDlg.Create(Application) do
  begin
    if ShowModal = mrOk then
    begin
      auth_str := '-user ' + EdUser.Text + ' -password ' + Password.Text;
      gbak_str := '-b -m -v ' + EdBase.Text + ' ' + vl_path +
        '\nbase.bkp ' + auth_str;
      vl_make := true;
    end;

    free;
  end;
  if vl_make then
  begin
    if not directoryexists(vl_path) then
    begin
      MkDir(vl_path);
    end;
    vl_log := GetDosOutput(Gbak_path + '\gbak' + ' ' + gbak_str, Gbak_path,
      ResultCode, @MemoLog.Lines);
    MemoLog.Lines.Add('=========================Сохранение завершено===================================');
    vl_log.Clear;
    vl_log := GetDosOutput(Gbak_path + '\gbak -rep -v ' + vl_path + '\nbase.bkp ' + vl_path + '\nbase.gdb ' + auth_str,
      Gbak_path, ResultCode, @MemoLog.Lines);
    MemoLog.Lines.Add('=========================Восстановление завершено===================================');
    localDbase.LibraryName := Gbak_path + '\engine12.dll';
  end;
end;

end.
