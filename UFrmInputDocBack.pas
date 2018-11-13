unit UFrmInputDocBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmInputDoc, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxLabel, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, FIBDataSet, FIBDatabase, pFIBDatabase,
  pFIBDataSet, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, RzDBBnEd,
  RzDBEdit, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit, RzLabel, RzPanel,
  RzButton, ExtCtrls, RzStatus, FIBQuery, pFIBQuery, pFIBStoredProc,
  cxPropertiesStore, RzForms, cxCurrencyEdit, cxImage, cxContainer, cxDBEdit,
  cxImageComboBox;

type
  TFrmInputDocBack = class(TFrmInputDoc)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInputDocBack: TFrmInputDocBack;

implementation

{$R *.dfm}

end.
