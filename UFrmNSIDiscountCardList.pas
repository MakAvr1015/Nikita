unit UFrmNSIDiscountCardList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FIBDataSet, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, pFIBDataSet, xmldom, XMLIntf, msxmldom,XMLDoc,
  FIBQuery, pFIBQuery, pFIBStoredProc;

type
  TFrmNSIDiscountCardList = class(TFrmPrototype)
    dsNsiDiscountCard: TpFIBDataSet;
    srNsiDiscountCard: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsNsiDiscountCardF_ID: TFIBBCDField;
    dsNsiDiscountCardF_NUMBER: TFIBStringField;
    dsNsiDiscountCardF_DISCOUNT: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DISCOUNT: TcxGridDBColumn;
    OpenDialog: TOpenDialog;
    spImportDiscountCard: TpFIBStoredProc;
    dsExportDoc: TpFIBDataSet;
    dsExportDocF_VALUE: TFIBStringField;
    SaveDialog: TSaveDialog;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNSIDiscountCardList: TFrmNSIDiscountCardList;

implementation

{$R *.dfm}
uses
  udm, upublic, uFrmNsiDiscount;
procedure TFrmNSIDiscountCardList.BtnEditClick(Sender: TObject);
begin
  if not self.dsNsiDiscountCardF_NUMBER.IsNull then
    with TFrmNsiDiscount.Create(Application.MainForm) do
    begin
      dsNsiDiscountCard.ParamByName('f_number').Value:=self.dsNsiDiscountCardF_NUMBER.Value;
      if ShowAsDialog then
        refreshDs(self.dsNsiDiscountCard);
      free;
    end;
end;

procedure TFrmNSIDiscountCardList.BtnNewClick(Sender: TObject);
begin
  with TFrmNsiDiscount.Create(Application.MainForm) do
  begin
    dsNsiDiscountCard.SQLs.SelectSQL:=dsNsiDiscountCard.SQLs.InsertSQL;
//    dsNsiDiscountCard.Active:=true;
    if ShowAsDialog then
      refreshDs(self.dsNsiDiscountCard);
    free;
  end;
end;

procedure TFrmNSIDiscountCardList.BtnOpenClick(Sender: TObject);
var
  base_id,sklad_id,i,j,k,id,res              : integer;
  xmlDocument                               : TxmlDocument;
  NodeDocs,NewDoc,nodeBody,newPos,ValueDoc  : IXmlNode;
  docList                                   : IXmlNode;
  f_summ                                    : Currency;
  f_partner,f_good                          : integer;

begin
  LogMsg('Начинаем загрузку');
  if OpenDialog.Execute(self.Handle) then
  begin
    xmlDocument:=TxmlDocument.Create(self);
    xmlDocument.LoadFromFile(OpenDialog.FileName);
    xmlDocument.Active;
    docList:=xmlDocument.DocumentElement.ChildNodes['NSI_DISCOUNT_CARDS'];
    for I := 0 to docList.ChildNodes.Count - 1 do
    begin
      LogMsg('Загружаем строку справочника');
      NodeDocs:=docList.ChildNodes[i];
      spImportDiscountCard.ParamByName('f_number').Value:=NodeDocs.Attributes['NUMBER'];
      spImportDiscountCard.ParamByName('f_discount').Value:=NodeDocs.Attributes['DISCOUNT'];
      spImportDiscountCard.ExecProc;
      spImportDiscountCard.Transaction.CommitRetaining;
    end;
  end;
end;

procedure TFrmNSIDiscountCardList.BtnSaveClick(Sender: TObject);
var
  i         : integer;
  ARowIndex : Integer;
  ARowInfo  : TcxRowInfo;
  expFile   : TstringList;
begin
  inherited;
  if SaveDialog.Execute(self.Handle) then
  begin
    expFile:=TstringList.Create;
    expFile.Add('<?xml version="1.0" encoding="windows-1251"?>');
    expFile.Add('<Export>');
    dsExportDoc.Active:=true;
    while not dsExportDoc.Eof do
    begin
      expFile.Add(dsExportDocF_VALUE.AsString);
      dsExportDoc.Next;
    end;
    expFile.Add('</Export>');
    expFile.SaveToFile(SaveDialog.FileName);
    expFile.Free;
  end;
end;

end.
