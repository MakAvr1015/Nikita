unit UFrmZakazList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPrototype, cxGraphics, cxControls,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, cxPropertiesStore, RzForms,
  frxClass, Vcl.Menus, cxTextEdit, cxMaskEdit, cxDropDownEdit, RzButton,
  RzPanel, Vcl.ExtCtrls, RzStatus, udm, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  Vcl.ComCtrls, FIBDatabase, pFIBDatabase, pFIBDataSet, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.ToolWin, frxExportRTF, frxExportPDF,
  frxExportXML, frxExportXLS, frxFIBComponents, frxChBox, frxTableObject,
  frxCross, frxRich, frxExportBaseDialog, frxExportDOCX, frxDCtrl, frxOLE,
  frxDesgn, frxBarcode, frxDBSet, System.ImageList, Vcl.ImgList;

type
  TFrmZakazList = class(TFrmPrototype)
    ToolBar1: TToolBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsListZakaz: TpFIBDataSet;
    srListZakaz: TDataSource;
    pFIBTransaction1: TpFIBTransaction;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    dsListZakazF_ID: TFIBBCDField;
    dsListZakazF_NUMBER: TFIBStringField;
    dsListZakazF_DATE: TFIBDateField;
    dsListZakazF_PARTNER: TFIBBCDField;
    dsListZakazF_PARTNER_NAME: TFIBStringField;
    dsListZakazF_STATE: TFIBBCDField;
    dsListZakazF_STATE_NAME: TFIBStringField;
    dsListZakazF_PRICE: TFIBBCDField;
    dsListZakazF_PRICE_NAME: TFIBStringField;
    dsListZakazF_USER: TFIBStringField;
    dsListZakazF_DESCR: TFIBStringField;
    dsListZakazF_CNT: TFIBBCDField;
    dsListZakazF_SUM: TFIBBCDField;
    dsListZakazF_DISCOUNT: TFIBBCDField;
    dsListZakazF_DISCOUNT_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_USER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DESCR: TcxGridDBColumn;
    cxGrid1DBTableView1F_CNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_DISCOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_DISCOUNT_SUM: TcxGridDBColumn;
    OpenDialog: TOpenDialog;
    procedure BtnRefreshClick(Sender: TObject);
    procedure dsListZakazBeforeOpen(DataSet: TDataSet);
    procedure BtnNewClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZakazList: TFrmZakazList;

implementation

uses
  UDocClass, Xml.XMLDoc, Xml.XMLIntf;

{$R *.dfm}

procedure TFrmZakazList.BtnNewClick(Sender: TObject);

 var
  key: integer;
begin
  key := -10;
  inherited;
  with TZakazDoc.Create(key) do
  begin
    OpenEditFrm;
  end;
end;

procedure TFrmZakazList.BtnOpenClick(Sender: TObject);
var
    xmlDocument                               : TxmlDocument;
    docList                                   : IXmlNode;
    i                                         : integer;
    vl_doc                                    : TZakazDoc;
    doc_id                                    : integer;
begin
  LogMsg('Начинаем загрузку');
  if OpenDialog.Execute then
  begin
    xmlDocument:=TxmlDocument.Create(self);
    LogMsg('Файл для загрузки:'+OpenDialog.FileName);
    xmlDocument.LoadFromFile(OpenDialog.FileName);
    xmlDocument.Active;
    docList:=xmlDocument.DocumentElement.ChildNodes['MoveDocs'];
    for I := 0 to docList.ChildNodes.Count - 1 do
    begin
      LogMsg('Загружаем заголовок документа');
      doc_id := -10;
      vl_doc := TZakazDoc.Create(doc_id);
      vl_doc.ImportXmlDoc(docList.ChildNodes[i]);
      vl_doc.Free;
    end;
  end;
end;

procedure TFrmZakazList.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  if not dsListZakazF_id.IsNull then
    RefreshDs(dsListZakaz, 'f_id', dsListZakazF_ID.value)
  else
    RefreshDs(dsListZakaz);

end;

procedure TFrmZakazList.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  key: integer;
begin
  key := dsListZakazF_ID.Value;
  inherited;
  with TZakazDoc.Create(key) do
  begin
    OpenEditFrm;
  end;
end;

procedure TFrmZakazList.dsListZakazBeforeOpen(DataSet: TDataSet);
begin
  dsListZakaz.ParamByName('Date_begin').Value := Editstr_date.Date;
  dsListZakaz.ParamByName('Date_end').Value := Editend_date.Date;
end;

procedure TFrmZakazList.FormCreate(Sender: TObject);
begin
  inherited;
  Editstr_date.Date:=date;
  Editend_date.Date:=date;
end;

end.
