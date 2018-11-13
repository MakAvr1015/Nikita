unit uFrmDocOutListHz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmDocOutList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCheckBox, FIBQuery, pFIBQuery, pFIBStoredProc,
  cxPropertiesStore, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet,
  RzForms, frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  Menus, ComCtrls, ToolWin, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, RzButton,
  RzPanel, ExtCtrls, RzStatus;

type
  TFrmDocOutListHz = class(TFrmDocOutList)
    procedure BtnNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocOutListHz: TFrmDocOutListHz;

implementation
  uses
    UDocClass;
{$R *.dfm}

procedure TFrmDocOutListHz.BtnNewClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
//  inherited;
  with TOutDoc.Create(key) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

end.
