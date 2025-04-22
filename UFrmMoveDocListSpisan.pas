unit UFrmMoveDocListSpisan;

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
  RzStatus, ComCtrls, ToolWin, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxShellDialogs;

type
  TFrmMoveDocListSpisan = class(TFrmMoveDocList)
    dsMoveDocsListF_DEFAULT_PROPERTY: TFIBStringField;
    cxGrid1DBTableView1F_DEFAULT_PROPERTY: TcxGridDBColumn;
    procedure BtnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMoveDocListSpisan: TFrmMoveDocListSpisan;

implementation

{$R *.dfm}
uses
 uDocClass,udm,upublic;


procedure TFrmMoveDocListSpisan.BtnEditClick(Sender: TObject);
var
  key : integer;
begin
  key:=dsMoveDocsListF_ID.Value;
  with TMoveDoc.Create(key) do
  begin
    doc_type:=2;
    OpenEditFrm;
  end;
end;

procedure TFrmMoveDocListSpisan.FormCreate(Sender: TObject);
var
  tf: TStringField;
begin
  AddInfoColumnDocs(cxGrid1DBTableView1);
  inherited;

end;

end.
