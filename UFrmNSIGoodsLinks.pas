unit UFrmNSIGoodsLinks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, Data.DB, FIBDataSet, pFIBDataSet, cxClasses, Vcl.StdCtrls,
  RzLabel, Vcl.Mask, RzEdit, RzDBEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxLabel, cxImage, cxGridCustomTableView, cxGridCardView,
  cxGridDBCardView, cxGridCustomView, cxGridCustomLayoutView, cxGridLevel,
  cxGrid, cxContainer, cxGroupBox, cxRadioGroup, cxDBEdit;

type
  TFrmNSIGoodsLinks = class(TFrmPrototype)
    dsLinkInfo: TpFIBDataSet;
    dsLinkInfoF_NAME: TFIBStringField;
    DsrLinkInfo: TDataSource;
    edArticle: TRzDBEdit;
    RzLabel3: TRzLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxGrid1DBCardView1: TcxGridDBCardView;
    dsLinkListPos: TpFIBDataSet;
    dsLinkListPosF_ID: TFIBIntegerField;
    dsLinkListPosF_GOOD: TFIBIntegerField;
    dsLinkListPosF_GOOD_NAME: TFIBStringField;
    dsLinkListPosF_GOOD_ARTICLE: TFIBStringField;
    dsLinkListPosF_GOOD_MMEDIA: TFIBBlobField;
    dsrLinkListPos: TDataSource;
    cxGrid1DBCardView1F_ID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_GOOD: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_GOOD_NAME: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_GOOD_ARTICLE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1F_GOOD_MMEDIA: TcxGridDBCardViewRow;
    dsLinkInfoF_LINK: TFIBIntegerField;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dsLinkInfoF_LINK_TYPE: TFIBIntegerField;
    procedure cxGrid1DBCardView1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNSIGoodsLinks: TFrmNSIGoodsLinks;

implementation

uses uTypes, uPublic, uDm;

{$R *.dfm}

procedure TFrmNSIGoodsLinks.cxGrid1DBCardView1NavigatorButtonsButtonClick
  (Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  goodList: TDigits;
  i: Integer;
begin
  case AButtonIndex of
    6:
      begin
        goodList := GetNsiGood(date());
        for i := 0 to length(goodList) - 1 do
        begin
          dsLinkListPos.Insert;
          dsLinkListPos.FieldByName('F_GOOD').Value := goodList[i];
          dsLinkListPos.Post;
        end;
        dsLinkListPos.Transaction.CommitRetaining;
        RefreshDs(dsLinkListPos);
        ADone := true;
      end;
    7:
    begin
      dsLinkListPos.Delete;
      dsLinkListPos.Transaction.CommitRetaining;
      RefreshDs(dsLinkListPos);
      Adone:=true;
    end;
  end;
end;

end.
