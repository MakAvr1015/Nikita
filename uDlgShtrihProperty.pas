unit uDlgShtrihProperty;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, cxPropertiesStore;

type
  TDlgShtrihProperty = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    EdIP: TEdit;
    EdPort: TEdit;
    EdTimeout: TEdit;
    EdPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxPropertiesStore: TcxPropertiesStore;
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgShtrihProperty: TDlgShtrihProperty;

implementation

{$R *.dfm}

procedure TDlgShtrihProperty.CancelBtnClick(Sender: TObject);
begin
  cxPropertiesStore.Active:=false;
end;

end.
