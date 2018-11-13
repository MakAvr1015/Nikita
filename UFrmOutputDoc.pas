unit UFrmOutputDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLabel, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, RzDBBnEd, RzDBEdit, DBCtrls, RzDBCmbo,
  StdCtrls, Mask, RzEdit, RzLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, frxExportXML, frxClass, frxExportPDF, frxFIBComponents, frxBarcode,
  Menus, RzStatus, frxExportRTF, frxExportXLS, frxExportHTML, frxCross,
  frxDCtrl, frxDesgn, RzTabs, RzForms, cxButtonEdit, FIBQuery, pFIBQuery,
  pFIBStoredProc, RzSpnEdt, RzDBSpin, cxPropertiesStore, cxImage, cxContainer,
  cxCheckBox, cxDBEdit, cxTextEdit, cxCurrencyEdit;

type
  TFrmOutputDoc = class(TFrmPrototype)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
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
    dsDocStrings: TpFIBDataSet;
    srDocStrings: TDataSource;
    srDocHead: TDataSource;
    pFIBTransaction: TpFIBTransaction;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_DOC_OUT: TFIBBCDField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_CNT: TFIBFloatField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    cxGrid1DBTableView1F_DOC_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    dsDocStringsF_SKLAD_OST: TFIBFloatField;
    cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    dsPaymentsList: TpFIBDataSet;
    srPaymentsList: TDataSource;
    dsPaymentsListF_ID: TFIBBCDField;
    dsPaymentsListF_DOC: TFIBBCDField;
    dsPaymentsListF_MONEY: TFIBBCDField;
    dsPaymentsListF_SUMMA: TFIBFloatField;
    dsPaymentsListF_DOC_INFO: TFIBStringField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1F_ID: TcxGridDBColumn;
    cxGrid2DBTableView1F_DOC: TcxGridDBColumn;
    cxGrid2DBTableView1F_MONEY: TcxGridDBColumn;
    cxGrid2DBTableView1F_SUMMA: TcxGridDBColumn;
    cxGrid2DBTableView1F_DOC_INFO: TcxGridDBColumn;
    spMakePayDoc: TpFIBStoredProc;
    BtnMakePay: TButton;
    dsDocHeadF_SKIDKA: TFIBIntegerField;
    RzLabel7: TRzLabel;
    RzDBSpinEdit1: TRzDBSpinEdit;
    dsDocStringsF_SKIDKA: TFIBBCDField;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn;
    dsDocHeadF_PAY_SUM: TFIBBCDField;
    dsDocHeadF_DOC_SUM: TFIBBCDField;
    dsDocHeadF_PAYDATE_PLAN: TFIBDateField;
    RzLabel8: TRzLabel;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    dsDocHeadF_DOC_OUT: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    chckType: TcxDBCheckBox;
    dsDocHeadF_TYPE: TFIBBCDField;
    dsDocHeadF_PROPERTY_1: TFIBStringField;
    dsDocStringsF_DESCR: TFIBStringField;
    cxGrid1DBTableView1F_DESCR: TcxGridDBColumn;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    dsDocStringsF_PICTURE: TFIBStringField;
    cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_PRICE_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    dsDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn;
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnOpenClick(Sender: TObject);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure BtnMakePayClick(Sender: TObject);
    procedure dsDocHeadAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure dsPaymentsListAfterDelete(DataSet: TDataSet);
    procedure RzDBSpinEdit1Exit(Sender: TObject);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dsDocStringsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    scan  : string;
    scan_time : TTime;
    procedure InsPosition;
  end;

var
  FrmOutputDoc: TFrmOutputDoc;

implementation

uses
  udm,upublic, UTypes;
{$R *.dfm}

procedure TFrmOutputDoc.BtnMakePayClick(Sender: TObject);
var
  pay_sum : string;
begin
  pay_sum:=floatToStr(dsDocHeadF_DOC_SUM.AsFloat-dsDocHeadF_PAY_SUM.AsFloat);
  if InputQuery('','Сумма оплаты',pay_sum) then
  begin
    spMakePayDoc.ParamByName('f_doc_id').Value:=dsDocHeadF_DOC_OUT.Value;
    spMakePayDoc.ParamByName('f_sum').Value:=pay_sum;
    spMakePayDoc.ExecProc;
    refreshDs(dsDocHead);
    refreshDs(dsPaymentsList);
  end;
end;

procedure TFrmOutputDoc.BtnOKClick(Sender: TObject);
begin
  PostAllDS(Self,true);
  refreshDs(dsDocStrings);
  inherited;
end;

procedure TFrmOutputDoc.BtnOpenClick(Sender: TObject);
begin
  StartImport(@dsDocStrings);
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_CNT' then
  begin
    cxGrid1DBTableView1F_CNT.Options.Editing:=true;
  end
  else
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_PRICE_VAL' then
  begin
    cxGrid1DBTableView1F_PRICE_VAL.Options.Editing:=true;
  end
  else
  if ACellViewInfo.Item.Name='cxGrid1DBTableView1F_DESCR' then
  begin
    cxGrid1DBTableView1F_DESCR.Options.Editing:=true;
  end
  else
  begin
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index];
  end;

  if ((AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_sklad_OST.Index]<0)
    and (AviewInfo.Item.Name='cxGrid1DBTableView1F_CNT')
  )then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  with TcxDragControlObject(Source) do
  begin
    if Control is TcxGridSite then
      with TcxGridSite(Control) do
      begin
        DragDropGood(TcxGridDBTableView(GridView),dsDocStrings);
      end;
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')<>nil then
    begin
      Accept:=true;
    end;
  end;
end;

procedure TFrmOutputDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
    begin
      if (time()- scan_time)<0.0001 then
        scan:=scan+key
      ELSE
        scan:=key;
      scan_time:=time();
    end;
  end;
end;


procedure TFrmOutputDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  dsDocHead.ParamByName('f_doc_out').Value:=dsDocHeadf_doc_out.Value;
  dsDocStrings.ParamByName('f_doc_out').Value:=dsDocHeadf_doc_out.Value;
  dsDocStrings.Active:=true;
  dsPaymentsList.Active:=true;
end;

procedure TFrmOutputDoc.dsDocHeadAfterPost(DataSet: TDataSet);
begin
  inherited;
  refreshDs(dsDocStrings);
end;

procedure TFrmOutputDoc.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmOutputDoc.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  cxGrid1DBTableView1F_CNT.Options.Editing:=false;
  cxGrid1DBTableView1F_PRICE_VAL.Options.Editing:=false;
  cxGrid1DBTableView1F_DESCR.Options.Editing:=false;
  dsDocStrings.Transaction.CommitRetaining;
  RefreshDs(DataSet,'F_GOOD',dsDocStringsF_GOOD.Value);
  cxGrid1.SetFocus;
end;


procedure TFrmOutputDoc.dsDocStringsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cxGrid1DBTableView1F_CNT.Options.Editing:=false;
  cxGrid1DBTableView1F_PRICE_VAL.Options.Editing:=false;
  cxGrid1DBTableView1F_DESCR.Options.Editing:=false;

end;

procedure TFrmOutputDoc.dsPaymentsListAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid2.SetFocus;
end;

procedure TFrmOutputDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
  goods:=GetNsiGood(dsDocHeadF_DATE.Value,scan,dsDocHeadF_SKLAD.Value,dsDocHeadF_PRICE.AsInteger);
  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      dsDocStrings.Insert;
      dsDocStringsF_GOOD.Value:=goods[i];
      dsDocStrings.Post;
      cxGrid1DBTableView1.DataController.SelectRows(
        cxGrid1DBTableView1.DataController.FocusedRowIndex,
        cxGrid1DBTableView1.DataController.FocusedRowIndex);

    end;
  end
  else
  begin
    beep;
  end;
  scan:='';
end;

procedure TFrmOutputDoc.RzDBButtonEdit1ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_PARTNER.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmOutputDoc.RzDBButtonEdit2ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiSklad;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_SKLAD.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmOutputDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPrice;
  if (key>0) then
  begin
    dsDocHead.Edit;
    dsDocHeadF_PRICE.Value:=key;
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocStrings);
  end;
end;

procedure TFrmOutputDoc.RzDBSpinEdit1Exit(Sender: TObject);
begin
  inherited;
  if dsDocHead.State=dsEdit then
  begin
    dsDocHead.Post;
    RefreshDs(dsDocHead);
    RefreshDs(dsDocStrings);
  end;
end;

end.
