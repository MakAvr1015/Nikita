unit UFrmNsiDiscount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, RzDBSpin, StdCtrls, Mask, RzEdit, RzDBEdit, RzLabel, DB,
  FIBDataSet, pFIBDataSet;

type
  TFrmNsiDiscount = class(TFrmPrototype)
    dsNsiDiscountCard: TpFIBDataSet;
    srNsiDiscountCard: TDataSource;
    RzLabel7: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBSpinEdit1: TRzDBSpinEdit;
    dsNsiDiscountCardF_NUMBER: TFIBStringField;
    dsNsiDiscountCardF_DISCOUNT: TFIBBCDField;
    dsNsiDiscountCardF_CARD_ID: TFIBBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiDiscount: TFrmNsiDiscount;

implementation

{$R *.dfm}
uses
  udm,upublic;
end.
