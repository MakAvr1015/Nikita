unit UFrmRoznSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FIBDataSet, StdCtrls, Mask, RzEdit, FIBDatabase,
  pFIBDatabase, pFIBDataSet, RzLabel, RzDBLbl, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, RzDBEdit, RzDBSpin, cxImage, RzRadChk,
  ComObj, RzDBBnEd, cxContainer, cxDBEdit, FIBQuery, pFIBQuery, pFIBStoredProc;

type
  TFrmRoznSale = class(TFrmPrototype)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RzDBLabel1: TRzDBLabel;
    dsDocHead: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    dsDocHeadF_SKLAD: TFIBBCDField;
    dsDocHeadF_PARTNER: TFIBBCDField;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE: TFIBDateField;
    dsDocHeadF_PAYDATE_PLAN: TFIBDateField;
    dsDocHeadF_DOC_SUM: TFIBBCDField;
    dsDocHeadF_STATE: TFIBBCDField;
    dsDocHeadF_PRICE: TFIBBCDField;
    dsDocHeadF_PRICE_NAME: TFIBStringField;
    dsDocHeadF_STATE_NAME: TFIBStringField;
    dsDocHeadF_PARTNER_NAME: TFIBStringField;
    dsDocHeadF_PARTNER_ADRES: TFIBStringField;
    dsDocHeadF_PARTNER_INN: TFIBStringField;
    dsDocHeadF_PARTNER_KPP: TFIBStringField;
    dsDocHeadF_PARTNER_BANK: TFIBStringField;
    dsDocHeadF_PARTNER_BANK_ADRES: TFIBStringField;
    dsDocHeadF_PARTNER_BANK_RSCH: TFIBStringField;
    dsDocHeadF_PARTNER_BANK_KSCH: TFIBStringField;
    dsDocHeadF_PARTNER_BANK_BIK: TFIBStringField;
    dsDocHeadF_SKLAD_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_ADRES: TFIBStringField;
    dsDocHeadF_SKLAD_F_NAME: TFIBStringField;
    dsDocHeadF_SKLAD_U_ADRES: TFIBStringField;
    dsDocHeadF_SKLAD_INN: TFIBStringField;
    dsDocHeadF_SKLAD_KPP: TFIBStringField;
    dsDocHeadF_SKLAD_BANK: TFIBStringField;
    dsDocHeadF_SKLAD_BANK_ADRES: TFIBStringField;
    dsDocHeadF_SKLAD_BANK_RSCH: TFIBStringField;
    dsDocHeadF_SKLAD_BANK_KSCH: TFIBStringField;
    dsDocHeadF_SKLAD_BANK_BIK: TFIBStringField;
    dsDocHeadF_SKIDKA: TFIBIntegerField;
    dsDocHeadF_PAY_SUM: TFIBBCDField;
    RzClockStatus1: TRzClockStatus;
    srDocHead: TDataSource;
    RzDBLabel2: TRzDBLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    LblMoneyBlack: TRzLabel;
    srDocStrings: TDataSource;
    dsDocHeadDOC_ID: TFIBBCDField;
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
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    EdPayDoc: TRzNumericEdit;
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
    BtnClose: TRzButton;
    RzDBSpinEdit1: TRzDBSpinEdit;
    RzLabel5: TRzLabel;
    PrintKKM: TRzCheckBox;
    RzLabel6: TRzLabel;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RzDBEdit1: TRzDBEdit;
    RzLabel7: TRzLabel;
    dsDocHeadF_DISCOUNT_CARD: TFIBStringField;
    Panel4: TPanel;
    Panel5: TPanel;
    cxDBImage1: TcxDBImage;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    Splitter1: TSplitter;
    spInsDOC_OUT_S: TpFIBStoredProc;
    dsDocStringsF_PRICE_VAL: TFIBBCDField;
    dsDocStringsF_SUM: TFIBBCDField;
    dsDocStringsF_SUM_WO_SKIDKA: TFIBBCDField;
    dsDocStringsF_PRICE_WO_SKIDKA: TFIBFloatField;
    spSetKKm: TpFIBStoredProc;
    procedure EdPayDocChange(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure BtnCloseClick(Sender: TObject);
    procedure RzDBSpinEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure dsDocStringsAfterOpen(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure RzDBSpinEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    scan  : string;
    ECR: OleVariant;
    procedure InsPosition;
    procedure PrintKKM_proc;

  public
    { Public declarations }
  end;

var
  FrmRoznSale: TFrmRoznSale;

implementation
uses
 udm,UPublic, UTypes, uNsiClass;
{$R *.dfm}
procedure TFrmRoznSale.PrintKKM_proc;
var
  i,errCode : integer;
  str : string;
  v_listSales : TGoodSaleList;
begin
    dsDocStrings.First;
    dsDocStrings.Last;
    setlength(v_listSales,dsDocStrings.RecordCount);
    dsDocStrings.First;
    while not dsDocStrings.Eof do
    begin
      if dsDocStringsF_CNT.value <=0 then
        continue;

      if Pos('(', dsDocStringsF_GOOD_NAME.Value)>0 then
        v_listSales[dsDocStrings.RecNo-1].name:= 'арт.'+dsDocStringsF_ARTICLE.AsString+' '+copy(dsDocStringsF_GOOD_NAME.Value,1,Pos('(', dsDocStringsF_GOOD_NAME.Value)-1)
      else
        v_listSales[dsDocStrings.RecNo-1].name:= 'арт.'+dsDocStringsF_ARTICLE.AsString+' '+dsDocStringsF_GOOD_NAME.Value;
      if dsDocStringsF_PRICE_WO_SKIDKA.IsNull then
        v_listSales[dsDocStrings.RecNo-1].price:=0
      else
        v_listSales[dsDocStrings.RecNo-1].price:=dsDocStringsF_PRICE_WO_SKIDKA.Value;
      LogMsg('Продажа по ККМ: '+v_listSales[dsDocStrings.RecNo-1].name);
      v_listSales[dsDocStrings.RecNo-1].quant:=dsDocStringsF_CNT.AsInteger;;
      v_listSales[dsDocStrings.RecNo-1].summ:=v_listSales[dsDocStrings.RecNo-1].quant*v_listSales[dsDocStrings.RecNo-1].price;

      if dsDocStringsF_PRICE_WO_SKIDKA.Value-dsDocStringsF_PRICE_VAL.Value > 0  then
      begin
        v_listSales[dsDocStrings.RecNo-1].discount_sum:=(dsDocStringsF_PRICE_WO_SKIDKA.AsFloat-dsDocStringsF_PRICE_VAL.AsFloat)*dsDocStringsF_cnt.AsInteger;
      end;


      dsDocStrings.Next;
    end;
  str:=kkm.PrintSale(v_listSales);
  if str<>'' then
  begin
    spSetKKm.Params.ClearValues;
    spSetKKm.ParamByName('P_ID').Value:=dsDocHeadDOC_ID.Value;
    spSetKKm.ParamByName('P_PD_NUM').Value:=str;
    spSetKKm.ParamByName('P_KKM_NUM').Value:=kkm.kkm_number;
    spSetKKm.ExecProc;
  end;
end;
procedure TFrmRoznSale.BtnCloseClick(Sender: TObject);
begin
  if dsDocHead.State in [dsEdit,dsInsert] then
     dsDocHead.post;
  RefreshDs(dsDocHead);
  RefreshDs(dsDocStrings);
  if PrintKKM.Checked then
  begin

    ECR:=0;
    PrintKKM_proc;
    ECR:=0;
  end;
  dsDocHead.Edit;
  dsDocHeadF_STATE.Value:=3;
  dsDocHead.Post;
  dsDocHead.Transaction.CommitRetaining;
  RefreshDs(ParentDs);
  dsDocHead.ParamByName('doc_id').Value:=-10;
  RefreshDs(dsDocHead);
  RefreshDs(dsDocStrings);
  EdPayDoc.Value:=0;
  ShowMessage('Продажа сохранена');
//  Close;
end;

procedure TFrmRoznSale.BtnOKClick(Sender: TObject);
begin
  inherited;
  RefreshDs(dsDocHead);
  if not dsDocStringsF_GOOD.IsNull then
    RefreshDs(dsDocStrings,'F_GOOD',dsDocStringsF_GOOD.Value);

end;

procedure TFrmRoznSale.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
      scan:=scan+key;
  end;
end;

procedure TFrmRoznSale.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  dsDocHead.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocStrings.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
end;

procedure TFrmRoznSale.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmRoznSale.dsDocStringsAfterOpen(DataSet: TDataSet);
begin
    RefreshDs(dsDocHead);
end;

procedure TFrmRoznSale.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  dsDocStrings.Transaction.CommitRetaining;
  RefreshDs(DataSet,'F_GOOD',dsDocStringsF_GOOD.Value);
  RefreshDs(dsDocHead);
  cxGrid1.SetFocus;
end;


procedure TFrmRoznSale.EdPayDocChange(Sender: TObject);
begin
  inherited;
  if dsDocHeadF_DOC_SUM.IsNull then
    LblMoneyBlack.Caption:=FloatToStr(EdPayDoc.Value)
  else
    LblMoneyBlack.Caption:=EdPayDoc.Value-dsDocHeadF_DOC_SUM.Value;
end;

procedure TFrmRoznSale.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
  goodNsi : TNsiGood;
begin
//  goods:=GetNsiGood(date(),scan);
  goods:=GetNsiGood(dsDocHeadF_DATE.Value,scan,dsDocHeadF_SKLAD.Value,dsDocHeadF_PRICE.Value);
  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      goodNsi:=TNsiGood.Create;
      spInsDOC_OUT_S.ParamByName('F_DOC_out').Value:=dsDocHeadDOC_ID.Value;
      if goodNsi.CheckBarter(goods[i]) then
      begin

        if (MessageDlg('Принять сертификат?',mtConfirmation,[mbYes,mbNo],0)=mrYes ) then
          spInsDOC_OUT_S.ParamByName('F_BARTER').Value:=1
        else
          spInsDOC_OUT_S.ParamByName('F_BARTER').Value:=0;
      end
      else
        spInsDOC_OUT_S.ParamByName('F_BARTER').Value:=0;
      spInsDOC_OUT_S.ParamByName('f_good').Value:=goods[i];
      spInsDOC_OUT_S.ExecProc;
      spInsDOC_OUT_S.Transaction.CommitRetaining;
      RefreshDs(dsDocStrings);
      goodNsi.Free;
    end;
  end
  else
  begin
    beep;
  end;
  scan:='';
  cxGrid1.SetFocus;
end;

procedure TFrmRoznSale.RzDBButtonEdit1ButtonClick(Sender: TObject);
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

procedure TFrmRoznSale.RzDBSpinEdit1Exit(Sender: TObject);
begin
  inherited;
  if dsDocHead.State=dsEdit then
  begin
    dsDocHead.Post;
    dsDocHead.Transaction.CommitRetaining;
    if not dsDocStringsF_GOOD.IsNull then
      RefreshDs(dsDocStrings,'F_GOOD',dsDocStringsF_GOOD.Value);
    RefreshDs(dsDocHead);
  end;
end;

procedure TFrmRoznSale.RzDBSpinEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=Vk_Return) then
  begin
    dsDocHead.Post;
    dsDocHead.Transaction.CommitRetaining;
    if not dsDocStringsF_GOOD.IsNull then
      RefreshDs(dsDocStrings,'F_GOOD',dsDocStringsF_GOOD.Value);
    RefreshDs(dsDocHead);
  end;
end;

end.
