unit UfrmEdinNsiGrp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, DB, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, StdCtrls, Mask, RzEdit, RzDBEdit,
  RzDBBnEd, dxdbtrel, RzLabel, Menus, Grids, DBGrids, RzStatus,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, DBCtrls, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxColorComboBox, cxDBColorComboBox, RzRadChk,
  RzDBChk, FIBQuery, pFIBQuery, pFIBStoredProc, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, RzDBSpin, System.ImageList, Vcl.ImgList, frxDBSet,
  frxChBox, frxTableObject, frxRich, frxExportBaseDialog, frxExportDOCX, frxOLE,
  cxClasses;

type
  TfrmEdinNsiGrp = class(TFrmPrototype)
    RzDBEdit1: TRzDBEdit;
    dsNsiGoodsGrp: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    srNsiGoodsGrp: TDataSource;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    dsSourceGrp: TpFIBDataSet;
    dsSourceGrpGRP_ID: TFIBBCDField;
    dsSourceGrpF_PARENT: TFIBBCDField;
    dsSourceGrpF_NAME: TFIBStringField;
    SrSourceGrp: TDataSource;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzDBMemo1: TRzDBMemo;
    RzLabel4: TRzLabel;
    cxDBColorComboBox1: TcxDBColorComboBox;
    RzDBEdit3: TRzDBEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    BtnSetGrpAuto: TRzButton;
    dsNsiGoodsGrpGRP_ID: TFIBBCDField;
    dsNsiGoodsGrpF_PARENT: TFIBBCDField;
    dsNsiGoodsGrpF_NAME: TFIBStringField;
    dsNsiGoodsGrpF_EXT_ID: TFIBStringField;
    dsNsiGoodsGrpF_DOP_INFO: TFIBStringField;
    dsNsiGoodsGrpF_COLOR: TFIBStringField;
    dsNsiGoodsGrpF_SET_AUTO: TFIBSmallIntField;
    dsNsiGoodsGrpF_SET_MASK: TFIBStringField;
    procSetGrpAuto: TpFIBStoredProc;
    dsNsiGoodsGrpF_GRP_NEW: TFIBBCDField;
    dsNsiGoodsGrpF_SHOW_EMPTY_GOOD: TFIBSmallIntField;
    GroupBox1: TGroupBox;
    RzDBCheckBox2: TRzDBCheckBox;
    Label1: TLabel;
    RzDBEdit4: TRzDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dsNsiGoodsGrpAfterOpen(DataSet: TDataSet);
    procedure BtnSetGrpAutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEdinNsiGrp: TfrmEdinNsiGrp;

implementation

{$R *.dfm}
uses
  udm;

procedure TfrmEdinNsiGrp.BtnSetGrpAutoClick(Sender: TObject);
begin
  procSetGrpAuto.ParamByName('P_NSI_GOODS_GRP').Value:=dsNsiGoodsGrpGRP_ID.Value;
  if (MessageDlg('Перезаписать существующие группы?',mtConfirmation,[mbYes,mbNo],0)=mrYes) then
  begin
    procSetGrpAuto.ParamByName('P_OVER').Value:=1;
  end
  else
  begin
    procSetGrpAuto.ParamByName('P_OVER').Value:=0;
  end;
  procSetGrpAuto.ExecProc;
  procSetGrpAuto.Transaction.CommitRetaining;
  ShowMessage('Группа присвоена. Обновите справочник товаров');
end;

procedure TfrmEdinNsiGrp.dsNsiGoodsGrpAfterOpen(DataSet: TDataSet);
begin
  dsNsiGoodsGrp.ParamByName('F_GRP').Value:=dsNsiGoodsGrpGRP_ID.Value;
end;

procedure TfrmEdinNsiGrp.FormShow(Sender: TObject);
begin
  inherited;
  dsNsiGoodsGrp.Active:=true;
  dsSourceGrp.Active:=true;
end;

end.
