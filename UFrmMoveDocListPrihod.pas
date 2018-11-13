unit UFrmMoveDocListPrihod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMoveDocList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBDatabase, pFIBDatabase, FIBQuery, pFIBQuery,
  pFIBStoredProc, FIBDataSet, pFIBDataSet, cxPropertiesStore, RzForms,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  Menus, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls,
  RzStatus, ComCtrls, ToolWin;

type
  TFrmMoveDocListPrihod = class(TFrmMoveDocList)
    procedure BtnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMoveDocListPrihod: TFrmMoveDocListPrihod;

implementation

{$R *.dfm}
uses
  uDocClass,udm,upublic;

procedure TFrmMoveDocListPrihod.BtnEditClick(Sender: TObject);
var
  key : integer;
begin
  key:=dsMoveDocsListF_ID.Value;
  with TMoveDoc.Create(key) do
  begin
    doc_type:=3;
    OpenEditFrm;
  end;
end;
end.
