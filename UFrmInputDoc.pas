unit UFrmInputDoc;

interface

uses
  UMy_types,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, Grids, DBGrids, RzDBGrid,
  StdCtrls, RzCmboBx, RzDBCmbo, Mask, RzEdit, RzDBEdit, uDm, FIBDatabase,
  pFIBDatabase, DB, FIBDataSet, pFIBDataSet, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, RzLabel, DBCtrls, RzDBBnEd, cxButtonEdit,
  cxDBLookupComboBox, cxLabel, frxClass, frxFIBComponents, frxBarcode,
  frxExportXLS, frxExportPDF, Menus, RzStatus, frxDesgn, frxExportRTF,
  frxExportXML, frxExportHTML, frxCross, frxDCtrl, RzForms, FIBQuery, pFIBQuery,
  pFIBStoredProc, cxPropertiesStore, cxCurrencyEdit, cxImage, cxContainer,
  cxDBEdit, cxCalc, cxImageComboBox;

type
  TFrmInputDoc = class(TFrmPrototype)
    RzPanel1: TRzPanel;
    dsDocHead: TpFIBDataSet;
    srDocHead: TDataSource;
    pFIBTransaction: TpFIBTransaction;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    dsDocHeadF_SKLAD: TFIBBCDField;
    dsDocHeadF_PARTNER: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_STATE: TFIBBCDField;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDocHeadF_PARTNER_NAME: TFIBStringField;
    dsDocStrings: TpFIBDataSet;
    srDocStrings: TDataSource;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_IN: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    dsGoodsSource: TpFIBDataSet;
    srGoodsSource: TDataSource;
    dsGoodsSourceF_ID: TFIBBCDField;
    dsGoodsSourceF_NAME: TFIBStringField;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzLabel5: TRzLabel;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_NAME: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    RzDBButtonEdit3: TRzDBButtonEdit;
    RzLabel6: TRzLabel;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    RzDBButtonEdit1: TRzDBButtonEdit;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    dsCopy2Price: TpFIBDataSet;
    BtnSetPrice: TButton;
    spSetPrise: TpFIBStoredProc;
    dsCopy2Move: TpFIBDataSet;
    PopupMenuExecute: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dsDocHeadF_DOC_IN: TFIBBCDField;
    cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn;
    N3: TMenuItem;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn;
    cxGrid1DBTableView1F_OLD_PRICE_VAL: TcxGridDBColumn;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_DOC_IN: TFIBBCDField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_OLD_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_CNT: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsDocStringsF_SCANCODE: TFIBStringField;
    dsDocStringsF_PICTURE: TFIBStringField;
    dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1F_ICON: TcxGridDBColumn;
    dsDocStringsF_ICON: TFIBBCDField;
    dsDocStringsF_SKLAD_OST: TFIBFloatField;
    cxGrid1DBTableView1F_SKLAD_OST: TcxGridDBColumn;
    dsDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    dsDocStringsF_NSI_GOOD_INFO: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn;
    dsDocHeadF_DOC_TYPE: TFIBBCDField;
    dsDocHeadF_DOC_SUM: TFIBBCDField;
    procedure BtnOKClick(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsDocStringsBeforePost(DataSet: TDataSet);
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnExecuteClick(Sender: TObject);
    procedure BtnSetPriceClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dsDocStringsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    scan  : string;
    scan_time : ttime;
  public
    { Public declarations }
    procedure InsPosition;
    procedure CalcFields(Afield : TField; AValue : string);
  end;

var
  FrmInputDoc: TFrmInputDoc;

implementation
  uses upublic,uDlgCopyDoc2Price,uDocClass, UTypes;
{$R *.dfm}

procedure TFrmInputDoc.BtnExecuteClick(Sender: TObject);
begin
  BtnExecute.Down:=true;
end;

procedure TFrmInputDoc.BtnOKClick(Sender: TObject);
begin
  PostAllDS(Self,true);
  refreshDs(dsDocStrings);
  inherited;
end;

procedure TFrmInputDoc.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsDocStrings,CalcFields);
end;

procedure TFrmInputDoc.BtnSetPriceClick(Sender: TObject);
var
  price_id  : integer;
begin
  price_id:=0;
  price_id:=GetNsiPrice;
  if price_id>0 then
  begin
    spSetPrise.ParamByName('f_price').Value:=price_id;
    spSetPrise.ParamByName('f_doc').Value:=dsDocHeadF_DOC_IN.Value;
    spSetPrise.ExecProc;
    RefreshDs(DsDocstrings);
  end;
end;

procedure TFrmInputDoc.CalcFields(Afield :TField; AValue: string);
var
  val : string;
begin
  val:= IntToStr(Afield.Tag)+'='+ AValue;
  if pos(val,dsDocStringsF_NSI_GOOD_INFO.AsString)=0 then
  begin
    dsDocStringsF_NSI_GOOD_INFO.AsString:=
      dsDocStringsF_NSI_GOOD_INFO.AsString+val+#10;
  end;
end;

procedure TFrmInputDoc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index];
  end;

end;

procedure TFrmInputDoc.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if not dsDocStringsF_GOOD.IsNull then
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);
end;

procedure TFrmInputDoc.cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
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

procedure TFrmInputDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
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

procedure TFrmInputDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
    begin
      if (time()- scan_time)<0.000001 then
        scan:=scan+key
      ELSE
        scan:=key;
      scan_time:=time();
    end;
  end;
end;

procedure TFrmInputDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocHead.ParamByName('f_doc_in').Value:=dsDocHeadf_doc_in.Value;
  dsDocStrings.ParamByName('f_doc_in').Value:=dsDocHeadf_doc_in.Value;
  dsDocStrings.Active:=true;
end;

procedure TFrmInputDoc.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmInputDoc.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  dsDocStrings.Transaction.CommitRetaining;
  RefreshDs(DataSet,'f_good',dsDocStringsF_GOOD.Value);
  cxGrid1.SetFocus;
end;

procedure TFrmInputDoc.dsDocStringsBeforePost(DataSet: TDataSet);
var
  cnt : integer;
begin
  inherited;
  if (dsDocStringsF_GOOD.IsNull and not dsDocStringsF_GOOD_NAME.IsNull) then
  begin
{    dm.dsGood_ins.Active:=false;
    dm.dsGood_ins.ParamByName('f_name').Value:=dsDocStringsF_GOOD_NAME.Value;
    dm.dsGood_ins.ParamByName('f_article').Value:=dsDocStringsF_ARTICLE.Value;
    dm.dsGood_ins.Active:=true;
    dm.dsGood_ins.Transaction.CommitRetaining;}
    dsDocStringsF_GOOD.Value:=dm.InsExtGood(dsDocStringsF_ARTICLE.Value,dsDocStringsF_GOOD_NAME.Value,
      dsDocStringsF_GOOD_DOP_INFO.Value);
//    dm.dsGood_ins.FieldByName('f_id').Value;
    if not dsDocStringsF_scancode.IsNull then
    begin
      dm.dsImportScancode.Active:=false;
      dm.dsImportScancode.ParamByName('f_good').Value:=dsDocStringsF_GOOD.Value;
      dm.dsImportScancode.ParamByName('f_scancode').Value:=dsDocStringsF_scancode.value;
      dm.dsImportScancode.Active:=true;
      dm.dsImportScancode.Transaction.CommitRetaining;
    end;
    for cnt := 0 to dsDocStrings.FieldCount - 1 do
    begin
      if Copy(dsDocStrings.Fields[cnt].FieldName,1,2)='DF' then
      begin
        if dsDocStrings.Fields[cnt].AsString<>'' then
        begin
          dm.dsImportNsiGoodsDopInfo.Active:=false;
          dm.dsImportNsiGoodsDopInfo.ParamByName('P_GOOD').Value:=dsDocStringsF_GOOD.Value;
          dm.dsImportNsiGoodsDopInfo.ParamByName('P_GOOD_INFO').value:=dsDocStrings.Fields[cnt].Tag;
          dm.dsImportNsiGoodsDopInfo.ParamByName('P_GOOD_INFO_VAL').Value:=dsDocStrings.Fields[cnt].AsString;
          dm.dsImportNsiGoodsDopInfo.Active:=true;
          dm.dsImportNsiGoodsDopInfo.Transaction.CommitRetaining;
        end;
      end;
    end;
  end;
end;


procedure TFrmInputDoc.dsDocStringsCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('f_NSI_GOOD_INFO').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    if v_val.Names[i] <>'' then
      DataSet.FieldByName('DF_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
end;

procedure TFrmInputDoc.FormCreate(Sender: TObject);
var
  tf: TStringField;
begin
  inherited;
  dm.dsNsiGoodsDopInfo.Active:=false;
  dm.dsNsiGoodsDopInfo.Active:=true;
  dm.dsNsiGoodsDopInfo.First;
  while not dm.dsNsiGoodsDopInfo.eof do
  begin
    tf:=TStringField.Create(dsDocStrings);
    tf.Calculated:=true;
    tf.Index:=dsDocStrings.FieldCount;
    tf.FieldName:='DF_'+dm.dsNsiGoodsDopInfo.FieldByName('f_id').AsString;
    tf.DisplayLabel:=dm.dsNsiGoodsDopInfo.FieldByName('f_name').AsString;
    tf.tag:=dm.dsNsiGoodsDopInfo.FieldByName('f_id').AsInteger;
    tf.DataSet:=dsDocStrings;
    with cxGrid1DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
      Caption:=dm.dsNsiGoodsDopInfo.FieldByName('f_name').AsString;
    end;
    dm.dsNsiGoodsDopInfo.Next;
  end;
  self.RestoreState;  
end;

procedure TFrmInputDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
//  goods:=GetNsiGood(date(),scan);
  goods:=GetNsiGood(dsDocHeadF_DATE.Value,scan,dsDocHeadF_SKLAD.Value,dsDocHeadF_PRICE.Value);
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

procedure TFrmInputDoc.N1Click(Sender: TObject);
begin
  with TdlgCopyDoc2Price.Create(Application.MainForm) do
  begin
    if ShowModal=mrok then
    begin
      dsDocHead.Transaction.CommitRetaining;
      dsCopy2Price.Active:=false;
      dsCopy2Price.ParamByName('f_doc_in').Value:=dsDocHeadf_doc_in.Value;
      dsCopy2Price.ParamByName('F_CHANGE_PRICE').Value:=edNacenka.Value;
      dsCopy2Price.ParamByName('F_PRICE').Value:=EdPrice.KeyValue;
      dsCopy2Price.Active:=true;
      dsCopy2Price.Transaction.CommitRetaining;
      if ChckOpenDoc.Checked then
        ShowDocPrice(dsCopy2Price.FieldByName('f_doc_price').asInteger);
    end;
    free;
  end;
end;

procedure TFrmInputDoc.N2Click(Sender: TObject);
var
  Key : integer;
begin
      dsDocHead.Transaction.CommitRetaining;
      dsCopy2Move.Active:=false;
      dsCopy2Move.ParamByName('f_doc_in').Value:=dsDocHeadf_doc_in.Value;
      dsCopy2Move.Active:=true;
      dsCopy2Move.Transaction.CommitRetaining;
      key:=dsCopy2Move.FieldByName('f_move_doc').asInteger;
      with TMoveDoc.Create(key) do
      begin
        OpenEditFrm;
      end;
end;

procedure TFrmInputDoc.N3Click(Sender: TObject);
var
  grp_id : integer;
  i      : integer;
begin
  inherited;
  grp_id:=GetGoodsGrp;
  if grp_id>0 then
  begin
    dsDocStrings.DisableControls;
    dsDocStrings.First;
    while not dsDocStrings.Eof do
    begin
      for I := 0 to dm.spUpdateGood.ParamCount - 1 do
        dm.spUpdateGood.Params[i].Clear;
      dm.spUpdateGood.ParamByName('f_id').Value:=dsDocStringsf_good.Value;
      dm.spUpdateGood.ParamByName('F_GOODS_GRP').Value:=grp_id;
      dm.spUpdateGood.ExecProc;
      dm.spUpdateGood.Transaction.CommitRetaining;
      dsDocStrings.Next;
    end;
    dsDocStrings.EnableControls;
  end;
end;

procedure TFrmInputDoc.RzDBButtonEdit1ButtonClick(Sender: TObject);
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

procedure TFrmInputDoc.RzDBButtonEdit2ButtonClick(Sender: TObject);
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

procedure TFrmInputDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
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
