unit UFrmInputDocBackRozn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmInputDoc, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxLabel, cxImageComboBox, FIBQuery, pFIBQuery,
  pFIBStoredProc, cxPropertiesStore, RzForms, frxClass, Menus, FIBDataSet,
  FIBDatabase, pFIBDatabase, pFIBDataSet, cxContainer, cxImage, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls, StdCtrls, RzDBBnEd,
  RzDBEdit, DBCtrls, RzDBCmbo, Mask, RzEdit, RzLabel, RzPanel, RzButton,
  RzStatus, RzRadChk, RzDBLbl, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  Vcl.ImgList, frxDBSet, frxExportRTF, frxExportPDF, frxExportXML, frxExportXLS,
  frxFIBComponents, frxChBox, frxTableObject, frxCross, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxDCtrl, frxOLE, frxDesgn, frxBarcode,
  cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFrmInputDocBackRozn = class(TFrmInputDoc)
    RzPanel2: TRzPanel;
    RzClockStatus1: TRzClockStatus;
    RzDBLabel2: TRzDBLabel;
    PrintKKM: TRzCheckBox;
    RzPanel3: TRzPanel;
    BtnClose: TRzButton;
    RzDBLabel1: TRzDBLabel;
    RzLabel8: TRzLabel;
    RzButton1: TRzButton;
    pFibProcCopyDoc: TpFIBStoredProc;
    procedure RzButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDocStringsAfterPost(DataSet: TDataSet);
    procedure dsDocStringsAfterOpen(DataSet: TDataSet);
    procedure dsDocStringsAfterDelete(DataSet: TDataSet);
    procedure BtnCloseClick(Sender: TObject);
  private
    { Private declarations }
    ECR : OleVariant;
    procedure PrintKKM_proc;

  public
    { Public declarations }
  end;

var
  FrmInputDocBackRozn: TFrmInputDocBackRozn;

implementation

uses
upublic,UDocumentsClasses,udm,UNsiClass, Utypes;
{$R *.dfm}

procedure TFrmInputDocBackRozn.BtnCloseClick(Sender: TObject);
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
  ShowMessage('Возврат сохранен');
end;

procedure TFrmInputDocBackRozn.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
//-----------------------//
end;

procedure TFrmInputDocBackRozn.dsDocStringsAfterDelete(DataSet: TDataSet);
begin
  inherited;
    RefreshDs(dsDocHead);
end;

procedure TFrmInputDocBackRozn.dsDocStringsAfterOpen(DataSet: TDataSet);
begin
    RefreshDs(dsDocHead);
end;

procedure TFrmInputDocBackRozn.dsDocStringsAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshDs(dsDocHead);

end;

procedure TFrmInputDocBackRozn.PrintKKM_proc;
var
  i,errCode : integer;
  str : string;
  v_listSales : TDocPositionList;
begin
    dsDocStrings.First;
    dsDocStrings.Last;
    setlength(v_listSales,dsDocStrings.RecordCount);
    dsDocStrings.First;
    while not dsDocStrings.Eof do
    begin
      if dsDocStringsF_CNT.value <=0 then
        continue;
      v_listSales[dsDocStrings.RecNo-1].f_good:=TnsiGood.Create();
      if Pos('(', dsDocStringsF_GOOD_NAME.Value)>0 then
        v_listSales[dsDocStrings.RecNo-1].f_good.SetName('арт.'+dsDocStringsF_ARTICLE.AsString+' '+copy(dsDocStringsF_GOOD_NAME.Value,1,Pos('(', dsDocStringsF_GOOD_NAME.Value)-1))
      else
        v_listSales[dsDocStrings.RecNo-1].f_good.SetName('арт.'+dsDocStringsF_ARTICLE.AsString+' '+dsDocStringsF_GOOD_NAME.Value);
       v_listSales[dsDocStrings.RecNo-1].f_price:=0;
      LogMsg('Восврат по ККМ: '+v_listSales[dsDocStrings.RecNo-1].f_good.GetName());
      v_listSales[dsDocStrings.RecNo-1].f_quant:=dsDocStringsF_CNT.AsInteger;;
      v_listSales[dsDocStrings.RecNo-1].f_summ:=v_listSales[dsDocStrings.RecNo-1].f_quant*v_listSales[dsDocStrings.RecNo-1].f_price;
      dsDocStrings.Next;
    end;
  str:=kkm.PrintBack(v_listSales);
{  if str<>'' then
  begin
    spSetKKm.Params.ClearValues;
    spSetKKm.ParamByName('P_ID').Value:=dsDocHeadDOC_ID.Value;
    spSetKKm.ParamByName('P_PD_NUM').Value:=str;
    spSetKKm.ParamByName('P_KKM_NUM').Value:=kkm.kkm_number;
    spSetKKm.ExecProc;
  end;}
end;

procedure TFrmInputDocBackRozn.RzButton1Click(Sender: TObject);
var
  v_outList : TDigits;
  i         : integer;
begin
  v_outList:=GetOutDoc();
  if length(v_outList)>0 then
  begin
   dsDocHead.transaction.commitretaining;
    for I := 0 to length(v_outList) - 1 do
    begin

      pFibProcCopyDoc.ParamByName('P_IN').Value:=dsDocHeadF_DOC_IN.Value;
      pFibProcCopyDoc.ParamByName('P_OUT').Value:=v_outList[i];
      pFibProcCopyDoc.ExecProc;
    end;
    pFibProcCopyDoc.Transaction.CommitRetaining;
    RefreshDs(dsDocStrings);
  end;
end;

end.
