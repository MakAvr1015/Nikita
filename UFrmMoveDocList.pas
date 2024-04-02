unit UFrmMoveDocList;

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
  pFIBDataSet, xmldom, XMLIntf, msxmldom, XMLDoc, FIBQuery, pFIBQuery,
  pFIBStoredProc, FIBDatabase, pFIBDatabase, ComCtrls, ToolWin, cxLookAndFeels,
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
  System.ImageList, Vcl.ImgList, frxDBSet, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

type
  TFrmMoveDocList = class(TFrmPrototype)
    dsMoveDocsList: TpFIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    srMoveDocsList: TDataSource;
    dsMoveDocsListF_ID: TFIBBCDField;
    dsMoveDocsListF_DATE: TFIBDateField;
    dsMoveDocsListF_NUMBER: TFIBStringField;
    dsMoveDocsListF_SKLAD_FROM: TFIBBCDField;
    dsMoveDocsListF_SKLAD_TO: TFIBBCDField;
    dsMoveDocsListF_STATE: TFIBBCDField;
    dsMoveDocsListF_DOC_SUM: TFIBBCDField;
    dsMoveDocsListF_PRICE: TFIBBCDField;
    dsMoveDocsListF_TYPE: TFIBBCDField;
    dsMoveDocsListF_DOC_COUNT: TFIBBCDField;
    dsMoveDocsListF_SKLAD_FROM_NAME: TFIBStringField;
    dsMoveDocsListF_SKLAD_TO_NAME: TFIBStringField;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_FROM: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_TO: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_SUM: TcxGridDBColumn;
    cxGrid1DBTableView1F_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1F_TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_FROM_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_TO_NAME: TcxGridDBColumn;
    dsMoveDocsListF_STATE_NAME: TFIBStringField;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    dsExportDoc: TpFIBDataSet;
    dsExportDocF_VALUE: TFIBStringField;
    SaveDialog: TSaveDialog;
    dsMoveDocsListF_TYPE_NAME: TFIBStringField;
    cxGrid1DBTableView1F_TYPE_NAME: TcxGridDBColumn;
    OpenDialog: TOpenDialog;
    dsImportDoc: TpFIBDataSet;
    spInsDocStr: TpFIBStoredProc;
    pFIBTransaction: TpFIBTransaction;
    ToolBar1: TToolBar;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    dsMoveDocsListF_DOC_MOVE: TFIBBCDField;
    dsMoveDocsListF_USER: TFIBStringField;
    cxGrid1DBTableView1F_DOC_MOVE: TcxGridDBColumn;
    cxGrid1DBTableView1F_USER: TcxGridDBColumn;
    dsDocStrings: TpFIBDataSet;
    dsDocStringsF_ARTICLE: TFIBStringField;
    dsMoveDocsListF_PRICE_NAME: TFIBStringField;
    cxGrid1DBTableView1F_PRICE_NAME: TcxGridDBColumn;
    dsMoveDocsListF_DOP_INFO: TFIBStringField;
    cxGrid1DBTableView1F_DOP_INFO: TcxGridDBColumn;
    dsMoveDocsListF_DOC_PROPERTY: TFIBStringField;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure dsMoveDocsListBeforeOpen(DataSet: TDataSet);
    procedure BtnViewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsMoveDocsListCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMoveDocList: TFrmMoveDocList;

implementation

{$R *.dfm}

uses
  uDocClass, udm, upublic, uDlgSave;

procedure TFrmMoveDocList.BtnEditClick(Sender: TObject);
var
  key: integer;
begin
  key := dsMoveDocsListF_ID.Value;
  // inherited;
  with TMoveDoc.Create(key) do
  begin
    doc_type := self.tag;
    OpenEditFrm;
  end;
end;

procedure TFrmMoveDocList.BtnNewClick(Sender: TObject);
var
  key: integer;
begin
  key := -10;
  inherited;
  with TMoveDoc.Create(key) do
  begin
    doc_type := self.tag;
    OpenEditFrm;
  end;
end;

procedure TFrmMoveDocList.BtnOpenClick(Sender: TObject);
var
  base_id, i, j, k, id: integer;
  xmlDocument: TxmlDocument;
  NodeDocs, NewDoc, nodeBody, newPos, ValueDoc: IXmlNode;
  docList: IXmlNode;
  f_summ: Currency;
  f_sklad, f_good: integer;
  commitDocs: boolean;
begin
  commitDocs := false;
  base_id := GetImportBase;
  if OpenDialog.Execute(self.Handle) then
  begin
    if MessageDlg('Ïðîâîäèòü äîêóìåíòû ïîñëå çàãðóçêè?', mtConfirmation,
      [mbYes, mbNo], 0) = 6 then
      commitDocs := true;
    xmlDocument := TxmlDocument.Create(self);
    xmlDocument.LoadFromFile(OpenDialog.FileName);
    xmlDocument.Active;
    docList := xmlDocument.DocumentElement.ChildNodes['MoveDocs'];
    f_sklad := GetNsiSklad;
    try
      if not dm.IdFTP.Connected then
        dm.IdFTP.Connect;
    except

    end;
    for i := 0 to docList.ChildNodes.Count - 1 do
    begin

      NodeDocs := docList.ChildNodes[i];
      dsImportDoc.Active := false;
      dsImportDoc.ParamByName('f_sklad').Value := f_sklad;
      // spImportPartner.FieldByName('f_id').Value;
      dsImportDoc.ParamByName('f_doc_type').Value := NodeDocs.Attributes
        ['DocType'];
      dsImportDoc.ParamByName('f_ext_id').Value := NodeDocs.Attributes['Id'];
      dsImportDoc.ParamByName('f_ext_base').Value := base_id;
      NewDoc := NodeDocs.ChildNodes['DocUser'];
      dsImportDoc.ParamByName('f_user').Value := NewDoc.Text;
      NewDoc := NodeDocs.ChildNodes['wbNumber'];
      dsImportDoc.ParamByName('f_number').Value := NewDoc.Text;
      NewDoc := NodeDocs.ChildNodes['wbDate'];
      dsImportDoc.ParamByName('f_date').Value := NewDoc.Text;
      NewDoc := NodeDocs.ChildNodes['wbDopInfo'];
      dsImportDoc.ParamByName('F_DOP_INFO').Value := NewDoc.Text;
      dsImportDoc.Active := true;
      nodeBody := NodeDocs.ChildNodes['DocBody'];
      spInsDocStr.ParamByName('f_doc_move').Value :=
        dsImportDoc.FieldByName('f_id').Value;
      dsImportDoc.Transaction.CommitRetaining;
      for j := 0 to nodeBody.ChildNodes.Count - 1 do
      begin
        newPos := nodeBody.ChildNodes[j];
        f_summ := StrToCurr(newPos.ChildNodes['Summ'].Text);

        spInsDocStr.ParamByName('f_cnt').Value := newPos.ChildNodes['Kol'].Text;
        spInsDocStr.ParamByName('f_price_val').Value := f_summ /
          spInsDocStr.ParamByName('f_cnt').Value;

        NewDoc := newPos.ChildNodes['T_NSI_GOOD'];
        f_good := dm.ImportGood(NewDoc, base_id);
        spInsDocStr.ParamByName('f_good').Value := f_good;
        spInsDocStr.ExecProc;

      end;
      dsImportDoc.Transaction.CommitRetaining;
      id := dsImportDoc.FieldByName('f_id').AsInteger;
      if commitDocs then
      begin
        with TMoveDoc.Create(id) do
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

  end;
  dm.refreshNsiGood := true;
  dm.TimerRefreshNsiGoodTimer(Sender);
end;

procedure TFrmMoveDocList.BtnRefreshClick(Sender: TObject);
begin
  inherited;

  if not dsMoveDocsListF_ID.IsNull then
    RefreshDs(dsMoveDocsList, 'f_id', dsMoveDocsListF_ID.Value)
  else
    RefreshDs(dsMoveDocsList);

end;

procedure TFrmMoveDocList.BtnSaveClick(Sender: TObject);
var
  i: integer;
  ARowIndex: integer;
  ARowInfo: TcxRowInfo;
  expFile: TstringList;
begin
  inherited;
  with TDlgSave.Create(self) do
  begin
    if ShowModal = mrOk then
    begin
      if RzSaveDialog.Execute then
      begin
        expFile := TstringList.Create;
        expFile.Add('<?xml version="1.0" encoding="windows-1251"?>');
        expFile.Add('<Export>');
        expFile.Add('<MoveDocs>');
        for i := 0 to cxGrid1DBTableView1.Controller.SelectedRecordCount - 1 do
        begin
          dsExportDoc.Active := false;
          ARowIndex := cxGrid1DBTableView1.DataController.
            GetSelectedRowIndex(i);
          ARowInfo := cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);
          dsExportDoc.ParamByName('f_id').Value :=
            cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,
            dsMoveDocsListF_ID.Index);
          dsExportDoc.Active := true;
          while not dsExportDoc.Eof do
          begin
            if not dsExportDocF_VALUE.IsNull then
              expFile.Add(dsExportDocF_VALUE.AsString);
            dsExportDoc.Next;
          end;
          if SaveImg.Checked then
          begin
            dsDocStrings.ParamByName('doc_id').Value :=
              cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,
              dsMoveDocsListF_ID.Index);
            dsDocStrings.Active := true;
            while not dsDocStrings.Eof do
            begin
              dm.UploadPhoto(dsDocStringsF_ARTICLE.AsString, DirToSave.Path,
                editDateFrom.Date);
              dsDocStrings.Next;
            end;
            dsDocStrings.Active := false;
          end;
        end;
        expFile.Add('</MoveDocs>');
        expFile.Add('</Export>');
        expFile.SaveToFile(RzSaveDialog.FileName);
        expFile.free;
        ShowMessage('Äîêóìåíòû ñîõðàíåíû');
      end;
    end;
    free;
  end;
end;

procedure TFrmMoveDocList.BtnViewClick(Sender: TObject);
begin
  inherited;
  ShowDoc('T_DOC_MOVE', dsMoveDocsListF_ID.Value);
end;

procedure TFrmMoveDocList.dsMoveDocsListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsMoveDocsList.ParamByName('doc_move').Value := self.tag;
  dsMoveDocsList.ParamByName('str_date').Value := Editstr_date.Date;
  dsMoveDocsList.ParamByName('end_date').Value := Editend_date.Date;
end;

procedure TFrmMoveDocList.dsMoveDocsListCalcFields(DataSet: TDataSet);
var
  v_ost: string;
  i: integer;
  v_val: TstringList;
  tf: tfield;
begin
  v_val := TstringList.Create;
  v_val.Text := DataSet.FieldByName('F_DOC_PROPERTY').AsString;
  for i := 0 to v_val.Count - 1 do
  begin
    if v_val.Names[i] <> '' then
      DataSet.FieldByName('DF_' + v_val.Names[i]).Value :=
        v_val.Values[v_val.Names[i]];
  end;
  v_val.free;
end;

procedure TFrmMoveDocList.FormCreate(Sender: TObject);
var
  tf: TStringField;
begin
  Editstr_date.Date := Date;
  Editend_date.Date := Date;
  dm.dsNsiDocProp.Active := false;
  dm.dsNsiDocProp.Active := true;
  dm.dsNsiDocProp.First;
  while not dm.dsNsiDocProp.Eof do
  begin
    tf := TStringField.Create(dsMoveDocsList);
    tf.Calculated := true;
    tf.Index := dsMoveDocsList.FieldCount;
    tf.FieldName := 'DF_' + dm.dsNsiDocProp.FieldByName('f_id').AsString;
    tf.DisplayLabel := dm.dsNsiDocProp.FieldByName('f_name').AsString;
    tf.tag := dm.dsNsiDocProp.FieldByName('f_id').AsInteger;
    tf.DataSet := dsMoveDocsList;
    with cxGrid1DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName := tf.FieldName;
      Caption := dm.dsNsiDocProp.FieldByName('f_name').AsString;
    end;
    dm.dsNsiDocProp.Next;
  end;
  inherited;
end;

end.
