unit UFrmOutputPayList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  FIBDataSet, pFIBDataSet, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, ComCtrls, ToolWin, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich, frxExportBaseDialog,
  frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFrmOutputPayList = class(TFrmPrototype)
    dsOutputMoneyList: TpFIBDataSet;
    dsOutputMoneyListF_ID: TFIBBCDField;
    dsOutputMoneyListF_SKLAD: TFIBBCDField;
    dsOutputMoneyListF_PARTNER: TFIBBCDField;
    dsOutputMoneyListF_PARTNER_NAME: TFIBStringField;
    dsOutputMoneyListF_BANK: TFIBBCDField;
    dsOutputMoneyListF_BANK_NAME: TFIBStringField;
    dsOutputMoneyListF_NUMBER: TFIBStringField;
    dsOutputMoneyListF_DATE: TFIBDateField;
    dsOutputMoneyListF_STATE_NAME: TFIBStringField;
    dsOutputMoneyListF_STATE: TFIBBCDField;
    dsOutputMoneyListF_SUMMA: TFIBFloatField;
    dsOutputMoneyListF_TYPE_NAME: TFIBStringField;
    dsOutputMoneyListF_TYPE: TFIBBCDField;
    srInputMoneyList: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1F_TYPE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_TYPE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    MnNewMoneyIn: TPopupMenu;
    N1: TMenuItem;
    MenuItem1: TMenuItem;
    N2: TMenuItem;
    ToolBar1: TToolBar;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    dsOutputMoneyListF_USER: TFIBStringField;
    cxGrid1DBTableView1F_USER: TcxGridDBColumn;
    dsOutputMoneyListF_OWNER: TFIBBCDField;
    dsOutputMoneyListF_OWNER_NAME: TFIBStringField;
    cxGrid1DBTableView1F_OWNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_OWNER_NAME: TcxGridDBColumn;
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure dsOutputMoneyListBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOutputPayList: TFrmOutputPayList;

implementation

{$R *.dfm}
uses
 uDM,uPublic,UdocClass;

procedure TFrmOutputPayList.BtnEditClick(Sender: TObject);
var
  key : integer;
begin
  key:=dsOutputMoneyListF_ID.Value;
  inherited;
  with TOutputPay.Create(key) do
  begin
    doc_type:=dsOutputMoneyListF_TYPE.value;
    OpenEditFrm;
  end;
end;

procedure TFrmOutputPayList.BtnNewClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  inherited;
  with TOutputPay.Create(key) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

procedure TFrmOutputPayList.BtnRefreshClick(Sender: TObject);
begin
  inherited;

  if not dsOutputMoneyListF_id.IsNull then
    RefreshDs(dsOutputMoneyList,'f_id',dsOutputMoneyListF_id.Value)
  else
    RefreshDs(dsOutputMoneyList);

end;

procedure TFrmOutputPayList.dsOutputMoneyListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsOutputMoneyList.ParamByName('str_date').Value:=EditStr_date.Date;
  dsOutputMoneyList.ParamByName('end_date').Value:=EditEnd_date.Date;

end;

procedure TFrmOutputPayList.FormCreate(Sender: TObject);
begin
  inherited;
  Editstr_date.Date:=date;
  Editend_date.Date:=date;

end;

end.
