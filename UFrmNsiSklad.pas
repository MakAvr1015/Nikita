unit UFrmNsiSklad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FIBDataSet, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, FIBDatabase, pFIBDatabase, pFIBDataSet,
  Menus, RzStatus, cxPropertiesStore, RzForms, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode,
  frxDCtrl, frxDesgn, frxFIBComponents;

type
  TFrmNsiSklad = class(TFrmPrototype)
    dsNsiSklad: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    srNsiSklad: TDataSource;
    dsNsiSkladF_ID: TFIBBCDField;
    dsNsiSkladF_NAME: TFIBStringField;
    dsNsiSkladF_ADDRES: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_ADDRES: TcxGridDBColumn;
    dsNsiSkladF_PREFIX: TFIBStringField;
    dsNsiSkladF_DEBET: TFIBBCDField;
    dsNsiSkladF_CREDET: TFIBBCDField;
    cxGrid1DBTableView1F_PREFIX: TcxGridDBColumn;
    cxGrid1DBTableView1F_DEBET: TcxGridDBColumn;
    cxGrid1DBTableView1F_CREDET: TcxGridDBColumn;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
  private
    { Private declarations }
    procedure EditSklad(f_id : integer);
  public
    { Public declarations }
  end;

var
  FrmNsiSklad: TFrmNsiSklad;

implementation

{$R *.dfm}
uses
  udm,upublic,UFrmNsiSkladEdit;

procedure TFrmNsiSklad.BtnEditClick(Sender: TObject);
begin
  inherited;
  EditSklad(dsNsiSkladF_ID.Value);
end;

procedure TFrmNsiSklad.BtnNewClick(Sender: TObject);
begin
  inherited;
  EditSklad(-10);
end;

procedure TFrmNsiSklad.EditSklad(f_id: integer);
begin
  with TFrmNsiSkladEdit.Create(self) do
  begin
    dsEditSklad.ParamByName('sklad_id').Value:=f_id;
    if ShowAsDialog then
      RefreshDs(dsNsiSklad);
    free;
  end;
end;

end.
