unit UFrmListBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmDocInpList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBQuery, pFIBQuery, pFIBStoredProc, cxPropertiesStore,
  RzForms, frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Menus, StdCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls,
  RzStatus, ComCtrls, ToolWin;

type
  TFrmListBack = class(TFrmListInputDocs)
    PopupMenuNewDoc: TPopupMenu;
    NOptBack: TMenuItem;
    NRoznBack: TMenuItem;
    procedure BtnNewDDClick(Sender: TObject);
    procedure NOptBackClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmListBack: TFrmListBack;

implementation
  uses
    uDocClass;
{$R *.dfm}

procedure TFrmListBack.BtnNewDDClick(Sender: TObject);
begin
  BtnPrint.Down:=true;
end;

procedure TFrmListBack.NOptBackClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  inherited;
  with TInputDoc.Create(key) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

end.
