unit UFrmNsiSkladEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzDBBnEd, StdCtrls, Mask, RzEdit, RzDBEdit, RzButton,
  RzPanel, ExtCtrls, DB, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet,
  RzLabel, Menus, RzStatus, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxInplaceContainer, cxTLData, cxDBTL, System.ImageList, Vcl.ImgList, frxDBSet,
  frxChBox, frxTableObject, frxRich, frxExportBaseDialog, frxExportDOCX, frxOLE,
  cxClasses, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxtree,
  dxdbtree, cxNavigator, cxDBNavigator;

type
  TFrmNsiSkladEdit = class(TFrmPrototype)
    edName: TRzDBEdit;
    BtnEdPartner: TRzDBButtonEdit;
    EdAddress: TRzDBEdit;
    dsEditSklad: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    srEditSklad: TDataSource;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    dsEditSkladF_ID: TFIBBCDField;
    dsEditSkladF_NAME: TFIBStringField;
    dsEditSkladF_ADDRES: TFIBStringField;
    dsEditSkladF_PARTNER: TFIBBCDField;
    dsEditSkladF_PARTNER_NAME: TFIBStringField;
    BtnEdPrice: TRzDBButtonEdit;
    RzLabel4: TRzLabel;
    dsEditSkladF_PRICE_IN: TFIBBCDField;
    dsEditSkladF_PRICE_IN_NAME: TFIBStringField;
    dsEditSkladF_PRICE_OUT: TFIBBCDField;
    dsEditSkladF_PRICE_OUT_NAME: TFIBStringField;
    RzLabel5: TRzLabel;
    BtnEditPriceIn: TRzDBButtonEdit;
    RzLabel6: TRzLabel;
    BtnEditPartnerROzn: TRzDBButtonEdit;
    dsEditSkladf_partner_rozn_name: TStringField;
    dsEditSkladf_partner_rozn: TFIBBCDField;
    RzLabel7: TRzLabel;
    edPrefix: TRzDBEdit;
    dsEditSkladF_PREFIX: TFIBStringField;
    dsSkladStruct: TpFIBDataSet;
    srSkladStruct: TDataSource;
    dsSkladStructF_ID: TFIBBCDField;
    dsSkladStructF_SKLAD: TFIBBCDField;
    dsSkladStructF_PARENT: TFIBBCDField;
    dsSkladStructF_ADDRES: TFIBStringField;
    dsSkladStructF_FULL_ADDRES: TFIBStringField;
    dsSkladStructF_DESCR: TFIBStringField;
    dsEditSkladF_SKLAD: TFIBBCDField;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1F_ID: TcxDBTreeListColumn;
    cxDBTreeList1F_SKLAD: TcxDBTreeListColumn;
    cxDBTreeList1F_PARENT: TcxDBTreeListColumn;
    cxDBTreeList1F_ADDRES: TcxDBTreeListColumn;
    cxDBTreeList1F_FULL_ADDRES: TcxDBTreeListColumn;
    cxDBTreeList1F_DESCR: TcxDBTreeListColumn;
    procedure BtnEdPartnerButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnEdPriceButtonClick(Sender: TObject);
    procedure BtnEditPriceInButtonClick(Sender: TObject);
    procedure BtnEditPartnerROznButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiSkladEdit: TFrmNsiSkladEdit;

implementation

{$R *.dfm}

uses udm,uPublic;

procedure TFrmNsiSkladEdit.BtnEditPartnerROznButtonClick(Sender: TObject);
var
  key : integer;
begin
  inherited;
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsEditSklad.Edit;
    dsEditSkladF_partner_rozn.Value:=key;
    dsEditSklad.Post;
    refreshDs(dsEditSklad);
  end;
end;

procedure TFrmNsiSkladEdit.BtnEditPriceInButtonClick(Sender: TObject);
var
  key : integer;
begin
  inherited;
  key:=GetNsiPrice;
  if key>0 then
  begin
    dsEditSklad.Edit;
    dsEditSkladF_Price_In.Value:=key;
    dsEditSklad.Post;
    refreshDs(dsEditSklad);
  end;
end;

procedure TFrmNsiSkladEdit.BtnEdPartnerButtonClick(Sender: TObject);
var
  key : integer;
begin
  inherited;
  key:=GetNsiPartner;
  if key>0 then
  begin
    dsEditSklad.Edit;
    dsEditSkladF_PARTNER.Value:=key;
    dsEditSklad.Post;
    refreshDs(dsEditSklad);
  end;
end;

procedure TFrmNsiSkladEdit.BtnEdPriceButtonClick(Sender: TObject);
var
  key : integer;
begin
  inherited;
  key:=GetNsiPrice;
  if key>0 then
  begin
    dsEditSklad.Edit;
    dsEditSkladF_Price_out.Value:=key;
    dsEditSklad.Post;
    refreshDs(dsEditSklad);
  end;
end;

procedure TFrmNsiSkladEdit.BtnOKClick(Sender: TObject);
begin
  PostAllDS(self,true);
  inherited;
end;

procedure TFrmNsiSkladEdit.FormShow(Sender: TObject);
begin
  inherited;
  dsEditSklad.Active:=true;
end;

end.
