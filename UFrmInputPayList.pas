unit UFrmInputPayList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel, ExtCtrls, RzStatus,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, FIBDataSet,
  pFIBDataSet, RzForms, cxPropertiesStore, ComCtrls, ToolWin;

type
  TFrmInputPayList = class(TFrmPrototype)
    dsInputMoneyList: TpFIBDataSet;
    dsInputMoneyListF_ID: TFIBBCDField;
    dsInputMoneyListF_SKLAD: TFIBBCDField;
    dsInputMoneyListF_PARTNER: TFIBBCDField;
    dsInputMoneyListF_PARTNER_NAME: TFIBStringField;
    dsInputMoneyListF_BANK: TFIBBCDField;
    dsInputMoneyListF_BANK_NAME: TFIBStringField;
    dsInputMoneyListF_NUMBER: TFIBStringField;
    dsInputMoneyListF_DATE: TFIBDateField;
    dsInputMoneyListF_STATE_NAME: TFIBStringField;
    dsInputMoneyListF_STATE: TFIBBCDField;
    dsInputMoneyListF_SUMMA: TFIBFloatField;
    dsInputMoneyListF_TYPE_NAME: TFIBStringField;
    dsInputMoneyListF_TYPE: TFIBBCDField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    srInputMoneyList: TDataSource;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK: TcxGridDBColumn;
    cxGrid1DBTableView1F_BANK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_SUMMA: TcxGridDBColumn;
    cxGrid1DBTableView1F_TYPE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_TYPE: TcxGridDBColumn;
    MnNewMoneyIn: TPopupMenu;
    dsInputMoneyListF_DOC_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn;
    ToolBar1: TToolBar;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    dsInputMoneyListF_USER: TFIBStringField;
    cxGrid1DBTableView1F_USER: TcxGridDBColumn;
    dsPayTypes: TpFIBDataSet;
    procedure BtnEditClick(Sender: TObject);
    procedure NewDoc(sender : Tobject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dsInputMoneyListBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInputPayList: TFrmInputPayList;

implementation
uses
 uDM,uPublic,UdocClass;
{$R *.dfm}

procedure TFrmInputPayList.BtnEditClick(Sender: TObject);
var
  key : integer;
begin
  key:=dsInputMoneyListF_ID.Value;
  inherited;
  with TInputPay.Create(key) do
  begin
    doc_type:=dsInputMoneyListF_TYPE.value;
    OpenEditFrm;
  end;
end;

procedure TFrmInputPayList.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  if not dsInputMoneyListF_id.IsNull then
    RefreshDs(dsInputMoneyList,'f_id',dsInputMoneyListF_id.Value)
  else
    RefreshDs(dsInputMoneyList);
end;

procedure TFrmInputPayList.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_DOC_SUM.Index]<=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_SUMMA.Index]) then
  begin
    ACanvas.Font.Color:=clGreen;
  end;
  if (AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_DOC_SUM.Index]>AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_SUMMA.Index]) then
  begin
    ACanvas.Font.Color:=clRed;
  end;
end;

procedure TFrmInputPayList.dsInputMoneyListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsInputMoneyList.ParamByName('str_date').Value:=EditStr_date.Date;
  dsInputMoneyList.ParamByName('end_date').Value:=EditEnd_date.Date;
end;

procedure TFrmInputPayList.FormCreate(Sender: TObject);
var
  popupItem : TmenuItem;
begin
  inherited;
  Editstr_date.Date:=date;
  Editend_date.Date:=date;
  dsPayTypes.Active:=true;
  dsPayTypes.First;
  while not dsPayTypes.Eof do
  begin
    popupItem:=TmenuItem.Create(self);
    popupItem.Tag:=dsPayTypes.FieldByName('f_id').AsInteger;
    popupItem.Caption:=dsPayTypes.FieldByName('f_name').AsString;
    popupItem.OnClick:=NewDoc;
    MnNewMoneyIn.Items.Add(popupItem);
    dsPayTypes.Next;
  end;

end;

procedure TFrmInputPayList.NewDoc(sender: Tobject);
var
  key : integer;
begin
  key:=-10;
  inherited;
  with TInputPay.Create(key) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

end.
