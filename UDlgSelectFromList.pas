unit UDlgSelectFromList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxContainer,
  cxEdit, cxCustomListBox, cxListBox;

type
  TDlgSelectFromList = class(TForm)
    cxListBoxVals: TcxListBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgSelectFromList: TDlgSelectFromList;

implementation

{$R *.dfm}

end.
