unit uPassWord;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, {PropFilerEh, PropStorageEh,} cxPropertiesStore,IniFiles, ExtCtrls,
  cxClasses, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon, cxGraphics, cxControls,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxShellComboBox, Vcl.Grids;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    EdBase: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxPropertiesStore: TcxPropertiesStore;
    RadioGroup1: TRadioGroup;
    Atol: TRadioButton;
    Strih: TRadioButton;
    LangSelect: TComboBox;
    cxShellComboBox: TcxShellComboBox;
    BaseName: TEdit;
    StringGridBase: TStringGrid;
    EdUser: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdBaseDblClick(Sender: TObject);
    procedure cxShellComboBoxDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGridBaseDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation
  uses uPublic, Winapi.Messages;
{$R *.dfm}

procedure TPasswordDlg.Button1Click(Sender: TObject);
var
  vl_index : integer;
begin
  vl_index := StringGridBase.RowCount + 1;
  StringGridBase.RowCount := vl_index;
  StringGridBase.Rows[vl_index].Add('Uno');
  StringGridBase.Rows[vl_index].Add('Test');
end;

procedure TPasswordDlg.cxShellComboBoxDblClick(Sender: TObject);
begin
  if not cxShellComboBox.Enabled then
    cxShellComboBox.Enabled := true;
end;

procedure TPasswordDlg.EdBaseDblClick(Sender: TObject);
begin
  EdBase.Enabled:=true;
  BaseName.Enabled := true;
  cxShellComboBox.Enabled := true;
end;

procedure TPasswordDlg.FormCreate(Sender: TObject);
var
  inifile : TiniFile;
  loc_iniFile : TIniFile;
  Dict : TIniFile;
  Bases : TStringList;
  vl_index : integer;
begin
  { TODO : Добавить сохраннеие истории подключений (список баз) }
{  IniPropStorageManEh.IniFileName:=
    ExtractFilePath(Application.ExeName)+'\nikita.ini';
}

  inifile:=TIniFile.Create(prg_path+'\nikita.ini');
  loc_iniFile := TIniFile.Create(app_data + '\nikita.ini');
  Dict:=TIniFile.Create(Prg_path+'\'+TranslateFile);
  Dict.ReadSections(LangSelect.Items);
  LangSelect.Items.Add('РУС');
  cxPropertiesStore.RestoreFrom;
  try
    edBAse.Text:=loc_iniFile.ReadString('LOGIN','BASE','');
    //inifile.ReadString('LOGIN','BASE','');
    BaseName.Text:=loc_iniFile.ReadString('LOGIN','BASENAME','');
    //inifile.ReadString('LOGIN','BASENAME','');
    EdUser.Text := loc_iniFile.ReadString('LOGIN','USERNAME','');
    inifile.ReadSubSections('USERLIST',EdUser.Items);

    Bases := TStringList.Create;
    inifile.ReadSubSections('BASELIST',Bases);
    vl_index := 1;
    StringGridBase.RowCount := Bases.Count + 1;
    StringGridBase.Rows[0].Add('База');
    StringGridBase.Rows[0].Add('Описание');
    while vl_index <= Bases.Count do
    begin
      inifile.ReadSection('BASELIST\'+Bases[vl_index - 1],StringGridBase.Rows[vl_index]);
      StringGridBase.Rows[vl_index][1] := inifile.ReadString('BASELIST\'+Bases[vl_index - 1],StringGridBase.Rows[vl_index][0],'');
      //inifile.ReadSectionValues('BASELIST\'+Bases[vl_index - 1],StringGridBase.Rows[vl_index]);
      vl_index := vl_index + 1;
    end;
//    ListBoxBase.Items.DelimitedText := inifile.ReadString('LOGIN','BASE_LIST','');
  except
    edBAse.Text:='';
  end;
  cxShellComboBox.AbsolutePath := loc_iniFile.ReadString('PLUGIN','PluginPath',Prg_path + 'Plugins');
  iniFile.Free;
  loc_iniFile.Free;
  Dict.free;
end;

procedure TPasswordDlg.FormDestroy(Sender: TObject);
var
  inifile : TiniFile;
  loc_iniFile : TIniFile;
  vl_index : integer;
  vl_found : boolean;
begin
  vl_index := 1;
  vl_found := false;
  while vl_index <  StringGridBase.RowCount do
  begin
    if StringGridBase.Rows[vl_index][0] = edBAse.Text then
    begin
      vl_found := true;
      StringGridBase.Rows[vl_index][1] := BaseName.Text;
      break;
    end;
    vl_index := vl_index + 1;
  end;
  if not vl_found then
  begin
    StringGridBase.RowCount := StringGridBase.RowCount + 1;
    StringGridBase.Rows[StringGridBase.RowCount - 1].Add(edBAse.Text);
    StringGridBase.Rows[StringGridBase.RowCount - 1].Add(BaseName.Text);
  end;


  inifile:=TIniFile.Create(prg_path+'\nikita.ini');
  loc_iniFile := TIniFile.Create(app_data + '\nikita.ini');
  try
    loc_iniFile.WriteString('LOGIN','BASE',edBAse.Text);
    loc_iniFile.WriteString('LOGIN','BASENAME',BaseName.Text);
    loc_iniFile.WriteString('LOGIN','USERNAME',EdUser.Text);
    loc_iniFile.WriteString('PLUGIN','PluginPath',cxShellComboBox.AbsolutePath);
    vl_index := 1;
    while vl_index < StringGridBase.RowCount do
    begin
      inifile.WriteString('BASELIST\ROW'+ IntToStr(vl_index),StringGridBase.Rows[vl_index][0],StringGridBase.Rows[vl_index][1]);
      vl_index := vl_index + 1;
    end;
    if EdUser.ItemIndex = -1 then
      EdUser.Items.Add(EdUser.Text);
    vl_index := 0;
    while vl_index < EdUser.Items.Count do
    begin
      inifile.WriteString('USERLIST','USER' + IntToStr(vl_index),EdUser.Items[vl_index]);
      vl_index := vl_index + 1;
    end;

  finally

  end;
  loc_iniFile.Free;
  iniFile.Free;
end;

procedure TPasswordDlg.StringGridBaseDblClick(Sender: TObject);
begin
  if StringGridBase.Row > 0 then
  begin
    edBAse.Text:=StringGridBase.Cells[0,StringGridBase.Row];
    BaseName.Text:=StringGridBase.Cells[1,StringGridBase.Row];
  end;
end;

end.
 
