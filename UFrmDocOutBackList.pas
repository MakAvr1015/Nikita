unit UFrmDocOutBackList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmDocOutList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBQuery, pFIBQuery, pFIBStoredProc, cxPropertiesStore,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls, RzStatus,
  ComCtrls, ToolWin, cxCheckBox;

type
  TFrmDocOutBackList = class(TFrmDocOutList)
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocOutBackList: TFrmDocOutBackList;

implementation

{$R *.dfm}
uses
  udm,uDocClass,uPublic;

procedure TFrmDocOutBackList.BtnEditClick(Sender: TObject);
var
  key : integer;
begin

  key:=dsDocListF_doc_out.Value;
  with TOutDoc.Create(key) do
  begin
    doc_type:=3;
    OpenEditFrm;
  end;
end;

procedure TFrmDocOutBackList.BtnNewClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  with TOutDoc.Create(key) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

end.
