unit UFrmDocView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit, cxLabel,
  cxDBLabel, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit, RzDBEdit, RzLabel,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxImage, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Grids, DBGrids, RzDBGrid, cxTextEdit;

type
  TFrmDocView = class(TFrmPrototype)
    pFIBTransaction: TpFIBTransaction;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    srDocHead: TDataSource;
    dsDocHead: TpFIBDataSet;
    dsDocHeadF_SKLAD: TFIBBCDField;
    dsDocHeadF_PARTNER: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_PARTNER_NAME: TFIBStringField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_NAME: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocHeadF_SKIDKA: TFIBIntegerField;
    dsDocHeadF_PAY_SUM: TFIBBCDField;
    dsDocHeadF_DOC_SUM: TFIBBCDField;
    dsDocHeadF_PAYDATE_PLAN: TFIBDateField;
    dsDocHeadF_DOC_OUT: TFIBBCDField;
    dsDocHeadF_TYPE: TFIBBCDField;
    dsDocHeadF_PROPERTY_1: TFIBStringField;
    dsDocStrings: TpFIBDataSet;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_DOC_OUT: TFIBBCDField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_CNT: TFIBFloatField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsDocStringsF_SKLAD_OST: TFIBFloatField;
    dsDocStringsF_SKIDKA: TFIBBCDField;
    dsDocStringsF_DESCR: TFIBStringField;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_PRICE_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    dsDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    srDocStrings: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1F_DOC_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dsDocStringsF_PICTURE: TFIBBlobField;
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocView: TFrmDocView;

implementation

{$R *.dfm}
uses
  udm;

procedure TFrmDocView.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  dsDocStrings.ParamByName('f_doc_out').Value:=dsDocHeadf_doc_out.Value;
  dsDocStrings.Active:=true;

end;

end.
