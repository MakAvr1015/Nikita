unit uContextPasswordDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, FIBQuery, pFIBQuery, pFIBStoredProc;

type
  TContextPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    PasswordKey : string;
  end;

var
  ContextPasswordDlg: TContextPasswordDlg;

implementation
uses
  udm,upublic;
{$R *.dfm}

end.
 
