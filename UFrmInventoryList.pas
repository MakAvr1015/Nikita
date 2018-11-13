unit UFrmInventoryList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet,
  pFIBDataSet,xmldom, XMLIntf, msxmldom,XMLDoc, FIBDatabase, pFIBDatabase,
  FIBQuery, pFIBQuery, pFIBStoredProc;

type
  TFrmInventoryList = class(TFrmPrototype)
    dsInventoryList: TpFIBDataSet;
    srInventoryList: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsInventoryListF_ID: TFIBBCDField;
    dsInventoryListF_NUMBER: TFIBStringField;
    dsInventoryListF_DATE_START: TFIBDateField;
    dsInventoryListF_DATE_COMPLETE: TFIBDateField;
    dsInventoryListF_SKLAD_NAME: TFIBStringField;
    dsInventoryListF_SKLAD: TFIBBCDField;
    dsInventoryListF_STATE: TFIBBCDField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE_START: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE_COMPLETE: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    OpenDialog: TOpenDialog;
    pFIBTransaction: TpFIBTransaction;
    dsInventory: TpFIBDataSet;
    dsInventoryDoc: TpFIBDataSet;
    prInventoryStr: TpFIBStoredProc;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventoryList: TFrmInventoryList;

implementation

{$R *.dfm}
uses
  udm,uPublic,uDocClass;

procedure TFrmInventoryList.BtnEditClick(Sender: TObject);
var
  key : integer;
begin
  key:=dsInventoryListF_ID.Value;
  inherited;
  with TInventoryDoc.Create(key) do
  begin
    OpenEditFrm;
  end;
end;

procedure TFrmInventoryList.BtnNewClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  inherited;
  with TInventoryDoc.Create(key) do
  begin
    OpenEditFrm;
  end;
end;

procedure TFrmInventoryList.BtnOpenClick(Sender: TObject);
var
  base_id,sklad_id,i,j,k                    : integer;
  xmlDocument                               : TxmlDocument;
  NodeDocs,NewDoc,nodeBody,newPos,ValueDoc  : IXmlNode;
  docList,InventoryDoc                      : IXmlNode;
  f_summ                                    : Currency;
begin
  base_id:=GetImportBase;
  sklad_id:=GetNsiSklad;
  if OpenDialog.Execute(self.Handle) then
  begin
    xmlDocument:=TxmlDocument.Create(self);
    xmlDocument.LoadFromFile(OpenDialog.FileName);
    xmlDocument.Active;
    docList:=xmlDocument.DocumentElement.ChildNodes['MoveDocs'];
    for I := 0 to docList.ChildNodes.Count - 1 do
    begin
      if docList.ChildNodes[i].NodeName='Inventory' then
      begin
        NodeDocs:=docList.ChildNodes[i];
        dsInventory.Active:=false;
        dsInventory.ParamByName('F_INVENTORY').Value:=-10;
        dsInventory.Active:=true;
        NewDoc:=NodeDocs.ChildNodes['wbNumber'];
        dsInventory.Edit;
        dsInventory.FieldByName('f_number').AsString:=NewDoc.Text;
        dsInventory.FieldByName('f_sklad').Value:=sklad_id;
        NewDoc:=NodeDocs.ChildNodes['wbDate'];
        dsInventory.FieldByName('f_date_start').Value:=NewDoc.Text;
        dsInventory.Post;
        dsInventory.Transaction.CommitRetaining;
        for j := 0 to docList.ChildNodes[i].ChildNodes.Count - 1 do
        begin
          if docList.ChildNodes[i].ChildNodes[j].NodeName='InventoryDoc' then
          begin
            InventoryDoc:=docList.ChildNodes[i].ChildNodes[j];
            dsInventoryDoc.Active:=false;
            dsInventoryDoc.ParamByName('f_inv').Value:=dsInventory.FieldByName('f_inv').Value;
            dsInventoryDoc.ParamByName('F_INVENTORY_DOC').Value:=-10;
            dsInventoryDoc.Active:=true;
            dsInventoryDoc.Edit;
            dsInventoryDoc.FieldByName('f_number').Value:=InventoryDoc.ChildNodes['wbNumber'].Text;
            dsInventoryDoc.FieldByName('f_manager').Value:=InventoryDoc.ChildNodes['Manager'].Text;
            dsInventoryDoc.Post;
            dsInventoryDoc.Transaction.CommitRetaining;
            prInventoryStr.ParamByName('f_doc_id').Value:=dsInventoryDoc.FieldByName('f_inv_doc').Value;
            prInventoryStr.ParamByName('f_ext_base').Value:=base_id;

            for k := 0 to InventoryDoc.ChildNodes.Count - 1 do
            begin
              if InventoryDoc.ChildNodes[k].NodeName='Pos' then
              begin
                prInventoryStr.ParamByName('f_name').Value:=InventoryDoc.ChildNodes[k].ChildNodes['Good'].ChildNodes['name'].Text;
                prInventoryStr.ParamByName('f_article').Value:=InventoryDoc.ChildNodes[k].ChildNodes['Good'].ChildNodes['article'].Text;
                prInventoryStr.ParamByName('f_ext_id').Value:=InventoryDoc.ChildNodes[k].ChildNodes['Good'].Attributes['id'];
                prInventoryStr.ParamByName('f_count').Value:=InventoryDoc.ChildNodes[k].ChildNodes['Kol'].Text;
                prInventoryStr.ExecProc;
                prInventoryStr.Transaction.CommitRetaining;
              end;
            end;
          end;          
        end;
      end;
    end;
    xmlDocument.Free;
  end;
end;

procedure TFrmInventoryList.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  RefreshDs(dsInventoryList);
end;

end.
