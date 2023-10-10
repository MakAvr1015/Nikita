unit UFrmOutputPay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, RzDBEdit, RzDBBnEd, DBCtrls, RzDBCmbo, Mask, RzEdit,
  RzLabel, RzPanel, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDataSet,
  pFIBDataSet, cxPropertiesStore, RzForms, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode,
  frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, ExtCtrls, RzStatus,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList,
  Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich, frxExportBaseDialog,
  frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFrmOutputPay = class(TFrmPrototype)
    dsMoneyInHead: TpFIBDataSet;
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
    dsMoneyInHeadF_PAY: TFIBBCDField;
    srMoneyInHead: TDataSource;
    dsMoneyInBody: TpFIBDataSet;
    dsMoneyInBodyF_ID: TFIBBCDField;
    dsMoneyInBodyF_DOC: TFIBBCDField;
    dsMoneyInBodyF_PAY: TFIBBCDField;
    dsMoneyInBodyF_SUMMA: TFIBFloatField;
    dsMoneyInBodyF_DOC_INFO: TFIBStringField;
    srMoneyInBody: TDataSource;
    spMakePay: TpFIBStoredProc;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    BtnMakePay: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC: TcxGridDBColumn;
    cxGrid1DBTableView1F_PAY: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_INFO: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUMMA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzDBMemo1: TRzDBMemo;
    dsMoneyInHeadF_DOP_INFO: TFIBStringField;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzLabel6: TRzLabel;
    dsMoneyInHeadF_OWNER: TFIBBCDField;
    dsMoneyInHeadF_OWNER_NAME: TFIBStringField;
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure dsMoneyInHeadAfterOpen(DataSet: TDataSet);
    procedure dsMoneyInBodyNewRecord(DataSet: TDataSet);
    procedure dsMoneyInBodyAfterPost(DataSet: TDataSet);
    procedure BtnMakePayClick(Sender: TObject);
    procedure dsMoneyInBodyAfterDelete(DataSet: TDataSet);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure InsPosition;
  public
    { Public declarations }
  end;

var
  FrmOutputPay: TFrmOutputPay;

implementation

uses
  uPublic,uDm;
{$R *.dfm}

procedure TFrmOutputPay.BtnMakePayClick(Sender: TObject);
begin
  spMakePay.ParamByName('f_money').Value:=dsMoneyInHeadF_PAY.Value;
  spMakePay.ParamByName('f_sum').Value:=-1;
  spMakePay.ExecProc;
  postAllDs(self,true);
  refreshds(dsMoneyInHead);
  refreshds(dsMoneyInBody);
end;

procedure TFrmOutputPay.dsMoneyInBodyAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cxGrid1.SetFocus;
end;

procedure TFrmOutputPay.dsMoneyInBodyAfterPost(DataSet: TDataSet);
begin
  if self.Visible then
  begin
    RefreshDs(DataSet);
    cxGrid1.SetFocus;
  end;
end;

procedure TFrmOutputPay.dsMoneyInBodyNewRecord(DataSet: TDataSet);
begin
  InsPosition;
  DataSet.Last;
end;

procedure TFrmOutputPay.dsMoneyInHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsMoneyInHead.ParamByName('F_pay').Value:=dsMoneyInHeadF_PAY.Value;
end;

procedure TFrmOutputPay.InsPosition;
var
  key : integer;
begin
  key:=GetDocOut;
  if key>0 then
  begin
    dsMoneyInBodyF_DOC.Value:=key;
    dsMoneyInBody.Post;
  end;
end;

procedure TFrmOutputPay.RzDBButtonEdit1ButtonClick(Sender: TObject);
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

procedure TFrmOutputPay.RzDBButtonEdit2ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsMoneyInHead.Edit;
    dsMoneyInHeadF_OWNER.Value:=key;
    dsMoneyInHead.Post;
  end;
end;

end.
