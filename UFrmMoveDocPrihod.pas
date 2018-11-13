unit UFrmMoveDocPrihod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMoveDoc, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxImage, FIBQuery, pFIBQuery, pFIBStoredProc,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, FIBDataSet, FIBDatabase, pFIBDatabase,
  pFIBDataSet, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, RzDBBnEd,
  RzDBEdit, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit, RzLabel, RzPanel,
  RzButton, ExtCtrls, RzStatus, cxContainer, cxDBEdit, cxColorComboBox;

type
  TFrmMoveDocPrihod = class(TFrmMoveDoc)
    RzDBMemo1: TRzDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMoveDocPrihod: TFrmMoveDocPrihod;

implementation

{$R *.dfm}

end.
