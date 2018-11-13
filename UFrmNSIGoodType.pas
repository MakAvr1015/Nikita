unit UFrmNSIGoodType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  FIBDataSet, FIBDatabase, pFIBDatabase, pFIBDataSet;

type
  TFrmNSIGoodType = class(TFrmPrototype)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsListTypeGoods: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    dsListTypeGoodsF_ID: TFIBBCDField;
    dsListTypeGoodsF_NAME: TFIBStringField;
    dsListTypeGoodsF_CHECK_OST: TFIBSmallIntField;
    dsListTypeGoodsF_COMPL: TFIBSmallIntField;
    srListTypeGoods: TDataSource;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_CHECK_OST: TcxGridDBColumn;
    cxGrid1DBTableView1F_COMPL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNSIGoodType: TFrmNSIGoodType;

implementation

{$R *.dfm}
  uses
    udm, uPublic;

procedure TFrmNSIGoodType.FormCreate(Sender: TObject);
begin
  inherited;
  dsListTypeGoods.Active:=true;
end;

end.
