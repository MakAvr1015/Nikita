unit UFrmErrorImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, StdCtrls, RzLstBox, DB, FIBDataSet, pFIBDataSet;

type
  TFrmErrorImport = class(TFrmPrototype)
    pFIBDataSet1: TpFIBDataSet;
    RzListBox1: TRzListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmErrorImport: TFrmErrorImport;

implementation

{$R *.dfm}
uses
  udm,upublic;
end.
