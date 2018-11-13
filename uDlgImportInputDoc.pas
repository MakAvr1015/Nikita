unit uDlgImportInputDoc;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls,{ OKCANCL2,} Mask, sMaskEdit, sCustomComboEdit, sTooledit,
  RzEdit;

type
  TDlgImportInputDoc = class(TForm)
    CheckCalcCurrency: TCheckBox;
    EditCource: TRzNumericEdit;
    CheckExecDoc: TCheckBox;
    ImportFile: TsFilenameEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure HelpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgImportInputDoc: TDlgImportInputDoc;

implementation

{$R *.dfm}

procedure TDlgImportInputDoc.HelpBtnClick(Sender: TObject);
begin
//  Application.HelpContext(HelpContext);
end;

end.
 
