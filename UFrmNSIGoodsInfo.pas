unit UFrmNSIGoodsInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, cxCheckBox, cxSpinEdit;

type
  TFrmNSIGoodsInfo = class(TFrmPrototype)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsNsiGoodsInfo: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    dsNsiGoodsInfoF_ID: TFIBBCDField;
    dsNsiGoodsInfoF_NAME: TFIBStringField;
    dsNsiGoodsInfoF_MULTI: TFIBSmallIntField;
    srNsiGoodsInfo: TDataSource;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_MULTI: TcxGridDBColumn;
    dsNSIGoodInfoSTR: TpFIBDataSet;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    srNSIGoodInfoSTR: TDataSource;
    dsNSIGoodInfoSTRF_ID: TFIBBCDField;
    dsNSIGoodInfoSTRF_NSI_GOODS_INFO: TFIBBCDField;
    dsNSIGoodInfoSTRF_ORDER: TFIBBCDField;
    dsNSIGoodInfoSTRF_VALUE: TFIBStringField;
    cxGrid1DBTableView2F_ID: TcxGridDBColumn;
    cxGrid1DBTableView2F_NSI_GOODS_INFO: TcxGridDBColumn;
    cxGrid1DBTableView2F_ORDER: TcxGridDBColumn;
    cxGrid1DBTableView2F_VALUE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNSIGoodsInfo: TFrmNSIGoodsInfo;

implementation

uses
  udm,upublic;
{$R *.dfm}

end.
