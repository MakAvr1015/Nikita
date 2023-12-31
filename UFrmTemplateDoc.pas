unit UFrmTemplateDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, RzDBEdit, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit,
  RzLabel, RzPanel, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, RzButton, ExtCtrls, RzStatus, FIBDataSet,
  pFIBDataSet, cxImage, RzDBBnEd, FIBDatabase, pFIBDatabase, cxContainer,
  cxDBEdit;

type
  TFrmTemplateDoc = class(TFrmPrototype)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    srDocStrings: TDataSource;
    dsDocStrings: TpFIBDataSet;
    dsDocHead: TpFIBDataSet;
    srDocHead: TDataSource;
    RzLabel6: TRzLabel;
    RzDBButtonEdit3: TRzDBButtonEdit;
    dsDocHeadDOC_ID: TFIBBCDField;
    dsDocHeadF_DOC_MOVE: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocStringsF_ID: TFIBBCDField;
    dsDocStringsF_DOC_TEMPLATE: TFIBBCDField;
    dsDocStringsF_GOOD_NAME: TFIBStringField;
    dsDocStringsF_GOOD_DOP_INFO: TFIBStringField;
    dsDocStringsF_SCANCODE: TFIBStringField;
    dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsDocStringsF_ED_IZM_NAME: TFIBStringField;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsDocStringsF_GOOD: TFIBBCDField;
    dsDocStringsF_CNT: TFIBBCDField;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_TEMPLATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn;
    cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    dsDocStringsF_OST_SKLAD_DEF: TFIBBCDField;
    cxGrid1DBTableView1F_OST_SKLAD_DEF: TcxGridDBColumn;
    dsDocStringsF_DESCR: TFIBStringField;
    cxGrid1DBTableView1F_DESCR: TcxGridDBColumn;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    srGoodPhoto: TDataSource;
    dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField;
    cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    dsDocStringsF_OST: TFIBStringField;
    cxGrid1DBTableView1F_OST: TcxGridDBColumn;
    procedure RzDBButtonEdit3ButtonClick(Sender: TObject);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsDocStringsBeforePost(DataSet: TDataSet);
    procedure BtnRefreshClick(Sender: TObject);
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
    procedure BtnExecuteClick(Sender: TObject);
  private
    { Private declarations }
    scan  : string;
    scan_time : TTime;
    procedure InsPosition;
  public
    { Public declarations }
  end;

var
  FrmTemplateDoc: TFrmTemplateDoc;

implementation

{$R *.dfm}
uses
  uDm,uPublic, UTypes;
procedure TFrmTemplateDoc.BtnExecuteClick(Sender: TObject);
begin

  if MessageDlg('�������� ���� ����� ��� �������?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    dsDocStrings.DisableControls;
    dsDocStrings.First;
    while not dsDocStrings.Eof do
    begin
      dm.spSetGoodCh_Date.ParamByName('P_GOOD').Value:=dsDocStrings.FieldByName('F_GOOD').Value;
      dm.spSetGoodCh_Date.ExecProc;
      dsDocStrings.Next;
    end;
    dsDocStrings.EnableControls;
    dm.spSetGoodCh_Date.Transaction.CommitRetaining;
    MessageDlg('����� ������� ��� �������',mtInformation,[],0)
  end;
end;

procedure TFrmTemplateDoc.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsDocStrings);
end;

procedure TFrmTemplateDoc.BtnRefreshClick(Sender: TObject);
begin
  RefreshDs(dsDocStrings,'F_ID',dsDocStringsF_ID.AsInteger);
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_GOOD_GRP_COLOR.Index];
  end;

  if ((AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_OST_SKLAD_DEF.Index]<0)
    and (AviewInfo.Item.Name='cxGrid1DBTableView1F_CNT')
  )then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if not dsDocStringsF_GOOD.IsNull then
    ShowNsiGoodEdit(dsDocStringsF_GOOD.AsInteger);
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1DragDrop(Sender, Source: TObject;
  X, Y: Integer);
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

procedure TFrmTemplateDoc.cxGrid1DBTableView1DragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')<>nil then
    begin
      Accept:=true;
    end;
  end;
end;

procedure TFrmTemplateDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
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

procedure TFrmTemplateDoc.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocHead.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.Active:=true;
end;

procedure TFrmTemplateDoc.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmTemplateDoc.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  dsDocStrings.Transaction.CommitRetaining;
  RefreshDs(DataSet,'f_good',dsDocStringsF_GOOD.Value);
  cxGrid1.SetFocus;

end;

procedure TFrmTemplateDoc.dsDocStringsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (dsDocStringsF_GOOD.IsNull and not dsDocStringsF_ARTICLE.IsNull) then
  begin
{    dm.dsGood_ins.Active:=false;
    dm.dsGood_ins.ParamByName('f_name').Value:=dsDocStringsF_GOOD_NAME.Value;
    dm.dsGood_ins.ParamByName('f_article').Value:=dsDocStringsF_ARTICLE.Value;
    dm.dsGood_ins.Active:=true;
    dm.dsGood_ins.Transaction.CommitRetaining;
    dsDocStringsF_GOOD.Value:=dm.dsGood_ins.FieldByName('f_id').Value; }
    dsDocStringsF_GOOD.Value:=dm.InsExtGood(dsDocStringsF_ARTICLE.AsString,dsDocStringsF_GOOD_NAME.AsString,
      '');
    if not dsDocStringsF_scancode.IsNull then
    begin
      dm.dsImportScancode.Active:=false;
      dm.dsImportScancode.ParamByName('f_good').Value:=dsDocStringsF_GOOD.Value;
      dm.dsImportScancode.ParamByName('f_scancode').Value:=dsDocStringsF_scancode.value;
      dm.dsImportScancode.Active:=true;
      dm.dsImportScancode.Transaction.CommitRetaining;
    end;
  end;
end;

procedure TFrmTemplateDoc.dsDocStringsCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('f_ost').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    DataSet.FieldByName('Sklad_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
end;

procedure TFrmTemplateDoc.FormCreate(Sender: TObject);
var
  tf: tfloatfield;
begin
  inherited;
  dm.dsSklad.First;

  while not dm.dsSklad.Eof do
  begin
    tf:=TFloatField.Create(dsDocStrings);
    tf.Calculated:=true;
    tf.Index:=dsDocStrings.FieldCount;
    tf.FieldName:='Sklad_'+dm.dsSklad.FieldByName('f_id').AsString;
    tf.tag:=dm.dsSklad.FieldByName('f_id').AsInteger;
    tf.DataSet:=dsDocStrings;
    with cxGrid1DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
      Summary.FooterKind:=skSum;
      Caption:=dm.dsSklad.FieldByName('f_name').AsString;
    end;
    dm.dsSklad.Next;
  end;
end;

procedure TFrmTemplateDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
//  showMessage(scan);
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
procedure TFrmTemplateDoc.RzDBButtonEdit3ButtonClick(Sender: TObject);
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
