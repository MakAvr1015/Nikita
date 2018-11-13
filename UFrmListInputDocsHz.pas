unit UFrmListInputDocsHz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmDocInpList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBQuery, pFIBQuery, pFIBStoredProc, cxPropertiesStore,
  RzForms, frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Menus, StdCtrls, ComCtrls,
  ToolWin, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, RzButton,
  RzPanel, ExtCtrls, RzStatus;

type
  TFrmListInputDocsHz = class(TFrmListInputDocs)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListInputDocsHz: TFrmListInputDocsHz;

implementation

{$R *.dfm}

end.
