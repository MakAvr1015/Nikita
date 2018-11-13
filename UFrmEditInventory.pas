unit UFrmEditInventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, RzTabs,
  RzDBEdit, RzDBBnEd, StdCtrls, RzLabel, Mask, RzEdit, FIBDataSet, DBCtrls,
  RzDBCmbo, FIBDatabase, pFIBDatabase, pFIBDataSet, FIBQuery, pFIBQuery,
  pFIBStoredProc;

type
  TFrmEditInventory = class(TFrmPrototype)
    RzPanel1: TRzPanel;
    RzDBEdit1: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel5: TRzLabel;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzLabel2: TRzLabel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsListResult: TpFIBDataSet;
    dsDocHead: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    srDocHead: TDataSource;
    srListResult: TDataSource;
    RzLabel4: TRzLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    dsDocHeadF_NUMBER: TFIBStringField;
    dsDocHeadF_DATE_START: TFIBDateField;
    dsDocHeadF_DATE_COMPLETE: TFIBDateField;
    dsDocHeadF_SKLAD_NAME: TFIBStringField;
    dsDocHeadF_SKLAD: TFIBBCDField;
    dsDocHeadF_STATE: TFIBBCDField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsDocHeadF_INV: TFIBBCDField;
    dsListResultF_ID: TFIBBCDField;
    dsListResultF_GOOD: TFIBBCDField;
    dsListResultF_GOOD_NAME: TFIBStringField;
    dsListResultF_COUNT_PLAN: TFIBBCDField;
    dsListResultF_COUNT_FACT: TFIBBCDField;
    dsListResultF_INVENTORY: TFIBBCDField;
    cxGridDBTableView1F_ID: TcxGridDBColumn;
    cxGridDBTableView1F_GOOD: TcxGridDBColumn;
    cxGridDBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGridDBTableView1F_COUNT_PLAN: TcxGridDBColumn;
    cxGridDBTableView1F_COUNT_FACT: TcxGridDBColumn;
    cxGridDBTableView1F_INVENTORY: TcxGridDBColumn;
    dsListResultF_GOOD_ARTICLE: TFIBStringField;
    cxGridDBTableView1F_GOOD_ARTICLE: TcxGridDBColumn;
    dsListInventoryDocs: TpFIBDataSet;
    srListInventoryDocs: TDataSource;
    dsListInventoryDocsF_ID: TFIBBCDField;
    dsListInventoryDocsF_NUMBER: TFIBStringField;
    dsListInventoryDocsF_MANAGER: TFIBStringField;
    dsListInventoryDocsF_DOC_COUNT: TFIBBCDField;
    dsListInventoryDocsF_INVENTORY: TFIBBCDField;
    dsListInventoryDocsF_STATE: TFIBBCDField;
    dsListInventoryDocsF_STATE_NAME: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_MANAGER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_INVENTORY: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    PrcCalcInventory: TpFIBStoredProc;
    dsListResultF_DELTA: TFIBBCDField;
    cxGridDBTableView1F_DELTA: TcxGridDBColumn;
    RzToolbar1: TRzToolbar;
    BtnExecute1: TRzToolButton;
    BtnFinish: TRzToolButton;
    prcMakeSkladDocs: TpFIBStoredProc;
    dsExportInventory: TpFIBDataSet;
    SaveDialog: TSaveDialog;
    procedure TabSheet1Show(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnExecute1Click(Sender: TObject);
    procedure BtnFinishClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure RzDBButtonEdit2ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEditInventory: TFrmEditInventory;

implementation

{$R *.dfm}
uses
  Udm,uPublic,uDocClass,uFrmEditInventoryDoc;

procedure TFrmEditInventory.BtnEditClick(Sender: TObject);
begin
  with TFrmEditInventoryDoc.Create(Application.MainForm) do
  begin
    dsHeadDoc.ParamByName('F_INVentory_doc').Value:=self.dsListInventoryDocsF_ID.Value;
    dsHeadDoc.Active:=true;
    ShowAsChild;
  end;
end;

procedure TFrmEditInventory.BtnExecute1Click(Sender: TObject);
begin
  PrcCalcInventory.ParamByName('f_inventory_id').value:=self.dsDocHeadF_INV.Value;
  PrcCalcInventory.ExecProc;
  PrcCalcInventory.Transaction.CommitRetaining;
  RefreshDs(dsListResult);
end;

procedure TFrmEditInventory.BtnFinishClick(Sender: TObject);
begin
  MessageDlg('Внимание! Сформированные документы могут изменить ВСЕ оостатки на складе',mtWarning,[],0);
  prcMakeSkladDocs.ParamByName('f_inventory_id').value:=self.dsDocHeadF_INV.Value;
  prcMakeSkladDocs.ExecProc;
  prcMakeSkladDocs.Transaction.CommitRetaining;
  ShowMessage('Складские документы сформированы');
end;

procedure TFrmEditInventory.BtnNewClick(Sender: TObject);
begin
  with TFrmEditInventoryDoc.Create(Application.MainForm) do
  begin
    dsHeadDoc.ParamByName('F_INVENTORY_DOC').Value:=-10;
    dsHeadDoc.ParamByName('F_INV').Value:=self.dsDocHeadF_INV.Value;
    dsHeadDoc.Active:=true;
    ShowAsChild;
//    free;
  end;
end;

procedure TFrmEditInventory.BtnRefreshClick(Sender: TObject);
begin
  RefreshDs(dsListInventoryDocs);
end;

procedure TFrmEditInventory.BtnSaveClick(Sender: TObject);
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
    expFile.Add('<MoveDocs>');
    for I := 0 to cxGrid1DBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      dsExportInventory.Active:=false;
      dsExportInventory.ParamByName('p_id').Value:=self.dsDocHeadF_INV.Value;
      dsExportInventory.Active:=true;
      while not dsExportInventory.Eof do
      begin
        expFile.Add(dsExportInventory.FieldByName('r_value').AsString);
        dsExportInventory.Next;
      end;
    end;
    expFile.Add('</MoveDocs>');
    expFile.Add('</Export>');
    expFile.SaveToFile(SaveDialog.FileName);
    expFile.Free;
  end;
end;

procedure TFrmEditInventory.RzDBButtonEdit2ButtonClick(Sender: TObject);
var
  key : integer;
begin
  key:=GetNsiSklad;
  if key>0 then
  begin
    dsDocHead.Edit;
    dsDocHeadF_SKLAD.Value:=key;
    dsDocHead.Post;
    refreshDs(dsDocHead);
  end;
end;

procedure TFrmEditInventory.TabSheet1Show(Sender: TObject);
begin
  RefreshDs(dsListInventoryDocs);
end;

procedure TFrmEditInventory.TabSheet3Show(Sender: TObject);
begin
  RefreshDs(dsListResult);
end;

end.
