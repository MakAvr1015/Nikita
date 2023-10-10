unit UFramBanner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FIBDataSet, pFIBDataSet, cxImage;

type
  TFramBanner = class(TFrame)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dsAnalogList: TpFIBDataSet;
    dsAnalogListF_GOOD: TFIBIntegerField;
    dsAnalogListF_GOOD_NAME: TFIBStringField;
    dsAnalogListF_GOOD_ARTICLE: TFIBStringField;
    dsAnalogListF_GOOD_MMEDIA: TFIBBlobField;
    dsAnalogListF_OST: TFIBStringField;
    cxGrid1DBTableAnalog: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsrAnalogList: TDataSource;
    cxGrid1DBTableAnalogF_GOOD: TcxGridDBColumn;
    cxGrid1DBTableAnalogF_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableAnalogF_GOOD_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableAnalogF_GOOD_MMEDIA: TcxGridDBColumn;
    cxGrid1DBTableAnalogF_OST: TcxGridDBColumn;
    procedure dsAnalogListCalcFields(DataSet: TDataSet);
    procedure dsAnalogListBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    v_Init  : boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses udm;

procedure TFramBanner.dsAnalogListBeforeOpen(DataSet: TDataSet);
var
  tf: tfloatfield;
begin
  if v_init<>true then
  begin
    dm.dsSklad.First;

    while not dm.dsSklad.Eof do
    begin
      tf:=TFloatField.Create(dsAnalogList);
      tf.Calculated:=true;
      tf.Index:=dsAnalogList.FieldCount;
      tf.FieldName:='Sklad_'+dm.dsSklad.FieldByName('f_id').AsString;
      tf.tag:=dm.dsSklad.FieldByName('f_id').AsInteger;
      tf.DataSet:=dsAnalogList;
      with cxGrid1DBTableAnalog.CreateColumn do
      begin
        DataBinding.FieldName:=tf.FieldName;
        Summary.FooterKind:=skSum;
        Caption:=dm.dsSklad.FieldByName('f_name').AsString;
      end;
      dm.dsSklad.Next;
    end;
    v_init:=true;
  end;
end;

procedure TFramBanner.dsAnalogListCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('f_ost').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    DataSet.FieldByName('Sklad_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
end;

end.
