unit UDlgCreateDocFromTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.StdCtrls, cxRadioGroup, cxGroupBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, RzLabel;

type
  TDlgCreateDocFromTemplate = class(TForm)
    cxComboDocType: TcxComboBox;
    cxLabel1: TcxLabel;
    RzLabel5: TRzLabel;
    cxLookupComboBoxSklad: TcxLookupComboBox;
    cxRadioGroupGood: TcxRadioGroup;
    cxRadioGroupCnt: TcxRadioGroup;
    BtnOk: TButton;
    BtnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgCreateDocFromTemplate: TDlgCreateDocFromTemplate;

implementation

{$R *.dfm}

end.
