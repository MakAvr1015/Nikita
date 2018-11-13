unit UFrmNsiGoodsGrp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, UFramNsiGoodsGrp, cxPropertiesStore, RzForms,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  Menus, RzButton, RzPanel, ExtCtrls, RzStatus;

type
  TFrmNsiGoodsGrp = class(TFrmPrototype)
    FramNsiGoodsGrp1: TFramNsiGoodsGrp;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiGoodsGrp: TFrmNsiGoodsGrp;

implementation
uses upublic,udm;
{$R *.dfm}

procedure TFrmNsiGoodsGrp.FormShow(Sender: TObject);
begin
  inherited;
  refreshDS(FramNsiGoodsGrp1.dsNsiGrp);
end;

end.
