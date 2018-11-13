unit UFrmConsole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxContainer, cxTextEdit, cxMemo, cxSplitter, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, pFIBScripter, FIBQuery,
  pFIBQuery, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Grids, DBGrids,
  IB_Services;

type
  TFrmConsole = class(TFrmPrototype)
    pFIBTransaction: TpFIBTransaction;
    pFIBScripter: TpFIBScripter;
    cxPageControl: TcxPageControl;
    cxTabSheetQuery: TcxTabSheet;
    cxTabSheetScrip: TcxTabSheet;
    cxSplitter1: TcxSplitter;
    cxMemoScript: TcxMemo;
    cxMemoQuery: TcxMemo;
    OpenDialog: TOpenDialog;
    DataSource1: TDataSource;
    pFIBDataSet: TpFIBDataSet;
    DBGrid1: TDBGrid;
    procedure pFIBDatabaseBeforeConnect(Database: TFIBDatabase;
      LoginParams: TStrings; var DoConnect: Boolean);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnExecuteClick(Sender: TObject);
    procedure pFIBDatabaseAfterConnect(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure pFIBTransactionAfterStart(Sender: TObject);
    procedure pFIBTransactionAfterEnd(EndingTR: TFIBTransaction;
      Action: TTransactionAction; Force: Boolean);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsole: TFrmConsole;

implementation
uses
  UDm,uPassword;

{$R *.dfm}

procedure TFrmConsole.BtnCancelClick(Sender: TObject);
begin
  if pFIBTransaction.Active then
    pFIBTransaction.RollbackRetaining;
end;

procedure TFrmConsole.BtnExecuteClick(Sender: TObject);
begin
  if not pFIBDataSet.Database.Connected then
  begin
      pFIBDataSet.Database.Connected:=true;
  end;
  if cxPageControl.ActivePage.Name='cxTabSheetQuery' then
  begin
    try
      if pFIBDataSet.Active then
      begin
        pFIBDataSet.DisableControls;
        pFIBDataSet.Active:=false;
        pFIBDataSet.EnableControls;
      end;
      pFIBDataSet.SelectSQL:=cxMemoQuery.Lines;
      pFIBDataSet.Transaction.Active:=false;
      pFIBDataSet.Active:=true;
    finally

    end;
  end;
  if cxPageControl.ActivePage.Name='cxTabSheetScrip' then
  begin
    try
      pFIBScripter.Script:=cxMemoScript.Lines;
      pFIBScripter.ExecuteScript();
    finally
    end;

  end;

end;

procedure TFrmConsole.BtnOKClick(Sender: TObject);
begin
//  inherited;
  if pFIBTransaction.Active then
    pFIBTransaction.CommitRetaining;
end;

procedure TFrmConsole.BtnOpenClick(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    if cxPageControl.ActivePage.Name='cxTabSheetQuery' then
    begin
//          cxMemoQuery.Lines.clear;
      try
        cxMemoQuery.Lines.LoadFromFile(OpenDialog.FileName);
      finally

      end;
    end;
    if cxPageControl.ActivePage.Name='cxTabSheetScrip' then
    begin
      try
        cxMemoScript.Lines.LoadFromFile(OpenDialog.FileName);
      finally

      end;

    end;
  end;
end;

procedure TFrmConsole.pFIBDatabaseAfterConnect(Sender: TObject);
begin
  inherited;
//  pFIBDatabase.DefaultTransaction.Active:=true;
end;

procedure TFrmConsole.pFIBDatabaseBeforeConnect(Database: TFIBDatabase;
  LoginParams: TStrings; var DoConnect: Boolean);
begin
  Database.DBName:=dm.pFIBDatabase.DBName;
  with TPasswordDlg.Create(Application) do
  begin
    Database.Connected:=false;
    EdBase.Text:=Database.DbName;
    EdBase.Enabled:=false;
    if ShowModal=mrOk then
    begin
      Database.ConnectParams.UserName:=EdUser.Text;
//      Database.ConnectParams.RoleName:=EdRole.Text;
      Database.ConnectParams.Password:=Password.Text;
      DoConnect:=true;
{      try
        Database.Connected:=true;

{      except
        on E: Exception do
        begin
          MessageDlg(E.Message,mtError,[],E.HelpContext);
        end;
      end;}
    end;
    free;
  end;
//  inherited;

end;

procedure TFrmConsole.pFIBTransactionAfterEnd(EndingTR: TFIBTransaction;
  Action: TTransactionAction; Force: Boolean);
begin
  BtnOK.Enabled:=false;
  BtnCancel.Enabled:=false;
end;

procedure TFrmConsole.pFIBTransactionAfterStart(Sender: TObject);
begin
  BtnOK.Enabled:=true;
  BtnCancel.Enabled:=true;
end;

end.
