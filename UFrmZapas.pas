unit UFrmZapas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, DB, FIBDataSet,
  pFIBDataSet, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, frxClass,
  frxDCtrl, frxExportXML, frxExportPDF, frxBarcode, frxFIBComponents, Menus,
  RzStatus, DBCtrls, RzDBCmbo, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  frxExportRTF, frxExportXLS, frxExportHTML, frxCross, frxDesgn,
  cxPropertiesStore, RzForms,FileCtrl, cxImage, cxDBEdit, cxLabel, cxDBLabel,
  IdFTPList, UFramGoodCard, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmZapas = class(TFrmPrototype)
    dsLIstSklad: TpFIBDataSet;
    dsListZapas: TpFIBDataSet;
    srListZapas: TDataSource;
    srLIstSklad: TDataSource;
    cxGridSkladDBTableView1: TcxGridDBTableView;
    cxGridSkladLevel1: TcxGridLevel;
    cxGridSklad: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Splitter1: TSplitter;
    dsLIstSkladF_SKLAD_IN: TFIBBCDField;
    dsLIstSkladF_NAME: TFIBStringField;
    dsLIstSkladF_ADDRES: TFIBStringField;
    dsListZapasF_ID: TFIBBCDField;
    dsListZapasF_GOOD: TFIBBCDField;
    dsListZapasF_SKLAD: TFIBBCDField;
    dsListZapasF_DATE: TFIBDateField;
    dsListZapasF_STR_OST: TFIBFloatField;
    dsListZapasF_MOVE_IN: TFIBFloatField;
    dsListZapasF_MOVE_OUT: TFIBFloatField;
    dsListZapasF_END_OST: TFIBFloatField;
    dsListZapasF_GOOD_NAME: TFIBStringField;
    cxGrid2DBTableView1F_ID: TcxGridDBColumn;
    cxGrid2DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid2DBTableView1F_SKLAD: TcxGridDBColumn;
    cxGrid2DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1F_STR_OST: TcxGridDBColumn;
    cxGrid2DBTableView1F_MOVE_IN: TcxGridDBColumn;
    cxGrid2DBTableView1F_MOVE_OUT: TcxGridDBColumn;
    cxGrid2DBTableView1F_END_OST: TcxGridDBColumn;
    cxGrid2DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGridSkladDBTableView1F_SKLAD_IN: TcxGridDBColumn;
    cxGridSkladDBTableView1F_NAME: TcxGridDBColumn;
    cxGridSkladDBTableView1F_ADDRES: TcxGridDBColumn;
    dsListZapasF_GOOD_GRP_NAME: TFIBStringField;
    cxGrid2DBTableView1F_GOOD_GRP_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_GOOD_SCANCODE: TcxGridDBColumn;
    Panel1: TPanel;
    dsPriceList: TpFIBDataSet;
    srPriceList: TDataSource;
    LkpPrice: TcxLookupComboBox;
    dsPriceListF_ID: TFIBBCDField;
    dsPriceListF_NAME: TFIBStringField;
    dsGoodList: TfrxUserDataSet;
    N1: TMenuItem;
    dsListZapasF_PRICE_VAL: TFIBBCDField;
    dsListZapasF_SUM: TFIBFloatField;
    cxGrid2DBTableView1F_PRICE_VAL: TcxGridDBColumn;
    cxGrid2DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid2DBTableView1F_PHOTO: TcxGridDBColumn;
    cxGrid2DBTableView1F_DOP_INFO: TcxGridDBColumn;
    cxGrid2DBTableView1F_GOODS_GRP_EXT_ID: TcxGridDBColumn;
    dsGetGoodsInfo: TpFIBDataSet;
    Splitter2: TSplitter;
    dsGetGoodsInfoF_ID: TFIBBCDField;
    dsGetGoodsInfoF_NAME: TFIBStringField;
    dsGetGoodsInfoF_ARTICLE: TFIBStringField;
    dsGetGoodsInfoF_DOP_INFO: TFIBStringField;
    dsGetGoodsInfoF_GOODS_GRP_EXT_ID: TFIBStringField;
    dsGetGoodsInfoF_SCANCODE: TFIBStringField;
    dsGetGoodsInfoF_GRP_INFO: TFIBStringField;
    dsGetGoodsInfoF_PRICE1: TFIBFloatField;
    dsGetGoodsInfoF_PRICE2: TFIBFloatField;
    srGetGoodsInfo: TDataSource;
    dsListZapasF_PICTURE: TFIBStringField;
    cxGrid2DBTableView1F_picture: TcxGridDBColumn;
    FramGoodCard1: TFramGoodCard;
    dsListZapasF_GOOD_GRP_COLOR: TFIBStringField;
    cxGrid2DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn;
    dsListZapasF_ARTICLE: TFIBStringField;
    cxGrid2DBTableView1F_ARTICLE: TcxGridDBColumn;
    dsListZapasF_GOOD_DOP_INFO: TFIBStringField;
    procedure FormShow(Sender: TObject);
    procedure dsLIstSkladAfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure dsGoodListGetValue(const VarName: string; var Value: Variant);
    procedure LkpPricePropertiesEditValueChanged(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure cxGrid2DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure dsListZapasBeforeRefresh(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dsListZapasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    scan  : string;
    scan_time : ttime;
    
  public
    { Public declarations }
  end;

var
  FrmZapas: TFrmZapas;

implementation

{$R *.dfm}
uses
  udm,upublic,uDlgSaveZapas;

procedure TFrmZapas.BtnOpenClick(Sender: TObject);
var
  str         : string;
  AFList      : TIdFTPListItems;
begin
  try
    if not dm.IdFTP.Connected then
      dm.IdFTP.Connect;
  except
  end;

  while not (dsListZapas.Eof) and (dm.IdFTP.Connected) do
    begin
      dsGetGoodsInfo.Active:=false;
      dsGetGoodsInfo.ParamByName('f_good').Value:=dsListZapasF_GOOD.Value;
      dsGetGoodsInfo.Active:=true;
      FramGoodCard1.dsGetGoodsInfo.Active:=false;
      FramGoodCard1.dsGetGoodsInfo.ParamByName('f_good').Value:=dsListZapasF_GOOD.Value;
      FramGoodCard1.dsGetGoodsInfo.Active:=true;

      application.ProcessMessages;
      if (dsListZapasF_END_OST.Value>0) and dsListZapasF_PICTURE.IsNull then
//      (FramGoodCard1.dsGetGoodsInfo.Eof) then
      begin
        str:=StringReplace(dsListZapas.FieldByName('f_good_article').AsString ,' ','_',[rfReplaceAll])+'.jpg';

        try
{      if not IdFTP.Connected then
       IdFTP.Connect;}
          AssErt(dm.IdFTP.Connected);
          dm.IdFTP.ChangeDir('/');// Установить папку на сервере
          CreateDir(Prg_PAth+'\photo');
          AFList:=TIdFTPListItems.Create;

          dm.IdFTP.ExtListItem(AFList,str);
          if AFList.Count>0 then
          begin
            dm.IdFTP.Get(str,Prg_PAth+'\photo\'+str,true);//Файл Откуда-Куда
            dm.spImportPictures.ParamByName('F_article').Value:=dsListZapas.FieldByName('f_good_article').AsString;
            dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(Prg_PAth+'\photo\'+str);
            dm.spImportPictures.ExecProc;
            dm.spImportPictures.Transaction.CommitRetaining;
          end;
        except
          on E: Exception do
          begin
            str:='Load Photo error: '+e.Message;
            LogMsg(str);
          end;
        end;
      end;
      dsListZapas.Next;
    end;
  try
    if dm.IdFTP.Connected then
      dm.IdFTP.Disconnect;
  except
  end;
end;

procedure TFrmZapas.BtnSaveClick(Sender: TObject);
var
  dir,str : string;
  utfStr  : String;
  fl  : TextFile;
  l_cnt,g_cnt : integer;
begin
  with TDlgSaveZapas.Create(self) do
  begin
    if ShowModal = mrOk then
    begin
      dsListZapas.First;
      l_cnt := 0;
      g_cnt := 0;
      AssignFile(fl,DirToSave.Path+'\zapas'+IntToStr(l_cnt)+'.csv');
      ReWrite(fl);
      dsGetGoodsInfo.ParamByName('f_price1').Value:=RoznPrice.EditValue;
      dsGetGoodsInfo.ParamByName('f_price2').Value:=OptPrice.EditValue;
      while not (dsListZapas.Eof) do
      begin
        if (dsListZapasF_END_OST.Value<OstFrom.Value) or (dsListZapasF_END_OST.Value>OstTo.Value) then
        begin
          dsListZapas.Next;
          continue;
        end;
        dsGetGoodsInfo.Active:=false;
        dsGetGoodsInfo.ParamByName('f_good').Value:=dsListZapasF_GOOD.Value;
        dsGetGoodsInfo.Active:=true;
        FramGoodCard1.dsGetGoodsInfo.Active:=false;
        FramGoodCard1.dsGetGoodsInfo.ParamByName('f_good').Value:=dsListZapasF_GOOD.Value;
        FramGoodCard1.dsGetGoodsInfo.Active:=true;

        application.ProcessMessages;
        str:='~'+dsGetGoodsInfo.FieldByName('F_ARTICLE').AsString+'~^~'
            +dsGetGoodsInfo.FieldByName('F_NAME').AsString+'~^~'
            +dsGetGoodsInfo.FieldByName('F_DOP_INFO').AsString+'~^~'
            +dsGetGoodsInfo.FieldByName('F_DOP_INFO').AsString+'~^~'
            +StringReplace(dsGetGoodsInfo.FieldByName('F_ARTICLE').AsString,' ','_',[rfReplaceAll])+'.jpg~^~'
            +'_'+StringReplace(dsGetGoodsInfo.FieldByName('F_ARTICLE').AsString,' ','_',[rfReplaceAll])+'.jpg~^~'
            +dsGetGoodsInfo.FieldByName('F_PRICE1').AsString+'~^~RUB~^~'
            +dsGetGoodsInfo.FieldByName('F_GOODS_GRP_EXT_ID').AsString+'~';
        if (dsListZapasF_END_OST.Value>=OstPorog.Value) and //not (OnlyPhoto.Checked and FramGoodCard1.dsGetGoodsInfo.Eof) then
          (((dsListZapasF_PICTURE.value='Ok') and OnlyPhoto.Checked) or not OnlyPhoto.Checked) then
          str:=str+'^~Y~'
        else
          str:=str+'^~N~';
        if dsGetGoodsInfo.FieldByName('f_grp_info').IsNull then
          str:=str
            +'^~Размер,15,16,17,18,19,20~^~'
        else
          str:=str
            +'^~'+dsGetGoodsInfo.FieldByName('f_grp_info').AsString+'~^~';

{        str:=str
            +'^~'+dsGetGoodsInfo.FieldByName('f_grp_info').AsString+'~^~'}
        str:=str
            +FloatToStr(dsGetGoodsInfo.FieldByName('F_PRICE1').AsCurrency-dsGetGoodsInfo.FieldByName('F_PRICE2').AsCurrency)+'~';
        inc(g_cnt);
        utfStr:=AnsiToUtf8(str);
        WriteLn(fl,utfStr);
        if g_cnt=EditCount.Value then
        begin
          CloseFile(fl);
          inc(l_cnt);
          g_cnt := 0;
          AssignFile(fl,DirToSave.Path+'\zapas'+IntToStr(l_cnt)+'.csv');
          ReWrite(fl);
        end;
        if SaveImg.Checked then
        begin
          DM.UploadPhoto(dsListZapasF_Article.AsString,DirToSave.Path,editDateFrom.Date);
//          if not dsGetPhoto.Active then
//          Begin
{            dm.dsGetPhoto.Active:=false;
            dm.dsGetPhoto.ParamByName('f_good').Value:=dsListZapasF_GOOD.Value;
            dm.dsGetPhoto.ParamByName('f_ch_date').Value:=editDateFrom.Date;
            dm.dsGetPhoto.Active:=true;
//          End;
          if not dm.dsGetPhoto.Eof then
            TFibBlobField(dm.dsGetPhoto.FieldByName('F_MEMO')).SaveToFile(DirToSave.Path+'\'+StringReplace(dsListZapasF_good_Article.AsString,' ','_',[rfReplaceAll])+'.jpg');
          dm.dsGetPhoto.ParamByName('f_ch_date').Clear;}
        end;
        dsListZapas.Next;
      end;
      CloseFile(fl);
    end;
    free;
  end;
  dm.dsGetPhoto.ParamByName('f_ch_date').Clear;
end;

procedure TFrmZapas.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (not VarIsNull(AviewInfo.GridRecord.Values[cxGrid2DBTableView1F_GOOD_GRP_COLOR.Index])) then
  begin
    ACanvas.Font.Color:=AviewInfo.GridRecord.Values[cxGrid2DBTableView1F_GOOD_GRP_COLOR.Index];
  end;
  if ((AviewInfo.GridRecord.Values[cxGrid2DBTableView1F_END_OST.Index]<0)
    and (AviewInfo.Item.Name='cxGrid2DBTableView1F_END_OST') ) then
  begin
    ACanvas.Font.Color:=clRed;
    ACanvas.Font.Style:=[fsBold];
  end;

end;

procedure TFrmZapas.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  ShowNsiGoodEdit(dsListZapasF_GOOD.AsInteger);
  dsListZapas.Refresh;
end;

procedure TFrmZapas.cxGrid2DBTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    Char(VK_RETURN):
      if (time()- scan_time)<0.000001 then
      begin
        if scan<>'' then
        begin
          dm.dsGetGoodByScan.Active:=false;
          dm.dsGetGoodByScan.ParamByName('scan').Value:=scan;
          dm.dsGetGoodByScan.Active:=true;
          if not dm.dsGetGoodByScan.IsEmpty then
          begin
            dm.dsGetGoodByScan.First;
            dsListZapas.Locate('F_GOOD',dm.dsGetGoodByScanF_good.Value,[]);
          end;
        end;
      end
      else if BorderStyle=bsDialog then
        BtnOKClick(Sender);
    else
    begin
      if (time()- scan_time)<0.00001 then
        scan:=scan+key
      ELSE
        scan:=key;
    end;
  end;
  scan_time:=time();
end;

procedure TFrmZapas.dsGoodListGetValue(const VarName: string;
  var Value: Variant);
var
  ARowIndex : integer;
  ARowInfo  : TCxRowInfo;
begin
{
f_article
f_name
f_price
f_scancode
f_descr
}
  ARowIndex:=cxGrid2DBTableView1.DataController.GetSelectedRowIndex(dsGoodList.RecNo);
  ARowInfo:=cxGrid2DBTableView1.DataController.GetRowInfo(ARowIndex);
  if CompareText(VarName,'f_article')=0 then
    Value:=cxGrid2DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid2DBTableView1F_ARTICLE.Index);
  if CompareText(VarName,'f_name')=0 then
    Value:=cxGrid2DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid2DBTableView1F_GOOD_Name.Index);
  if CompareText(VarName,'f_scancode')=0 then
    Value:=cxGrid2DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid2DBTableView1F_Good_Scancode.Index);
  if CompareText(VarName,'f_price')=0 then
    Value:=cxGrid2DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid2DBTableView1F_Price_Val.Index);
end;

procedure TFrmZapas.dsLIstSkladAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsListZapas.ParamByName('F_DATE_IN').Value:=date;
  dsPriceList.Active:=true;
  dsListZapas.Active:=true;
end;

procedure TFrmZapas.dsListZapasBeforeRefresh(DataSet: TDataSet);
begin
//  inherited;
//  dsListZapas.ParamByName('F_sklad').AsInteger:=dsListZapasF_sklad.AsInteger;
//  dsListZapas.ParamByName('f_price').AsInteger:=LkpPrice.EditValue;
end;

procedure TFrmZapas.dsListZapasCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('F_GOOD_DOP_INFO').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    if v_val.Names[i] <>'' then
      DataSet.FieldByName('DF_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
end;

procedure TFrmZapas.FormCreate(Sender: TObject);
var
  tf: TStringField;
begin
  inherited;
  dm.dsNsiGoodsDopInfo.Active:=false;
  dm.dsNsiGoodsDopInfo.Active:=true;
  dm.dsNsiGoodsDopInfo.First;
  while not dm.dsNsiGoodsDopInfo.eof do
  begin
    tf:=TStringField.Create(dsListZapas);
    tf.Calculated:=true;
    tf.Index:=dsListZapas.FieldCount;
    tf.FieldName:='DF_'+dm.dsNsiGoodsDopInfo.FieldByName('f_id').AsString;
    tf.DisplayLabel:=dm.dsNsiGoodsDopInfo.FieldByName('f_name').AsString;
    tf.tag:=dm.dsNsiGoodsDopInfo.FieldByName('f_id').AsInteger;
    tf.DataSet:=dsListZapas;
    with cxGrid2DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
      Caption:=dm.dsNsiGoodsDopInfo.FieldByName('f_name').AsString;
    end;
    dm.dsNsiGoodsDopInfo.Next;
  end;
  self.RestoreState;  
end;

procedure TFrmZapas.FormShow(Sender: TObject);
begin
  inherited;
  dsLIstSklad.Active:=true;
  dsListZapas.Active:=true;
  LkpPrice.Align:=AlTop;
end;

procedure TFrmZapas.LkpPricePropertiesEditValueChanged(Sender: TObject);
begin
  dsListZapas.ParamByName('f_price').Value:=LkpPrice.EditValue;
  refreshDs(dsListZapas);
end;

procedure TFrmZapas.N1Click(Sender: TObject);
begin
  dsGoodList.RangeEndCount:=cxGrid2DBTableView1.Controller.SelectedRowCount;
  frxReport2.LoadFromFile(Prg_path+'\cennic.fr3');
  frxReport2.PrepareReport;
  frxReport2.ShowPreparedReport;
end;

end.
