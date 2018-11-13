unit UFrmCalcPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, StdCtrls, Mask, RzEdit,
  DB, FIBDataSet, DBCtrls, RzDBCmbo, pFIBDataSet, FIBQuery, pFIBQuery,
  pFIBStoredProc, Menus, RzStatus, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents;

type
  TFrmCalcPrice = class(TFrmPrototype)
    dsPriceSource: TpFIBDataSet;
    EdPriceID: TRzDBLookupComboBox;
    srPriceSource: TDataSource;
    dsPriceSourceF_ID: TFIBBCDField;
    dsPriceSourceF_NAME: TFIBStringField;
    dsPriceSourceF_PARENT_OBJECT: TFIBBCDField;
    dsPriceSourceF_FORMULA: TFIBStringField;
    EdStartDate: TRzDateTimeEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalcPrice: TFrmCalcPrice;

implementation

{$R *.dfm}
uses
  udm;

end.
