unit UFrmDocInpList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, ExtCtrls, RzButton, Grids, DBGrids, RzDBGrid,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FIBDataSet, FIBDatabase, pFIBDatabase, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, pFIBDataSet, Menus, RzStatus, frxClass,
  frxFIBComponents, frxDesgn, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  xmldom, XMLIntf, msxmldom, XMLDoc, FIBQuery, pFIBQuery, pFIBStoredProc,
  RzForms,
  cxPropertiesStore, StdCtrls, ComCtrls, ToolWin, cxLookAndFeels,
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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, System.ImageList, Vcl.ImgList,
  frxDBSet;

type
  TFrmListInputDocs = class(TFrmPrototype)
    dsDocList: TpFIBDataSet;
    srDocList: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pFIBTransaction: TpFIBTransaction;
    dsDocListF_SKLAD: TFIBBCDField;
    dsDocListF_PARTNER: TFIBBCDField;
    dsDocListF_NUMBER: TFIBStringField;
    dsDocListF_DATE: TFIBDateField;
    dsDocListF_STATE: TFIBBCDField;
    cxGrid1DBTableView1F_SKLAD: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    dsDocListF_SKLAD_NAME: TFIBStringField;
    dsDocListF_PARTNER_NAME: TFIBStringField;
    dsDocListF_STATE_NAME: TFIBStringField;
    cxGrid1DBTableView1F_SKLAD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    dsDocListF_DOC_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn;
    dsDocListF_DOC_COUNT: TFIBFloatField;
    cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn;
    dsDocListF_DOC_TYPE: TFIBBCDField;
    dsDocListF_DOC_TYPE_NAME: TFIBStringField;
    cxGrid1DBTableView1F_DOC_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_TYPE_NAME: TcxGridDBColumn;
    OpenDialog: TOpenDialog;
    dsImportDoc: TpFIBDataSet;
    dsExportDoc: TpFIBDataSet;
    dsExportDocF_VALUE: TFIBStringField;
    SaveDialog: TSaveDialog;
    spImportPriceDoc: TpFIBDataSet;
    spImportPriceDoc_str: TpFIBDataSet;
    dsImportNsiPrice: TpFIBDataSet;
    spImportPriceDocF_ID: TFIBBCDField;
    dsImportNsiPriceF_ID: TFIBBCDField;
    spInsDocStr: TpFIBStoredProc;
    dsDocListF_DOC_IN: TFIBBCDField;
    cxGrid1DBTableView1F_DOC_IN: TcxGridDBColumn;
    ToolBar1: TToolBar;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    dsDocListF_USER: TFIBStringField;
    cxGrid1DBTableView1F_USER: TcxGridDBColumn;
    MemoLog: TMemo;
    dsStoreCalcCource: TpFIBStoredProc;
    dsDocListF_OWNER: TFIBBCDField;
    dsDocListF_OWNER_NAME: TFIBStringField;
    cxGrid1DBTableView1F_OWNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_OWNER_NAME: TcxGridDBColumn;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure dsDocListBeforeOpen(DataSet: TDataSet);
    procedure BtnViewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListInputDocs: TFrmListInputDocs;

implementation

uses
  uDocClass, udm, upublic, uDlgImportInputDoc;

{$R *.dfm}

procedure TFrmListInputDocs.BtnEditClick(Sender: TObject);
var
  key: integer;
begin
  key := dsDocListF_DOC_IN.Value;
  inherited;
  with TInputDoc.Create(key) do
  begin
    doc_type := dsDocListF_DOC_TYPE.Value;
    OpenEditFrm;
  end;
end;

procedure TFrmListInputDocs.BtnNewClick(Sender: TObject);
var
  key: integer;
begin
  key := -10;
  inherited;
  with TInputDoc.Create(key) do
  begin
    doc_type := (Sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

procedure TFrmListInputDocs.BtnOpenClick(Sender: TObject);
var
  base_id, i, j, k, id: integer;
  xmlDocument: TxmlDocument;
  NodeDocs, NewDoc, nodeBody, newPos, ValueDoc: IXmlNode;
  docList: IXmlNode;
  f_summ: Currency;
  f_cource: Currency;
  f_partner, f_good: integer;
  commitDocs: boolean;
  fileName: string;
begin
  commitDocs := false;
  base_id := GetImportBase;
  with TDlgImportInputDoc.Create(Application.MainForm) do
  begin
    if ShowModal = mrOk then
    begin

      fileName := OpenDialog.fileName;
      commitDocs := CheckExecDoc.Checked;
      f_cource := EditCource.Value;
      if not SysUtils.FileExists(fileName) then
      begin
        ShowMessage('Не выбран файл загрузки');
        exit;
      end;
      // end;
      // free;
      // end;

      // if OpenDialog.Execute(self.Handle) then
      // begin
      // if MessageDlg('Проводить документы после загрузки?',mtConfirmation,[mbYes,mbNo],0) = 6 then
      // commitDocs:=true;
      // fileName:=OpenDialog.FileName;
      xmlDocument := TxmlDocument.Create(self);
      xmlDocument.LoadFromFile(fileName);
      xmlDocument.Active;
      docList := xmlDocument.DocumentElement.ChildNodes['MoveDocs'];
      try
        if not dm.IdFTP.Connected then
          dm.IdFTP.Connect;
      except

      end;
      for i := 0 to docList.ChildNodes.Count - 1 do
      begin

        NodeDocs := docList.ChildNodes[i];
        NewDoc := NodeDocs.ChildNodes['T_NSI_PARTNER'];
        f_partner := dm.ImportPartner(NewDoc, base_id);
        dsImportDoc.Active := false;
        MemoLog.Lines.Add('Начинаем загрузку документа');
        dsImportDoc.ParamByName('f_partner').Value := f_partner;
        // spImportPartner.FieldByName('f_id').Value;
        dsImportDoc.ParamByName('f_doc_type').Value := NodeDocs.Attributes
          ['DocType'];
        dsImportDoc.ParamByName('f_ext_id').Value := NodeDocs.Attributes['Id'];
        MemoLog.Lines.Add('ID документа из файла - ' + dsImportDoc.ParamByName
          ('f_ext_id').AsString);
        dsImportDoc.ParamByName('f_ext_base').Value := base_id;
        NewDoc := NodeDocs.ChildNodes['DocUser'];
        dsImportDoc.ParamByName('f_user').Value := NewDoc.Text;

        NewDoc := NodeDocs.ChildNodes['wbNumber'];
        dsImportDoc.ParamByName('f_number').Value := NewDoc.Text;
        MemoLog.Lines.Add('номер документа из файла - ' +
          dsImportDoc.ParamByName('f_number').AsString);
        NewDoc := NodeDocs.ChildNodes['wbDate'];
        dsImportDoc.ParamByName('f_date').Value := NewDoc.Text;
        dsImportDoc.Active := true;
        MemoLog.Lines.Add('Заголовок документа загружен');
        nodeBody := NodeDocs.ChildNodes['DocBody'];
        spInsDocStr.ParamByName('f_doc_in').Value :=
          dsImportDoc.FieldByName('f_id').Value;
        for j := 0 to nodeBody.ChildNodes.Count - 1 do
        begin
          newPos := nodeBody.ChildNodes[j];
          f_summ := StrToCurr(newPos.ChildNodes['Summ'].Text);

          spInsDocStr.ParamByName('f_cnt').Value := newPos.ChildNodes
            ['Kol'].Text;
          spInsDocStr.ParamByName('f_sum').Value := newPos.ChildNodes
            ['Summ'].Text;
          spInsDocStr.ParamByName('f_price_val').Value := f_summ /
            spInsDocStr.ParamByName('f_cnt').Value;

          NewDoc := newPos.ChildNodes['T_NSI_GOOD'];
          f_good := dm.ImportGood(NewDoc, base_id);
          spInsDocStr.ParamByName('f_good').Value := f_good;
          spInsDocStr.ExecProc;

          MemoLog.Lines.Add('Позиция загружена');
        end;

        dsImportDoc.Transaction.CommitRetaining;
        id := dsImportDoc.FieldByName('f_id').AsInteger;
        if commitDocs then
        begin
          with TInputDoc.Create(id) do
          begin
            ChangeState(3);
            free;
          end;
        end;
      end;
      try
        if dm.IdFTP.Connected then
          dm.IdFTP.Disconnect;
      except

      end;

      docList := xmlDocument.DocumentElement.ChildNodes['PriceDocs'];
      for i := 0 to docList.ChildNodes.Count - 1 do
      begin
        NodeDocs := docList.ChildNodes[i];
        dsImportNsiPrice.Active := false;
        dsImportNsiPrice.ParamByName('f_price_id').Value := NodeDocs.Attributes
          ['price_id'];
        dsImportNsiPrice.ParamByName('f_price_name').Value :=
          NodeDocs.Attributes['price_name'];
        dsImportNsiPrice.Active := true;
        spImportPriceDoc.Active := false;
        spImportPriceDoc.ParamByName('F_PRICE').Value :=
          dsImportNsiPriceF_ID.Value;
        spImportPriceDoc.ParamByName('F_Number').Value := NodeDocs.Attributes
          ['f_number'];
        spImportPriceDoc.Active := true;
        spImportPriceDoc_str.ParamByName('F_DOC_ID').Value :=
          spImportPriceDocF_ID.Value;

        for j := 0 to NodeDocs.ChildNodes.Count - 1 do
        begin
          newPos := NodeDocs.ChildNodes[j];
          spImportPriceDoc_str.Active := false;
          NewDoc := newPos.ChildNodes['article'];
          // New:=newPos.ChildNodes['article'];
          spImportPriceDoc_str.ParamByName('f_article').Value :=
            NewDoc.ChildNodes[0].NodeValue;
          NewDoc := newPos.ChildNodes['name'];
          spImportPriceDoc_str.ParamByName('f_name').Value :=
            NewDoc.ChildNodes[0].NodeValue;
          NewDoc := newPos.ChildNodes['f_value'];
          spImportPriceDoc_str.ParamByName('f_price').Value := NewDoc.Text;
          spImportPriceDoc_str.ParamByName('F_EXT_ID').Value :=
            newPos.Attributes['id'];
          spImportPriceDoc_str.ParamByName('f_ext_base').Value := base_id;
          spImportPriceDoc_str.Active := true;
        end;
        spImportPriceDoc_str.Transaction.CommitRetaining;
      end;

      xmlDocument.free;
      if (EditCource.Value > 0) and CheckCalcCurrency.Checked then
      begin
        dsStoreCalcCource.ParamByName('p_doc_id').Value :=
          dsImportDoc.FieldByName('f_id').Value;
        dsStoreCalcCource.ParamByName('P_CURR_COURCE').Value :=
          EditCource.Value;
        dsStoreCalcCource.ExecProc;
        dsStoreCalcCource.Transaction.CommitRetaining;
      end;
    end;
    dm.refreshNsiGood := true;
    dm.TimerRefreshNsiGoodTimer(Sender);

    ShowMessage('Загрузка завершена');

    free;
  end;
end;

procedure TFrmListInputDocs.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  if not dsDocListF_DOC_IN.IsNull then
    RefreshDs(dsDocList, 'f_doc_in', dsDocListF_DOC_IN.Value)
  else
    RefreshDs(dsDocList);
end;

procedure TFrmListInputDocs.BtnSaveClick(Sender: TObject);
var
  i: integer;
  ARowIndex: integer;
  ARowInfo: TcxRowInfo;
  expFile: TstringList;
begin
  inherited;
  if SaveDialog.Execute(self.Handle) then
  begin
    expFile := TstringList.Create;
    expFile.Add('<?xml version="1.0" encoding="windows-1251"?>');
    expFile.Add('<Export>');
    expFile.Add('<MoveDocs>');
    for i := 0 to cxGrid1DBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      dsExportDoc.Active := false;
      ARowIndex := cxGrid1DBTableView1.DataController.GetSelectedRowIndex(i);
      ARowInfo := cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);
      dsExportDoc.ParamByName('f_id').Value :=
        cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,
        cxGrid1DBTableView1F_DOC_IN.Index);
      dsExportDoc.Active := true;
      while not dsExportDoc.Eof do
      begin
        expFile.Add(dsExportDocF_VALUE.AsString);
        dsExportDoc.Next;
      end;
    end;
    expFile.Add('</MoveDocs>');
    expFile.Add('</Export>');
    expFile.SaveToFile(SaveDialog.fileName);
    expFile.free;
  end;
end;

procedure TFrmListInputDocs.BtnViewClick(Sender: TObject);
begin
  inherited;
  ShowDoc('T_DOC_IN', dsDocListF_DOC_IN.Value);
end;

procedure TFrmListInputDocs.dsDocListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocList.ParamByName('str_date').Value := Editstr_date.Date;
  dsDocList.ParamByName('end_date').Value := Editend_date.Date;
end;

procedure TFrmListInputDocs.FormCreate(Sender: TObject);
begin
  inherited;
  Editstr_date.Date := Date;
  Editend_date.Date := Date;
end;

end.
