unit UFrmOutDocBack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, RzTabs, RzDBBnEd, RzDBEdit, DBCtrls, RzDBCmbo,
  StdCtrls, Mask, RzEdit, RzLabel, cxLabel, cxContainer, cxImage, cxDBEdit;

type
  TFrmOutDocBack = class(TFrmPrototype)
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
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
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
    dsDocHeadF_SKIDKA: TFIBIntegerField;
    dsDocHeadF_PAY_SUM: TFIBBCDField;
    dsDocHeadF_DOC_SUM: TFIBBCDField;
    dsDocHeadF_PAYDATE_PLAN: TFIBDateField;
    srDocHead: TDataSource;
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
    srDocStrings: TDataSource;
    pFIBTransaction: TpFIBTransaction;
    spMakePayDoc: TpFIBStoredProc;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM_WO_SKIDKA: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_WO_SKIDKA: TcxGridDBColumn;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    dsGoodPhoto: TpFIBDataSet;
    Splitter1: TSplitter;
    srGoodPhoto: TDataSource;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_PRICE_WO_SKIDKA: TFIBFloatField;
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure dsDocHeadAfterPost(DataSet: TDataSet);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    scan  : string;
    procedure InsPosition;
  end;

var
  FrmOutDocBack: TFrmOutDocBack;

implementation

{$R *.dfm}
uses
  udm,upublic, UTypes;
procedure TFrmOutDocBack.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if not dsDocStringsF_GOOD.IsNull then
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);
end;

procedure TFrmOutDocBack.cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
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

procedure TFrmOutDocBack.cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
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

procedure TFrmOutDocBack.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
      scan:=scan+key;
  end;
end;

procedure TFrmOutDocBack.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  dsDocHead.ParamByName('F_DOC_OUT').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.ParamByName('F_DOC_OUT').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.Active:=true;
end;

procedure TFrmOutDocBack.dsDocHeadAfterPost(DataSet: TDataSet);
begin
  inherited;
  refreshDs(dsDocStrings);
end;

procedure TFrmOutDocBack.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmOutDocBack.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  RefreshDs(DataSet,'F_GOOD',dsDocStringsF_GOOD.Value);
  cxGrid1.SetFocus;
end;


procedure TFrmOutDocBack.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
  goods:=GetNsiGood(date(),scan);
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

procedure TFrmOutDocBack.RzDBButtonEdit1ButtonClick(Sender: TObject);
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

procedure TFrmOutDocBack.RzDBButtonEdit3ButtonClick(Sender: TObject);
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

end.
