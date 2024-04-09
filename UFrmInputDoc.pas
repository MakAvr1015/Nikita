unit UFrmInputDoc;

interface

uses
  uinterfaces, UMy_types,
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
  cxDBEdit, cxCalc, cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, System.ImageList, Vcl.ImgList,
  frxDBSet;

type
  TFrmInputDoc = class(TFrmPrototype, IFrmDoc)
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
    dsDocHeadF_OWNER: TFIBBCDField;
    dsDocHeadF_SKLAD_F_NAME: TFIBStringField;
    RzDBButtonEdit4: TRzDBButtonEdit;
    RzLabel7: TRzLabel;
    dsDocStringsF_SCANCODE: TFIBBCDField;
    dsDocStringsF_SCANCODE_VAL: TFIBStringField;
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
    procedure RzDBButtonEdit4ButtonClick(Sender: TObject);
  private
    { Private declarations }
    scan  : string;
    scan_time : ttime;
  public
    { Public declarations }
    procedure InsPosition;
    procedure CalcFields(Afield: TField; AValue: string);
    procedure AddPosition(P_good: Integer; p_cnt: Integer; p_price: Currency);
    procedure RefreshDoc;
    function GetTableName: String;
    function GetDocId: Integer;
    property TableName: String read GetTableName;
    property DocId: Integer read GetDocId;
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
//  val:= Afield.DisplayLabel+'='+ AValue;
  if pos(val,dsDocStringsF_GOOD_DOP_INFO.AsString)=0 then
  begin
    dsDocStringsf_NSI_GOOD_INFO.AsString:=
      dsDocStringsf_NSI_GOOD_INFO.AsString+val+#10;
  {
    dsDocStringsF_GOOD_DOP_INFO.AsString:=
      dsDocStringsF_GOOD_DOP_INFO.AsString+val+#10;
}
  end;
  Afield.AsString := AValue;
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
    if sender <> Source then
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
  RefreshDs(DataSet,'f_scancode',dsDocStringsF_SCANCODE.Value);
  cxGrid1.SetFocus;
end;

procedure TFrmInputDoc.dsDocStringsBeforePost(DataSet: TDataSet);
var
  cnt : integer;
  vl_dopInfoVal : String;
begin
//  inherited;
  if (dsDocStringsF_GOOD.IsNull and not dsDocStringsF_GOOD_NAME.IsNull) then
  begin

    for cnt := 0 to dsDocStrings.FieldCount - 1 do
    begin
      if Copy(dsDocStrings.Fields[cnt].FieldName,1,2)='DF' then
      begin
        if dsDocStrings.Fields[cnt].AsString<>'' then
        begin
        {
          dm.dsImportNsiGoodsDopInfo.Active:=false;
          dm.dsImportNsiGoodsDopInfo.ParamByName('P_GOOD').Value:=dsDocStringsF_GOOD.Value;
          dm.dsImportNsiGoodsDopInfo.ParamByName('P_GOOD_INFO').value:=dsDocStrings.Fields[cnt].Tag;
          dm.dsImportNsiGoodsDopInfo.ParamByName('P_GOOD_INFO_VAL').Value:=dsDocStrings.Fields[cnt].AsString;
          dm.dsImportNsiGoodsDopInfo.Active:=true;
          dm.dsImportNsiGoodsDopInfo.Transaction.CommitRetaining;
        }
          if vl_dopInfoVal.Length > 0 then
            vl_dopInfoVal := vl_dopInfoVal + Chr(10);
          vl_dopInfoVal := vl_dopInfoVal + dsDocStrings.Fields[cnt].DisplayLabel + '='
            +dsDocStrings.Fields[cnt].AsString;
        end;
      end;
    end;


    dsDocStringsF_SCANCODE.Value:=dm.InsExtGood(
      dsDocStringsF_ARTICLE.Value,
      dsDocStringsF_GOOD_NAME.Value,
      vl_dopInfoVal,
      dsDocStringsF_GOOD_DOP_INFO.Value,
      //dsDocStringsF_NSI_GOOD_INFO.Value,
      '',
      dsDocStringsF_CNT.AsInteger
      );
//    dm.dsGood_ins.FieldByName('f_id').Value;
{    if not dsDocStringsF_scancode.IsNull then
    begin
      dm.dsImportScancode.Active:=false;
      dm.dsImportScancode.ParamByName('f_good').Value:=dsDocStringsF_GOOD.Value;
      dm.dsImportScancode.ParamByName('f_scancode').Value:=dsDocStringsF_scancode.value;
      dm.dsImportScancode.Active:=true;
      dm.dsImportScancode.Transaction.CommitRetaining;
    end;}
 {   for cnt := 0 to dsDocStrings.FieldCount - 1 do
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
    end;}
  end;
end;


procedure TFrmInputDoc.dsDocStringsCalcFields(DataSet: TDataSet);
begin
  CalcFieldsDopInfo(DataSet,'F_NSI_GOOD_INFO');
end;

procedure TFrmInputDoc.FormCreate(Sender: TObject);
begin
  AddInfoColumns(cxGrid1DBTableView1);
  inherited;
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
      //dsDocStringsF_GOOD.Value:=goods[i];
      dsDocStringsF_SCANCODE.Value:=goods[i];
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

procedure TFrmInputDoc.RzDBButtonEdit4ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_OWNER.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmInputDoc.AddPosition(P_good: Integer; p_cnt: Integer;
  p_price: Currency);
begin
  raise Exception.Create('Not implemented!'); { TODO: Implement }
end;

procedure TFrmInputDoc.RefreshDoc;
begin
//  raise Exception.Create('Not implemented!'); { TODO: Implement }
  refreshDs(dsDocStrings);
end;

function TFrmInputDoc.GetTableName: String;
begin
  //raise Exception.Create('Not implemented!'); { TODO: Implement }
  result := 'T_DOC_IN';
end;

function TFrmInputDoc.GetDocId: Integer;
begin
//  raise Exception.Create('Not implemented!'); { TODO: Implement }
  if dsDocHead.Active then
    result := dsDocHeadF_DOC_IN.AsInteger
  else
    result := 0;
end;

end.
