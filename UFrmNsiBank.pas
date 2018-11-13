unit UFrmNsiBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  RzStatus, cxPropertiesStore, RzForms, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode,
  frxDCtrl, frxDesgn, frxFIBComponents;

type
  TFrmNsiBank = class(TFrmPrototype)
    srNsiBanks: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsNsiBanks: TpFIBDataSet;
    dsNsiBanksF_ID: TFIBBCDField;
    dsNsiBanksF_NAME: TFIBStringField;
    dsNsiBanksF_U_NAME: TFIBStringField;
    dsNsiBanksF_U_ADDRES: TFIBStringField;
    dsNsiBanksF_INN: TFIBStringField;
    dsNsiBanksF_KPP: TFIBStringField;
    dsNsiBanksF_K_SCH: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_U_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_U_ADDRES: TcxGridDBColumn;
    cxGrid1DBTableView1F_INN: TcxGridDBColumn;
    cxGrid1DBTableView1F_KPP: TcxGridDBColumn;
    cxGrid1DBTableView1F_K_SCH: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiBank: TFrmNsiBank;

implementation

{$R *.dfm}
uses
  udm,uPublic,UFrmNsiBankEdit;

procedure TFrmNsiBank.BtnNewClick(Sender: TObject);
begin
  inherited;
  with TFrmNsiBankEdit.Create(self) do
  begin
    dsNsiBakEdit.ParamByName('F_BANK_ID').value:=-10;
    if ShowAsDialog then
      RefreshDs(dsNsiBanks);
    free;
  end;
end;

procedure TFrmNsiBank.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  with TFrmNsiBankEdit.Create(self) do
  begin
    dsNsiBakEdit.ParamByName('F_BANK_ID').Value:=dsNsiBanksF_ID.Value;
    if ShowAsDialog then
      RefreshDs(dsNsiBanks);
    free;
  end;
end;

end.
