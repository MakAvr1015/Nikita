unit uDlgImportInputDoc;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls,{ OKCANCL2,} Mask,// sMaskEdit, sCustomComboEdit, sTooledit,
  RzEdit, Vcl.Dialogs;

type
  TDlgImportInputDoc = class(TForm)
    CheckCalcCurrency: TCheckBox;
    EditCource: TRzNumericEdit;
    CheckExecDoc: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    OpenDialog: TOpenDialog;
    procedure HelpBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgImportInputDoc: TDlgImportInputDoc;

implementation

{$R *.dfm}

procedure TDlgImportInputDoc.Button1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
    Button1.ModalResult:=mrOk
  else
    Button1.ModalResult:=mrCancel;
end;

procedure TDlgImportInputDoc.HelpBtnClick(Sender: TObject);
begin
//  Application.HelpContext(HelpContext);
end;

end.
 
