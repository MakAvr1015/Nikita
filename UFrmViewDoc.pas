unit UFrmViewDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxLabel, cxCurrencyEdit, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, RzDBBnEd, RzDBEdit,
  DBCtrls, RzDBCmbo, Mask, RzEdit, RzLabel, cxContainer, cxDBLabel, FIBDatabase,
  pFIBDatabase, cxImage;

type
  TFrmViewDoc = class(TFrmPrototype)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsDocBody: TpFIBDataSet;
    dsDocHead: TpFIBDataSet;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    pFIBTransaction: TpFIBTransaction;
    dsDocHeadF_ID: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_SENDER_NAME: TFIBStringField;
    dsDocHeadF_RECIPIENT_NAME: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_TYPE_NAME: TFIBStringField;
    dsDocHeadF_TYPE: TFIBBCDField;
    srDocHead: TDataSource;
    srDocBody: TDataSource;
    dsDocBodyF_ID: TFIBBCDField;
    dsDocBodyF_GOOD: TFIBBCDField;
    dsDocBodyF_GOOD_NAME: TFIBStringField;
    dsDocBodyF_PRICE_VAL: TFIBBCDField;
    dsDocBodyF_CNT: TFIBBCDField;
    dsDocBodyF_SUM: TFIBBCDField;
    dsDocBodyf_article: TStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1f_article: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    dsDocBodyF_MEMO: TFIBBlobField;
    cxGrid1DBTableView1F_MEMO: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn;
    dsDocBodyF_SKLAD_OST: TBCDField;
    procedure dsDocHeadBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    P_doc_name: string;
    p_doc_id:   integer;

  end;

var
  FrmViewDoc: TFrmViewDoc;

implementation


uses
  uDm,uPublic, UTypes;

{$R *.dfm}

procedure TFrmViewDoc.dsDocHeadBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  (dataSet as TpFIBDataSet).ParamByName('f_name').Value:=p_doc_name;
  (dataSet as TpFIBDataSet).ParamByName('f_id').Value:=p_doc_id;
end;

end.
