unit UFrmEditSklad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzDBBnEd, StdCtrls, Mask, RzEdit, RzDBEdit, RzButton,
  RzPanel, ExtCtrls;

type
  TFrmEditSklad = class(TFrmPrototype)
    RzDBEdit1: TRzDBEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RzDBEdit2: TRzDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditSklad: TFrmEditSklad;

implementation

{$R *.dfm}

end.
