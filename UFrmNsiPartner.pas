unit UFrmNsiPartner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, udm, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, pFIBDataSet,
  Menus, RzStatus, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, cxPropertiesStore, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxContainer,
  System.ImageList, Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxDateRanges, dxScrollbarAnnotations, dxShellDialogs;

type
  TFrmNsiPartner = class(TFrmPrototype)
    dsNsiPartner: TpFIBDataSet;
    srNsiPartner: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsNsiPartnerF_ID: TFIBBCDField;
    dsNsiPartnerF_NAME: TFIBStringField;
    dsNsiPartnerF_U_NAME: TFIBStringField;
    dsNsiPartnerF_U_ADDRES: TFIBStringField;
    dsNsiPartnerF_INN: TFIBStringField;
    dsNsiPartnerF_KPP: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_U_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_U_ADDRES: TcxGridDBColumn;
    cxGrid1DBTableView1F_INN: TcxGridDBColumn;
    cxGrid1DBTableView1F_KPP: TcxGridDBColumn;
    dsNsiPartnerF_PROP: TStringField;
    dsPartnerProp: TpFIBDataSet;
    dsNsiPartnerF_DISCOUNT: TFIBBCDField;
    dsNsiPartnerF_PAY_DAY: TFIBBCDField;
    dsNsiPartnerF_MAX_DEB: TFIBBCDField;
    cxGrid1DBTableView1F_DISCOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_PAY_DAY: TcxGridDBColumn;
    cxGrid1DBTableView1F_MAX_DEB: TcxGridDBColumn;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsNsiPartnerCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure EditPartner;
  public
    { Public declarations }
  end;

var
  FrmNsiPartner: TFrmNsiPartner;

implementation

uses
  UFrmNsiParnerEdit, uPublic;
{$R *.dfm}

procedure TFrmNsiPartner.BtnEditClick(Sender: TObject);
begin
  inherited;
  EditPartner;
end;

procedure TFrmNsiPartner.BtnNewClick(Sender: TObject);
begin
  inherited;
  with TFrmNsiParnerEdit.Create(self) do
  begin
    dsEditNsiPartner.ParamByName('NSI_ID').value:=-10;
    dsEditNsiPartner.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiPartner.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiPartner.Post;
      end;
      dsEditNsiPartner.Transaction.CommitRetaining;
    end;
    free;
  end;
end;

procedure TFrmNsiPartner.BtnOpenClick(Sender: TObject);
begin
  inherited;
  StartImport(@dsNsiPartner);
end;

procedure TFrmNsiPartner.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  refreshDS(dsNsiPartner);
end;

procedure TFrmNsiPartner.dsNsiPartnerCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('f_prop').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    DataSet.FieldByName('Prop_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
end;

procedure TFrmNsiPartner.EditPartner;
begin
  with TFrmNsiParnerEdit.Create(self) do
  begin
    dsEditNsiPartner.ParamByName('NSI_ID').Value:=dsNsiPartnerF_ID.Value;
    dsEditNsiPartner.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiPartner.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiPartner.Post;
      end;
      dsEditNsiPartner.Transaction.CommitRetaining;
      refreshDS(dsNsiPartner,'F_ID');
    end;
    free;
  end;
end;

procedure TFrmNsiPartner.FormCreate(Sender: TObject);
var
  tf: tStringfield;
  editItem: TcxEditRepositoryItem;
begin

  dsPartnerProp.active := true;
  dsPartnerProp.First;

  while not dsPartnerProp.Eof do
  begin
    tf:=TStringField.Create(dsNsiPartner);
    tf.Calculated:=true;
    tf.Index:=dsNsiPartner.FieldCount;
    tf.FieldName:='Prop_'+dsPartnerProp.FieldByName('prop_id').AsString;
    tf.Size := 100;
    tf.tag:=dsPartnerProp.FieldByName('prop_id').AsInteger;
    tf.DataSet:=dsNsiPartner;
    with cxGrid1DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
      Caption:=dsPartnerProp.FieldByName('prop_name').AsString;
case tf.tag of
    11:
      begin
        editItem := dm.cxEditRepository.ItemByName('cxEditRepositorydsPrice');
        if editItem <> nil then
        begin
          Properties := editItem.Properties;
        end;
      end;
    12 .. 13:
      begin
        editItem := dm.cxEditRepository.ItemByName('cxEditRepositoryDateItem1');
        if editItem <> nil then
        begin
          Properties := editItem.Properties;
        end;
      end;
    21:
      begin
        editItem := dm.cxEditRepository.ItemByName
          ('cxEditRepositoryCurrencyItem1');
        if editItem <> nil then
        begin
          Properties := editItem.Properties;
        end;
      end;
    22, 14, 15:
      begin
        editItem := dm.cxEditRepository.ItemByName
          ('cxEditRepositoryCheckBoxItem1');
        if editItem <> nil then
        begin
          Properties := editItem.Properties;
        end;
      end;
  end;

    end;
    dsPartnerProp.Next;
  end;
  inherited;
end;

end.
