unit UFrmNsiGoods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FIBDataSet, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, FIBDatabase, pFIBDatabase, pFIBDataSet,
  cxTL, cxMaskEdit, cxInplaceContainer, cxDBTL, cxTLData, UFramNsiGoodsGrp,
  Menus, RzStatus, cxPropertiesStore, RzForms, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode,
  frxDCtrl, frxDesgn, frxFIBComponents,FileCtrl, FIBQuery, pFIBQuery,
  pFIBStoredProc, cxLabel, cxDBLabel, cxContainer, cxImage, cxDBEdit,
  RzShellDialogs, UFramGoodCard, DBClient, pFIBClientDataSet, uDm, Provider,
  StdCtrls, RzCmboBx, Mask, RzEdit, cxGridCardView, cxGridDBCardView;

type
  TFrmNsiGoods = class(TFrmPrototype)
    srNsiGoods: TDataSource;
    pFIBTransaction: TpFIBTransaction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOODS_GRP: TcxGridDBColumn;
    Panel1: TPanel;
    FramNsiGoodsGrp1: TFramNsiGoodsGrp;
    cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn;
    dsGetGoodByScan: TpFIBDataSet;
    dsGetGoodByScanF_NAME: TFIBStringField;
    dsGetGoodByScanF_GOODS_GRP: TFIBBCDField;
    dsGetGoodByScanF_ED_IZM: TFIBBCDField;
    dsGetGoodByScanF_ED_IZM_NAME: TFIBStringField;
    dsGetGoodByScanF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsGetGoodByScanF_SCANCODE: TFIBStringField;
    dsGetGoodByScanF_ARTICLE: TFIBStringField;
    popUpOpen: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Splitter2: TSplitter;
    RzSelectFolderDialog: TRzSelectFolderDialog;
    spImportPictures: TpFIBStoredProc;
    cxGrid1DBTableView1F_PICTURE: TcxGridDBColumn;
    FramGoodCard1: TFramGoodCard;
    cxGrid1DBTableView1F_COLOR: TcxGridDBColumn;
    dsGetGoodByScanF_GOOD: TFIBBCDField;
    RzToolbar1: TRzToolbar;
    RzEditFind: TRzEdit;
    cxGrid1DBTableView1F_DOP_INFO: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM: TcxGridDBColumn;
    cxGrid1DBTableView1F_ED_IZM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_MMEDIA: TcxGridDBColumn;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1F_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_GOODS_GRP: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_ARTICLE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_ED_IZM_SHORT_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_DOP_INFO: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_ED_IZM: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_ED_IZM_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_PICTURE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_COLOR: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_GOOD: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_MMEDIA: TcxGridDBCardViewRow;
    BtnFilter: TRzToolButton;
    PopupMenuFilter: TPopupMenu;
    ShowAllGoods: TMenuItem;
    ShowPictGoods: TMenuItem;
    ShowNoPictPhoto: TMenuItem;
    RzToolButtonView: TRzToolButton;
    PopupMenuView: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    cxGrid1DBTableView1F_CRE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_TYPE: TcxGridDBColumn;
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsNsiGoodsNewRecord(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FramNsiGoodsGrp1cxDBTreeListDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FramNsiGoodsGrp1cxDBTreeListDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FramNsiGoodsGrp1cxDBTreeListSelectionChanged(Sender: TObject);
    procedure RzEditFindChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ShowAllGoodsClick(Sender: TObject);
    procedure RzEditFindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N3Click(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid1DBTableView1DataControllerFilterChanged(Sender: TObject);
  private
    { Private declarations }
    scan  : string;
    scan_time : ttime;

  public
    { Public declarations }
  end;

var
  FrmNsiGoods: TFrmNsiGoods;

implementation
//Udm,
  uses UFrmNsiGoodsEdit,uPublic, uDlgLoadPicture;

{$R *.dfm}

procedure TFrmNsiGoods.BtnNewClick(Sender: TObject);
begin
  inherited;
  dm.dsNsiGoods.Insert;
  dm.dsNsiGoods.Post;
  cxGrid1DBTableView1DblClick(sender);
{
  with TFrmNsiGoodsEdit.Create(Application.MainForm) do
  begin
//    dsEditNsiGoods.ParamByName('NSI_ID').Value:=-10;
    dsEditNsiGoods.ParamByName('NSI_ID').Value:=dm.dsNsiGoodsF_GOOD.Value;
    dsEditNsiGoods.ParamByName('F_GOODS_GRP').Value:=FramNsiGoodsGrp1.dsNsiGrpGRP_ID.Value;
    dsEditNsiGoods.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiGoods.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiGoods.Post;
      end;
      dsEditNsiGoods.Transaction.CommitRetaining;
//      RefreshDS(dsNsiGoods);
    end;
    free;
  end;}
end;

procedure TFrmNsiGoods.BtnOpenClick(Sender: TObject);
begin
  BtnOpen.Down:=true;
end;

procedure TFrmNsiGoods.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  dm.RefreshNsiGoodGUI;

end;

procedure TFrmNsiGoods.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var
  pos : pointer;
  Sort   : array of boolean;
  lFields : Tstrings;
  i : integer;
begin
  for i:=0 to  sender.ColumnCount-1 do
  begin
    sender.Columns[i].SortOrder:=soNone;
  end;
  lFields := TStringList.Create;
  Setlength( Sort, 1 );
  sort[0]:=true;
  lFields.Add(TcxGridDBColumn(Acolumn).DataBinding.FieldName);
  pos:=dm.dsNsiGoods.GetBookmark;
  dm.dsNsiGoods.DoSortEx(lFields,sort);
  dm.dsNsiGoods.GotoBookmark(pos);
  Acolumn.SortOrder:=soDescending;
end;

procedure TFrmNsiGoods.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_COLOR.Index];
  end;
end;

procedure TFrmNsiGoods.cxGrid1DBTableView1DataControllerFilterChanged(
  Sender: TObject);
var
  sqlText : string;
  id : integer;
begin
  TpFIBDataSet(srNsiGoods.DataSet).DisableControls;
  TpFIBDataSet(srNsiGoods.DataSet).Active:=false;
  id := TpFIBDataSet(srNsiGoods.DataSet).FieldByName('F_GOOD').asInteger;
  sqlText:=(Sender as TcxDBDataFilterCriteria).FilterText;
  if sqlText <> '' then
  begin
    TpFIBDataSet(srNsiGoods.DataSet).Conditions.FindCondition('Filter').Value:=
        sqlText;
    TpFIBDataSet(srNsiGoods.DataSet).Conditions.FindCondition('Filter').Enabled:=true;
  end
  else
  begin
    TpFIBDataSet(srNsiGoods.DataSet).Conditions.FindCondition('Filter').Enabled:=false;
  end;
  TpFIBDataSet(srNsiGoods.DataSet).Conditions.Apply;
  TpFIBDataSet(srNsiGoods.DataSet).Active:=true;
  srNsiGoods.DataSet.Locate('F_GOOD',id,[]);
  TpFIBDataSet(srNsiGoods.DataSet).EnableControls;

end;

procedure TFrmNsiGoods.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  i : integer;
  ARowIndex : integer;
  ARowInfo  : TCxRowInfo;
begin
  with TFrmNsiGoodsEdit.Create(self) do
  begin
    dsEditNsiGoods.ParamByName('NSI_ID').Value:=srNsiGoods.DataSet.FieldByName('F_GOOD').Value;
    dsEditNsiGoods.ParamByName('F_Goods_grp').Value:=FramNsiGoodsGrp1.dsNsiGrpGRP_ID.Value;
    dsEditNsiGoods.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiGoods.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiGoods.Post;
      end;
      dsEditNsiGoods.Transaction.CommitRetaining;
      dm.dsNsiGoods.Refresh;
    end;
    free;
  end;

end;

procedure TFrmNsiGoods.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(VK_RETURN):
      if (time()- scan_time)<0.000001 then
      begin
        if scan<>'' then
        begin
          dsGetGoodByScan.Active:=false;
          dsGetGoodByScan.ParamByName('scan').Value:=scan;
          dsGetGoodByScan.Active:=true;
          if not dsGetGoodByScan.IsEmpty then
          begin
            dsGetGoodByScan.First;
            srNsiGoods.DataSet.Locate('F_Good',dsGetGoodByScanF_Good.Value,[]);
          end;
        end;
      end
      else
        BtnOKClick(Sender);
    else
    begin
      if (time()- scan_time)<0.00001 then
        scan:=scan+key
      ELSE
        scan:=key;
      scan_time:=time();
    end;
  end;
end;

procedure TFrmNsiGoods.dsNsiGoodsNewRecord(DataSet: TDataSet);
begin
  with TFrmNsiGoodsEdit.Create(self) do
  begin
    dsEditNsiGoods.ParamByName('NSI_ID').Value:=srNsiGoods.DataSet.FieldByName('F_ID').Value;
    dsEditNsiGoods.ParamByName('F_Goods_grp').Value:=FramNsiGoodsGrp1.dsNsiGrpGRP_ID.Value;
    dsEditNsiGoods.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiGoods.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiGoods.Post;
      end;
      dsEditNsiGoods.Transaction.CommitRetaining;
//      refreshDS(dsNsiGoods);
    end;
    free;
  end;
end;

procedure TFrmNsiGoods.FormActivate(Sender: TObject);
begin
  inherited;
//  dm.TimerRefreshNsiGood.Enabled:=false;
end;

procedure TFrmNsiGoods.FormCreate(Sender: TObject);
begin
  inherited;
  dm.TimerRefreshNsiGood.Enabled:=false;
end;

procedure TFrmNsiGoods.FormDestroy(Sender: TObject);
begin
  dm.TimerRefreshNsiGood.Enabled:=true;
  inherited;

end;

procedure TFrmNsiGoods.FormShow(Sender: TObject);
var
  i: integer;
  article : string;
begin
  inherited;
  refreshDS(FramNsiGoodsGrp1.dsNsiGrp);
//  refreshDS(dsNsiGoods);
  FramGoodCard1.dsGetGoodsInfo.DataSource:=srNsiGoods;
//  if dm.refreshThread<>nil then
//    dm.refreshThread.WaitFor;
//  dsNsiGoods.Active:=true;
//  dsNsiGoods:= dm.dsNsiGoods;
  if srNsiGoods.DataSet is TpFIBDataSet then
  begin
    TpFIBDataSet(srNsiGoods.DataSet).DisableControls;
    if TpFIBDataSet(srNsiGoods.DataSet).Active then
      article:=TpFIBDataSet(srNsiGoods.DataSet).FieldByName('F_ARTICLE').AsString
    else
      article:='';
    TpFIBDataSet(srNsiGoods.DataSet).Active:=false;
    TpFIBDataSet(srNsiGoods.DataSet).Active:=true;
    if article<>'' then
      TpFIBDataSet(srNsiGoods.DataSet).Locate('F_ARTICLE',article,[]);
    TpFIBDataSet(srNsiGoods.DataSet).EnableControls;
  end;

end;

procedure TFrmNsiGoods.FramNsiGoodsGrp1cxDBTreeListDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  AControl  : TControl;
  newGrp,I  : integer;
  ARowIndex : Integer;
  ARowInfo  : TcxRowInfo;
  ANode     :     TcxTreeListDataNode;//TcxTreeListNode;
  good_id   : integer;
  begin
  with TcxDragControlObject(Source) do
  begin
    if Control is TcxGridSite then
      with TcxGridSite(Control) do
      begin
        //ShowMessage(GridView.Name);
        with TcxGridDBTableView(GridView) do
        begin
//          ANode:=FramNsiGoodsGrp1.cxDBTreeList.GetNodeAt(X,Y);
//          FramNsiGoodsGrp1.cxDBTreeList.HitTest.HitNode
          ANode:=TcxTreeListDataNode(FramNsiGoodsGrp1.cxDBTreeList.HitTest.HitNode);
          newGrp:=Anode.KeyValue;
          //Anode.Values[FramNsiGoodsGrp1.cxDBTreeList1F_ID.ItemIndex];
          srNsiGoods.DataSet.DisableControls;
          i:=1;
          for I := 0 to Controller.SelectedRecordCount - 1 do
          begin
            ARowIndex:=DataController.GetSelectedRowIndex(i);
            ARowInfo:=DataController.GetRowInfo(ARowIndex);
            good_id:=cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,srNsiGoods.DataSet.FieldByName('F_GOOD').Index);
            if srNsiGoods.DataSet.Locate('f_good',good_id,[]) then
            begin
              srNsiGoods.DataSet.Edit;
              srNsiGoods.DataSet.FieldByName('F_goods_grp').Value:=newGrp;
              srNsiGoods.DataSet.Post;
            end;
//            dsNsiGoods.Transaction.CommitRetaining;
          end;
          if i>0 then
            dm.pFIBTransaction.CommitRetaining;
          srNsiGoods.DataSet.EnableControls;
        end;
      end;
     // refreshDs(dsNsiGoods);
  end;
//  ShowMessage(TDragControlObject(Source).ClassName);
end;

procedure TFrmNsiGoods.FramNsiGoodsGrp1cxDBTreeListDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    Accept:=true;
  end;
end;

procedure TFrmNsiGoods.FramNsiGoodsGrp1cxDBTreeListSelectionChanged(
  Sender: TObject);
begin
  inherited;
  if FramNsiGoodsGrp1.dsNsiGrpGRP_ID.AsInteger>=0 then
  begin
    srNsiGoods.DataSet.Filter:='F_GOODS_GRP='+FramNsiGoodsGrp1.dsNsiGrpGRP_ID.asString;
    srNsiGoods.DataSet.Filtered:=true;
  end
  else
    srNsiGoods.DataSet.Filtered:=false;
end;

procedure TFrmNsiGoods.N1Click(Sender: TObject);
begin
  inherited;
{  dsNsiGoods.InsertSQL.Clear;
  dsNsiGoods.InsertSQL.AddStrings(dm.dsGood_ins.SelectSQL);
  dsNsiGoods.OnNewRecord:=nil;
  StartImport(@dsNsiGoods);
  dsNsiGoods.InsertSQL.Clear;
  dsNsiGoods.OnNewRecord:=dsNsiGoodsNewRecord;}
end;

procedure TFrmNsiGoods.N2Click(Sender: TObject);
begin
  //dir := 'c:';
  with TDlgLoadPicture.Create(self) do
  begin
    ShowModal;
    free;
  end;
end;

procedure TFrmNsiGoods.N3Click(Sender: TObject);
begin
  RzToolButtonView.Caption:=TMenuItem(Sender).Caption;
  RzToolButtonView.tag:=TMenuItem(Sender).tag;
  RzToolButtonView.ImageIndex:=TMenuItem(Sender).ImageIndex;
  case RzToolButtonView.tag of
    1:
      begin
        cxGrid1Level1.GridView:=cxGrid1DBTableView1
      end;
    2:
      begin
        cxGrid1Level1.GridView:=cxGrid1DBCardView1;
      end;
  end;
end;

procedure TFrmNsiGoods.RzEditFindChange(Sender: TObject);
begin
//  inherited;
    srNsiGoods.DataSet.Locate('F_ARTICLE',RzEditFind.Text,[loCaseInsensitive ,loPartialKey]);
//  srNsiGoods.DataSet.Filter:='F_NAME like '''+RzEditFind.Text+'''';
//  srNsiGoods.DataSet.Filtered:=true;
end;

procedure TFrmNsiGoods.RzEditFindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
{    TpFIBDataSet(srNsiGoods.DataSet).Locate('F_ARTICLE',RzEditFind.Text,[loPartialKey])
    TpFIBDataSet(srNsiGoods.DataSet).DisableControls;
    TpFIBDataSet(srNsiGoods.DataSet).Active:=false;
    if TpFIBDataSet(srNsiGoods.DataSet).Conditions.FindCondition('Filter')<>nil then
    begin
      TpFIBDataSet(srNsiGoods.DataSet).Conditions.FindCondition('Filter').Value:=
        'F_article like '''+RzEditFind.Text+'''';
      if RzEditFind.Text<>'' then
        TpFIBDataSet(srNsiGoods.DataSet).Conditions.FindCondition('Filter').Enabled:=true
      else
        TpFIBDataSet(srNsiGoods.DataSet).Conditions.FindCondition('Filter').Enabled:=false;
    end;
    TpFIBDataSet(srNsiGoods.DataSet).Conditions.Apply;
    TpFIBDataSet(srNsiGoods.DataSet).Active:=true;
    TpFIBDataSet(srNsiGoods.DataSet).EnableControls;}
  end;

end;

procedure TFrmNsiGoods.ShowAllGoodsClick(Sender: TObject);
var
  i : integer;
begin
  BtnFilter.Caption:=TMenuItem(Sender).Caption;
  BtnFilter.tag:=TMenuItem(Sender).tag;
  if srNsiGoods.DataSet is TpFIBDataSet then
  begin
    TpFIBDataSet(srNsiGoods.DataSet).DisableControls;
    TpFIBDataSet(srNsiGoods.DataSet).Active:=false;
    for i := 0 to TpFIBDataSet(srNsiGoods.DataSet).Conditions.Count - 1 do
    begin
      if TpFIBDataSet(srNsiGoods.DataSet).Conditions.Condition[i].Name<>'Filter' then
        TpFIBDataSet(srNsiGoods.DataSet).Conditions.Condition[i].Enabled:=false;
    end;
    if BtnFilter.tag > 0 then
    begin
      TpFIBDataSet(srNsiGoods.DataSet).Conditions.Condition[BtnFilter.tag-1].Enabled:=true;
    end;
    TpFIBDataSet(srNsiGoods.DataSet).Conditions.Apply;
    TpFIBDataSet(srNsiGoods.DataSet).Active:=true;
    TpFIBDataSet(srNsiGoods.DataSet).EnableControls;
  end;
end;

end.
