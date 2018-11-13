unit uDlgEditField;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, OKCANCL1;

type
  TDlgEditField = class(TOKBottomDlg)
    procedure HelpBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowDlg(Capt: string;var ParValue : string) : boolean;
  end;

var
  DlgEditField: TDlgEditField;

implementation

{$R *.dfm}

procedure TDlgEditField.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

function TDlgEditField.ShowDlg(Capt: string; var ParValue: string): boolean;
begin
  self.Caption:=Capt;
  result:=false;
  if (ModalResult=mrOk) then
  begin
    result:=true;
  end;
end;

end.
 
