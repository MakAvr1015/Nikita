unit UNsiGoodScancodeFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FIBDatabase, pFIBDatabase,
  Data.DB, FIBDataSet, pFIBDataSet;

type
  TNsiGoodScancodeFrame = class(TFrame)
    dsScancodes: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
