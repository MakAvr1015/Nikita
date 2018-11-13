unit UDlgSave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShlObj, cxShellCommon, dxSkinsCore, dxSkinsDefaultPainters,
  StdCtrls, cxCalendar, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxShellComboBox, ExtCtrls, Mask, sMaskEdit,
  sCustomComboEdit, sTooledit;

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
    sFilenameEdit: TsFilenameEdit;
    Label1: TLabel;
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
  DirToSave.Path:=ExtractFilePath(sFilenameEdit.FileName);
end;

end.
