unit UFrmMrkActions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPrototype, cxClasses,
  cxPropertiesStore, RzForms, frxClass, Vcl.Menus, RzButton, RzPanel,
  Vcl.ExtCtrls, RzStatus, Data.DB, FIBDataSet, pFIBDataSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxCustomListBox, cxListBox, cxDBEdit, cxNavigator,
  cxDBNavigator, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxCurrencyEdit, dxLayoutControl;

type
  TFrmMrkActions = class(TFrmPrototype)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    srActList: TDataSource;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem6: TdxLayoutItem;
    cxDBListBox1: TcxDBListBox;
    dxLayoutItem7: TdxLayoutItem;
    dsActList: TpFIBDataSet;
    dsActListF_ID: TFIBBCDField;
    dsActListF_NAME: TFIBStringField;
    dsActListF_DESCR: TFIBStringField;
    dsActListF_START_DATE: TFIBDateField;
    dsActListF_END_DATE: TFIBDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMrkActions: TFrmMrkActions;

implementation
  Uses
    uPublic,udm;
{$R *.dfm}

end.
