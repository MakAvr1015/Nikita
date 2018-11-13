unit UFrmDocPriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, DB, FIBDataSet, pFIBDataSet, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, FIBDatabase,
  pFIBDatabase, cxPropertiesStore, RzForms, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode,
  frxDCtrl, frxDesgn, frxFIBComponents,xmldom, XMLIntf,msxmldom,XMLDoc,
  ComCtrls, ToolWin;

type
  TFrmDocPriceList = class(TFrmPrototype)
    dsPriceDocList: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    srPriceDocList: TDataSource;
    dsPriceDocListF_ID: TFIBBCDField;
    dsPriceDocListF_NUM: TFIBStringField;
    dsPriceDocListF_DATE: TFIBDateField;
    dsPriceDocListF_PARENT: TFIBBCDField;
    dsPriceDocListF_STATE: TFIBBCDField;
    dsPriceDocListF_PRICE: TFIBBCDField;
    dsPriceDocListF_PRICE_NAME: TFIBStringField;
    dsPriceDocListF_STATE_NAME: TFIBStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARENT: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    dsPriceDocListf_nacenka: TFIBBCDField;
    cxGrid1DBTableView1f_nacenka: TcxGridDBColumn;
    dsImportNsiPrice: TpFIBDataSet;
    dsImportNsiPriceF_ID: TFIBBCDField;
    spImportPriceDoc: TpFIBDataSet;
    spImportPriceDocF_ID: TFIBBCDField;
    spImportPriceDoc_str: TpFIBDataSet;
    OpenDialog: TOpenDialog;
    ToolBar1: TToolBar;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    procedure BtnNewClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure dsPriceDocListBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocPriceList: TFrmDocPriceList;

implementation
uses
  udm,upublic, UFrmPriceDoc;
{$R *.dfm}

procedure TFrmDocPriceList.BtnNewClick(Sender: TObject);
begin
  inherited;
  with TFrmPriceDoc.Create(Application.MainForm) do
  begin
    dsPriceDocHead.ParamByName('f_price_doc').Value:=-10;
    dsPriceDocHead.Active:=true;
    ShowAsChild;
  end;
end;

procedure TFrmDocPriceList.BtnOpenClick(Sender: TObject);
var
  base_id,i,j,k,id                          : integer;
  xmlDocument                               : TxmlDocument;
  NodeDocs,NewDoc,nodeBody,newPos,ValueDoc  : IXmlNode;
  docList                                   : IXmlNode;
  f_summ                                    : Currency;
  f_partner,f_good                          : integer;
  commitDocs                                : boolean;
begin
  if OpenDialog.Execute(self.Handle) then
  begin
    xmlDocument:=TxmlDocument.Create(self);
    xmlDocument.LoadFromFile(OpenDialog.FileName);
    xmlDocument.Active;

    docList:=xmlDocument.DocumentElement.ChildNodes['PriceDocs'];
    for I := 0 to docList.ChildNodes.Count - 1 do
    begin
      NodeDocs:=docList.ChildNodes[i];
      dsImportNsiPrice.Active:=false;
      dsImportNsiPrice.ParamByName('f_price_id').Value:=NodeDocs.Attributes['price_id'];
      dsImportNsiPrice.ParamByName('f_price_name').Value:=NodeDocs.Attributes['price_name'];
      dsImportNsiPrice.Active:=true;
      spImportPriceDoc.Active:=false;
      spImportPriceDoc.ParamByName('F_PRICE').Value:=dsImportNsiPriceF_id.Value;
      spImportPriceDoc.ParamByName('F_Number').Value:=NodeDocs.Attributes['f_number'];
      spImportPriceDoc.Active:=true;
      spImportPriceDoc_str.ParamByName('F_DOC_ID').Value:=spImportPriceDocF_id.Value;

      for j := 0 to NodeDocs.ChildNodes.Count - 1 do
      begin
        newPos:=nodeDocs.ChildNodes[j];
        spImportPriceDoc_str.Active:=false;
        NewDoc:=newPos.ChildNodes['article'];
//        New:=newPos.ChildNodes['article'];
        spImportPriceDoc_str.ParamByName('f_article').Value:=NewDoc.ChildNodes[0].NodeValue;
        NewDoc:=newPos.ChildNodes['name'];
        spImportPriceDoc_str.ParamByName('f_name').Value:=NewDoc.ChildNodes[0].NodeValue;
        NewDoc:=newPos.ChildNodes['f_value'];
        spImportPriceDoc_str.ParamByName('f_price').Value:=NewDoc.Text;
        spImportPriceDoc_str.ParamByName('F_EXT_ID').Value:=newPos.Attributes['id'];
        spImportPriceDoc_str.ParamByName('f_ext_base').Value:=base_id;
        spImportPriceDoc_str.Active:=true;
      end;
      spImportPriceDoc_str.Transaction.CommitRetaining;
    end;
  end;
  xmlDocument.Free;
end;

procedure TFrmDocPriceList.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  if not dsPriceDocListF_id.IsNull then
    RefreshDs(dsPriceDocList,'f_id',dsPriceDocListF_id.Value)
  else
    RefreshDs(dsPriceDocList);
end;

procedure TFrmDocPriceList.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  with TFrmPriceDoc.Create(Application.MainForm) do
  begin
    dsPriceDocHead.ParamByName('f_price_doc').Value:=dsPriceDocListF_ID.Value;
    dsPriceDocHead.Active:=true;
    ShowAsChild;
  end;
end;

procedure TFrmDocPriceList.dsPriceDocListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsPriceDocList.ParamByName('str_date').Value:=EditStr_date.Date;
  dsPriceDocList.ParamByName('end_date').Value:=EditEnd_date.Date;
end;

procedure TFrmDocPriceList.FormCreate(Sender: TObject);
begin
  inherited;
  Editstr_date.Date:=date;
  Editend_date.Date:=date;
end;

end.
