unit UnDlgMakeMoveFromZakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, RzLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup, cxGroupBox, cxCheckBox;

type
  TDlgMakeMoveFromZakaz = class(TForm)
    cxRadioGroup2: TcxRadioGroup;
    cxRadioButtonSkldOst: TcxRadioButton;
    cxRadioButtonZakOst: TcxRadioButton;
    cxLookupComboBoxSkladFrom: TcxLookupComboBox;
    RzLabel5: TRzLabel;
    cxLookupComboBoxSkladTo: TcxLookupComboBox;
    RzLabel1: TRzLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxCheckBoxEmpty: TcxCheckBox;
    procedure cxCheckBoxEmptyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgMakeMoveFromZakaz: TDlgMakeMoveFromZakaz;

implementation

{$R *.dfm}

procedure TDlgMakeMoveFromZakaz.cxCheckBoxEmptyClick(Sender: TObject);
begin
  cxRadioGroup2.Enabled := not cxCheckBoxEmpty.Checked;
end;

end.
