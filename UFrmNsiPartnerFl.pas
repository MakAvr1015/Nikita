unit UFrmNsiPartnerFl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPrototype, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxShellDialogs,
  System.ImageList, Vcl.ImgList, frxClass, frxDBSet, frxExportRTF, frxExportPDF,
  frxExportXML, frxExportXLS, frxFIBComponents, frxChBox, frxTableObject,
  frxCross, frxRich, frxExportBaseDialog, frxExportDOCX, frxDCtrl, frxOLE,
  frxDesgn, frxBarcode, cxClasses, cxPropertiesStore, RzForms, Vcl.Menus,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, RzButton, RzPanel, Vcl.ExtCtrls,
  RzStatus, Data.DB, FIBDataSet, pFIBDataSet;

type
  TFrmNsiPartnerFl = class(TFrmPrototype)
    dsPartnerInfo: TpFIBDataSet;
    srPartnerInfo: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiPartnerFl: TFrmNsiPartnerFl;

implementation

{$R *.dfm}

end.
