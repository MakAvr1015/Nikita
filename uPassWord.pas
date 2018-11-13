unit uPassWord;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, PropFilerEh, PropStorageEh, cxPropertiesStore,IniFiles, ExtCtrls;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    EdUser: TEdit;
    EdBase: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxPropertiesStore: TcxPropertiesStore;
    RadioGroup1: TRadioGroup;
    Atol: TRadioButton;
    Strih: TRadioButton;
    LangSelect: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdBaseDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation
  uses uPublic;
{$R *.dfm}

procedure TPasswordDlg.EdBaseDblClick(Sender: TObject);
begin
  EdBase.Enabled:=true;
end;

procedure TPasswordDlg.FormCreate(Sender: TObject);
var
  inifile : TiniFile;
  Dict : TIniFile;

begin
{  IniPropStorageManEh.IniFileName:=
    ExtractFilePath(Application.ExeName)+'\nikita.ini';
}
  inifile:=TIniFile.Create(prg_path+'\nikita.ini');
  Dict:=TIniFile.Create(Prg_path+'\'+TranslateFile);
  Dict.ReadSections(LangSelect.Items);
  LangSelect.Items.Add('ÐÓÑ');
  cxPropertiesStore.RestoreFrom;
  try
    edBAse.Text:=inifile.ReadString('LOGIN','BASE','');
  except
    edBAse.Text:='';
  end;
  iniFile.Free;
  Dict.free;
end;

procedure TPasswordDlg.FormDestroy(Sender: TObject);
var
  inifile : TiniFile;
begin
  inifile:=TIniFile.Create(prg_path+'\nikita.ini');
  try
    inifile.WriteString('LOGIN','BASE',edBAse.Text);
  finally

  end;
  iniFile.Free;
end;

end.
 
