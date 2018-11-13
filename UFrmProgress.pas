unit UFrmProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit,
  cxProgressBar, cxLabel;

type
  TFrmProgress = class(TForm)
    cxProgressBar: TcxProgressBar;
    cxLabel: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProgress: TFrmProgress;

implementation

{$R *.dfm}

end.
