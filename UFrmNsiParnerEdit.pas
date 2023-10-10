unit UFrmNsiParnerEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, DB, FIBDatabase,
  pFIBDatabase, FIBDataSet, pFIBDataSet, StdCtrls, Mask, RzEdit, RzDBEdit,
  RzLabel, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, Menus, RzStatus, RzTabs,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, cxDBLookupComboBox, RzDBLbl, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, System.ImageList, Vcl.ImgList,
  frxDBSet;

type
  TFrmNsiParnerEdit = class(TFrmPrototype)
    EdName: TRzDBEdit;
    Ed_U_NAME: TRzDBEdit;
    dsEditNsiPartner: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    srEditNsiPartner: TDataSource;
    dsEditNsiPartnerF_ID: TFIBBCDField;
    dsEditNsiPartnerF_NAME: TFIBStringField;
    dsEditNsiPartnerF_U_NAME: TFIBStringField;
    dsEditNsiPartnerF_U_ADDRES: TFIBStringField;
    dsEditNsiPartnerF_INN: TFIBStringField;
    dsEditNsiPartnerF_KPP: TFIBStringField;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    dsPartnerBanls: TpFIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    srPartnerBanls: TDataSource;
    dsPartnerBanlsF_PARTNER_BANK: TFIBBCDField;
    dsPartnerBanlsF_PARTNER: TFIBBCDField;
    dsPartnerBanlsF_BANK: TFIBBCDField;
    dsPartnerBanlsF_BANK_NAME: TFIBStringField;
    dsPartnerBanlsF_BANK_KPP: TFIBStringField;
    dsPartnerBanlsF_BANK_INN: TFIBStringField;
    dsPartnerBanlsF_BANK_ADRES: TFIBStringField;
    dsPartnerBanlsF_BANK_K_SCH: TFIBStringField;
    dsPartnerBanlsF_R_SCH: TFIBStringField;
    cxGrid1DBTableView1F_PARTNER_BANK: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK_KPP: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK_INN: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK_ADRES: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK_K_SCH: TcxGridDBColumn;
    cxGrid1DBTableView1F_R_SCH: TcxGridDBColumn;
    dsDopInfo: TpFIBDataSet;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    srDopInfo: TDataSource;
    dsDopInfoF_PARTNER_INFO: TFIBBCDField;
    dsDopInfoF_PARTNER: TFIBBCDField;
    dsDopInfoF_INFO: TFIBStringField;
    dsDopInfoF_INFO_NAME: TFIBBCDField;
    dsDopInfoF_VALUE: TFIBStringField;
    cxGrid2DBTableView1F_PARTNER_INFO: TcxGridDBColumn;
    cxGrid2DBTableView1F_PARTNER: TcxGridDBColumn;
    cxGrid2DBTableView1F_INFO: TcxGridDBColumn;
    cxGrid2DBTableView1F_INFO_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1F_VALUE: TcxGridDBColumn;
    dsListNames: TpFIBDataSet;
    srListNames: TDataSource;
    TabSheet3: TRzTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsDiscountCards: TpFIBDataSet;
    srDiscountCards: TDataSource;
    dsDiscountCardsF_DISCOUNT_PARTNER: TFIBBCDField;
    dsDiscountCardsF_DISCOUNT_ID: TFIBBCDField;
    dsDiscountCardsF_NUMBER: TFIBStringField;
    dsDiscountCardsF_DISCOUNT: TFIBBCDField;
    cxGridDBTableView1F_DISCOUNT_PARTNER: TcxGridDBColumn;
    cxGridDBTableView1F_DISCOUNT_ID: TcxGridDBColumn;
    cxGridDBTableView1F_NUMBER: TcxGridDBColumn;
    cxGridDBTableView1F_DISCOUNT: TcxGridDBColumn;
    dsDiscountCardsF_PARTNER: TFIBBCDField;
    RzDBEdit4: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzDBEdit7: TRzDBEdit;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzButton1: TRzButton;
    dsPartnerCard: TpFIBDataSet;
    dsPartnerCardF_PARTNER: TFIBBCDField;
    dsPartnerCardF_STR_DATE: TFIBDateField;
    dsPartnerCardF_END_DATE: TFIBDateField;
    dsPartnerCardF_DISCOUNT_TYPE: TFIBBCDField;
    dsPartnerCardF_DISCOUNT: TFIBBCDField;
    dsPartnerCardF_PAY_DAY: TFIBBCDField;
    dsPartnerCardF_AVG_OUT: TFIBBCDField;
    dsPartnerCardF_AVG_PAY: TFIBBCDField;
    dsPartnerCardF_DEB_SUM: TFIBBCDField;
    srPartnerCard: TDataSource;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    dsPartnerCardF_MAX_DEB: TFIBBCDField;
    procedure cxGrid1DBTableView1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure dsEditNsiPartnerAfterOpen(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
    procedure dsDopInfoAfterPost(DataSet: TDataSet);
    procedure cxGridDBTableView1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGrid2DBTableView1F_VALUEGetPropertiesForEdit
      (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure cxGrid2DBTableView1F_VALUEGetProperties
      (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiParnerEdit: TFrmNsiParnerEdit;

implementation

uses
  uDm, upublic;
{$R *.dfm}

procedure TFrmNsiParnerEdit.BtnOKClick(Sender: TObject);
begin
  PostAllDS(self, true);
  inherited;
end;

procedure TFrmNsiParnerEdit.cxGrid1DBTableView1NavigatorButtonsButtonClick
  (Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  key: Integer;
begin
  key := 0;
  case AButtonIndex of
    6:
      begin
        key := GetNsiBank;
        if key > 0 then
        begin
          dsPartnerBanls.Insert;
          dsPartnerBanlsF_BANK.Value := key;
          dsPartnerBanlsF_PARTNER.Value := dsEditNsiPartnerF_ID.Value;
          dsPartnerBanls.Post;
          RefreshDs(dsPartnerBanls);
        end;
        ADone := true;
      end;
  else
    ADone := true;
  end;
end;

procedure TFrmNsiParnerEdit.cxGrid2DBTableView1F_VALUEGetProperties
  (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  info_id: Integer;
  editItem: TcxEditRepositoryItem;
begin
  if ARecord.ValueCount > 0 then
  begin
    if ARecord.Values[2] <> null then
    begin
      info_id := ARecord.Values[2];
      case info_id of
        11:
          begin
            editItem := dm.cxEditRepository.ItemByName
              ('cxEditRepositorydsPrice');
            if editItem <> nil then
            begin
              AProperties := editItem.Properties;
            end;
          end;
        12 .. 13:
          begin
            editItem := dm.cxEditRepository.ItemByName
              ('cxEditRepositoryDateItem1');
            if editItem <> nil then
            begin
              AProperties := editItem.Properties;
            end;
          end;
      end;
    end;
  end;
end;

procedure TFrmNsiParnerEdit.cxGrid2DBTableView1F_VALUEGetPropertiesForEdit
  (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  info_id: Integer;
  editItem: TcxEditRepositoryItem;
begin
  info_id := ARecord.Values[2];
  case info_id of
    11:
      begin
        editItem := dm.cxEditRepository.ItemByName('cxEditRepositorydsPrice');
        if editItem <> nil then
        begin
          AProperties := editItem.Properties;
        end;
      end;
    12 .. 13:
      begin
        editItem := dm.cxEditRepository.ItemByName('cxEditRepositoryDateItem1');
        if editItem <> nil then
        begin
          AProperties := editItem.Properties;
        end;
      end;
  end;
end;

procedure TFrmNsiParnerEdit.cxGridDBTableView1NavigatorButtonsButtonClick
  (Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  key: Integer;
begin
  key := 0;
  case AButtonIndex of
    6:
      begin
        key := GetNsiDiscountCard;
        if key > 0 then
        begin
          dsDiscountCards.Insert;
          dsDiscountCardsF_DISCOUNT_ID.Value := key;
          dsDiscountCardsF_PARTNER.Value := dsEditNsiPartnerF_ID.Value;
          dsDiscountCards.Post;
          RefreshDs(dsDiscountCards);
        end;
        ADone := true;
      end;
  else
    ADone := true;
  end;
end;

procedure TFrmNsiParnerEdit.dsDopInfoAfterPost(DataSet: TDataSet);
begin
  inherited;
  dsDopInfo.Transaction.CommitRetaining;
end;

procedure TFrmNsiParnerEdit.dsEditNsiPartnerAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsDiscountCards.Active := true;
  dsPartnerCard.Active := true;
  dsPartnerBanls.Active := true;
  dsListNames.Active := true;
  dsDopInfo.Active := true;
end;

end.
