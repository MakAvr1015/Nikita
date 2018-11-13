unit UFrmInDocBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel, ExtCtrls, RzStatus, DB,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzDBBnEd, RzDBEdit, DBCtrls, RzDBCmbo,
  StdCtrls, Mask, RzEdit, RzLabel;

type
  TFrmInDocBack = class(TFrmPrototype)
    pFIBTransaction: TpFIBTransaction;
    dsCopy2Price: TpFIBDataSet;
    srGoodsSource: TDataSource;
    dsGoodsSource: TpFIBDataSet;
    dsGoodsSourceF_ID: TFIBBCDField;
    dsGoodsSourceF_NAME: TFIBStringField;
    srDocStrings: TDataSource;
    dsDocStrings: TpFIBDataSet;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    dsDocStringsF_CNT: TFIBFloatField;
    dsDocStringsF_SUM: TFIBFloatField;
    dsDocStringsF_DOC_IN: TFIBBCDField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_PRICE_VAL: TFIBFloatField;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsDocStringsF_SCANCODE: TFIBStringField;
    srStateSource: TDataSource;
    dsStateSource: TpFIBDataSet;
    dsStateSourceF_ID: TFIBBCDField;
    dsStateSourceF_NAME: TFIBStringField;
    dsStateSourceF_PARENT: TFIBBCDField;
    srDocHead: TDataSource;
    dsDocHead: TpFIBDataSet;
    dsDocHeadDOC_ID: TFIBBCDField;
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
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_IN: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    scan  : string;
  public
    { Public declarations }
  end;

var
  FrmInDocBack: TFrmInDocBack;

implementation
uses
 udm,upublic;
{$R *.dfm}

procedure TFrmInDocBack.BtnOKClick(Sender: TObject);
begin
  PostAllDS(Self,true);
  refreshDs(dsDocStrings);
  inherited;
end;

procedure TFrmInDocBack.BtnOpenClick(Sender: TObject);
begin
  inherited;
  DsDocstrings.OnNewRecord:=nil;
  StartImport(@dsDocStrings);
  DsDocstrings.OnNewRecord:=dsDocStringsNewRecord;
end;

procedure TFrmInDocBack.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key<>Char(13)) then
  begin
    scan:=scan+key;
  end
  else
  begin
    dm.dsGetGoodByScan.Active:=false;
    dm.dsGetGoodByScan.ParamByName('scan').Value:=scan;
    dm.dsGetGoodByScan.Active:=true;
    if (not dm.dsGetGoodByScanF_ID.IsNull) then
    begin
      dsDocStrings.Insert;
    end;
    scan:='';
  end;
end;

procedure TFrmInDocBack.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocHead.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.Active:=true;
end;

end.
