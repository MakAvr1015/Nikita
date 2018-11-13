unit UFrmDocSpisan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus;

type
  TFrmDocSpisan = class(TFrmPrototype)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocSpisan: TFrmDocSpisan;

implementation

{$R *.dfm}

end.
