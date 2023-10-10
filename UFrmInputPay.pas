unit UFrmInputPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel, ExtCtrls, RzStatus, DB,
  FIBDataSet, pFIBDataSet, RzDBEdit, RzDBBnEd, DBCtrls, RzDBCmbo, StdCtrls,
  Mask, RzEdit, RzLabel, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDatabase, pFIBDatabase,
  cxPropertiesStore, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, System.ImageList, Vcl.ImgList,
  frxDBSet, frxChBox, frxTableObject, frxRich, frxExportBaseDialog,
  frxExportDOCX, frxOLE;

type
  TFrmInputPay = class(TFrmPrototype)
    dsMoneyInHead: TpFIBDataSet;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    dsMoneyInHeadF_SKLAD: TFIBBCDField;
    dsMoneyInHeadF_PARTNER: TFIBBCDField;
    dsMoneyInHeadF_PARTNER_NAME: TFIBStringField;
    dsMoneyInHeadF_BANK: TFIBBCDField;
    dsMoneyInHeadF_BANK_NAME: TFIBStringField;
    dsMoneyInHeadF_NUMBER: TFIBStringField;
    dsMoneyInHeadF_DATE: TFIBDateField;
    dsMoneyInHeadF_STATE_NAME: TFIBStringField;
    dsMoneyInHeadF_STATE: TFIBBCDField;
    dsMoneyInHeadF_SUMMA: TFIBFloatField;
    dsMoneyInHeadF_TYPE_NAME: TFIBStringField;
    dsMoneyInHeadF_TYPE: TFIBBCDField;
    srMoneyInHead: TDataSource;
    RzDBNumericEdit1: TRzDBNumericEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RzLabel5: TRzLabel;
    dsMoneyInHeadF_PAY: TFIBBCDField;
    dsMoneyInBody: TpFIBDataSet;
    srMoneyInBody: TDataSource;
    dsMoneyInBodyF_ID: TFIBBCDField;
    dsMoneyInBodyF_DOC: TFIBBCDField;
    dsMoneyInBodyF_PAY: TFIBBCDField;
    dsMoneyInBodyF_SUMMA: TFIBFloatField;
    dsMoneyInBodyF_DOC_INFO: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1F_PAY: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_INFO: TcxGridDBColumn;
    BtnMakePay: TButton;
    spMakePay: TpFIBStoredProc;
    pFIBTransaction1: TpFIBTransaction;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    dsNsiType: TpFIBDataSet;
    FIBBCDField1: TFIBBCDField;
    FIBStringField1: TFIBStringField;
    srNsiType: TDataSource;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    dsMoneyInHeadF_OWNER: TFIBBCDField;
    dsMoneyInHeadF_OWNER_NAME: TFIBStringField;
    RzLabel6: TRzLabel;
    RzDBButtonEdit2: TRzDBButtonEdit;
    procedure dsMoneyInHeadAfterOpen(DataSet: TDataSet);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure dsMoneyInBodyNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1F_DOC_INFOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dsMoneyInBodyAfterPost(DataSet: TDataSet);
    procedure BtnMakePayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsMoneyInBodyAfterDelete(DataSet: TDataSet);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure InsPosition;
  public
    { Public declarations }
  end;

var
  FrmInputPay: TFrmInputPay;

implementation
uses
  udm,uPublic;
{$R *.dfm}

procedure TFrmInputPay.BtnMakePayClick(Sender: TObject);
begin
  spMakePay.ParamByName('f_money').Value:=dsMoneyInHeadF_PAY.Value;
  spMakePay.ParamByName('f_sum').Value:=-1;
  spMakePay.ExecProc;
  postAllDs(self,true);
  refreshds(dsMoneyInHead);
  refreshds(dsMoneyInBody);
end;

procedure TFrmInputPay.cxGrid1DBTableView1F_DOC_INFOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  key : integer;
begin
  key:=GetDocOut;
  if key>0 then
  begin
    dsMoneyInBody.Edit;
    dsMoneyInBodyF_DOC.Value:=key;
    dsMoneyInBody.Post;
  end;

end;

procedure TFrmInputPay.dsMoneyInBodyAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmInputPay.dsMoneyInBodyAfterPost(DataSet: TDataSet);
begin

  if self.Visible then
  begin
    RefreshDs(DataSet);  
    cxGrid1.SetFocus;
  end;
end;

procedure TFrmInputPay.dsMoneyInBodyNewRecord(DataSet: TDataSet);
begin
  InsPosition;
  DataSet.Last;
end;

procedure TFrmInputPay.dsMoneyInHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsMoneyInHead.ParamByName('F_pay').Value:=dsMoneyInHeadF_PAY.Value;
end;

procedure TFrmInputPay.FormCreate(Sender: TObject);
begin
  inherited;
  dsNsiType.Active:=true;
end;

procedure TFrmInputPay.InsPosition;
var
  key : integer;
begin
  key:=GetDocOut(dsMoneyInHeadF_PARTNER.AsInteger,dsMoneyInHeadF_TYPE.AsInteger);
  if key>0 then
  begin
    dsMoneyInBodyF_DOC.Value:=key;
    dsMoneyInBody.Post;
  end;
end;

procedure TFrmInputPay.RzDBButtonEdit1ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsMoneyInHead.Edit;
    dsMoneyInHeadF_PARTNER.Value:=key;
    dsMoneyInHead.Post;
  end;
end;

procedure TFrmInputPay.RzDBButtonEdit2ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsMoneyInHead.Edit;
    dsMoneyInHeadF_OWNER.Value:=key;
    dsMoneyInHead.Post;
  end;end;

end.
