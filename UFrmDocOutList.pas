unit UFrmDocOutList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, RzButton,
  RzPanel, ExtCtrls, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, Menus,
  RzStatus, RzForms, frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML,
  frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn,
  frxFIBComponents,xmldom, XMLIntf, msxmldom,XMLDoc, FIBQuery, pFIBQuery,
  pFIBStoredProc, cxPropertiesStore, StdCtrls, ComCtrls, ToolWin,
  cxColorComboBox, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, frxChBox, frxTableObject, frxRich,
  frxExportBaseDialog, frxExportDOCX, frxOLE, System.ImageList, Vcl.ImgList,
  frxDBSet;

type
  TFrmDocOutList = class(TFrmPrototype)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsDocList: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    dsDocListF_PARTNER: TFIBBCDField;
    dsDocListF_NUMBER: TFIBStringField;
    dsDocListF_DATE: TFIBDateField;
    dsDocListF_STATE: TFIBBCDField;
    dsDocListF_STATE_NAME: TFIBStringField;
    dsDocListF_SKLAD_NAME: TFIBStringField;
    dsDocListF_PARTNER_NAME: TFIBStringField;
    srDocList: TDataSource;
    cxGrid1DBTableView1F_PARTNER1: TcxGridDBColumn;
    cxGrid1DBTableView1F_NUMBER1: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE1: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE1: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME1: TcxGridDBColumn;
    cxGrid1DBTableView1F_SKLAD_NAME1: TcxGridDBColumn;
    cxGrid1DBTableView1F_PARTNER_NAME1: TcxGridDBColumn;
    dsDocListF_SKLAD: TFIBBCDField;
    cxGrid1DBTableView1F_SKLAD1: TcxGridDBColumn;
    dsDocListF_DOC_COUNT: TFIBFloatField;
    dsDocListF_DOC_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_DOC_COUNT1: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_SUM1: TcxGridDBColumn;
    dsExportDoc: TpFIBDataSet;
    dsExportDocF_VALUE: TFIBStringField;
    SaveDialog: TSaveDialog;
    dsDocListF_DOC_SKIDKA: TFIBBCDField;
    cxGrid1DBTableView1F_DOC_SKIDKA1: TcxGridDBColumn;
    OpenDialog: TOpenDialog;
    dsImportDoc: TpFIBDataSet;
    dsDocListF_PAYDATE_PLAN: TFIBDateField;
    cxGrid1DBTableView1F_PAYDATE_PLAN1: TcxGridDBColumn;
    NewDocMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SaveMenu: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    dsExportPrice: TpFIBDataSet;
    dsExportPriceF_VALUE: TFIBStringField;
    dsDocListF_PRICE_NAME: TFIBStringField;
    dsDocListF_DOC_SKIDKA_PERCENT: TFIBBCDField;
    cxGrid1DBTableView1F_PRICE_NAME1: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_SKIDKA_PERCENT1: TcxGridDBColumn;
    spInsDocStr: TpFIBStoredProc;
    N6: TMenuItem;
    dsDocListF_DOC_OUT: TFIBBCDField;
    cxGrid1DBTableView1F_DOC_OUT1: TcxGridDBColumn;
    dsDocListF_PAY_SUM: TFIBBCDField;
    cxGrid1DBTableView1F_PAY_SUM1: TcxGridDBColumn;
    ToolBar1: TToolBar;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    dsDocListTYPE: TFIBStringField;
    cxGrid1DBTableView1TYPE1: TcxGridDBColumn;
    dsDocListF_PAY_TYPE: TFIBBCDField;
    dsDocListF_USER: TFIBStringField;
    cxGrid1DBTableView1F_PAY_TYPE1: TcxGridDBColumn;
    cxGrid1DBTableView1F_USER1: TcxGridDBColumn;
    dsDocListF_PROPERTY_1: TFIBStringField;
    cxGrid1DBTableView1F_PROPERTY_11: TcxGridDBColumn;
    dsReservedDoc: TpFIBDataSet;
    dsReservedDocF_DOC_OUT: TFIBBCDField;
    dsReservedDocTYPE: TFIBStringField;
    dsReservedDocF_SKLAD: TFIBBCDField;
    dsReservedDocF_PARTNER: TFIBBCDField;
    dsReservedDocF_NUMBER: TFIBStringField;
    dsReservedDocF_DATE: TFIBDateField;
    dsReservedDocF_PAYDATE_PLAN: TFIBDateField;
    dsReservedDocF_STATE: TFIBBCDField;
    dsReservedDocF_STATE_NAME: TFIBStringField;
    dsReservedDocF_SKLAD_NAME: TFIBStringField;
    dsReservedDocF_PARTNER_NAME: TFIBStringField;
    dsReservedDocF_DOC_COUNT: TFIBFloatField;
    dsReservedDocF_DOC_SUM: TFIBBCDField;
    dsReservedDocF_DOC_SKIDKA: TFIBBCDField;
    dsReservedDocF_PRICE_NAME: TFIBStringField;
    dsReservedDocF_DOC_SKIDKA_PERCENT: TFIBBCDField;
    dsReservedDocF_PAY_SUM: TFIBBCDField;
    dsReservedDocF_PAY_TYPE: TFIBBCDField;
    dsReservedDocF_USER: TFIBStringField;
    dsReservedDocF_PROPERTY_1: TFIBStringField;
    dsDocListF_OWNER: TFIBIntegerField;
    dsDocListF_OWNER_NAME: TFIBStringField;
    cxGrid1DBTableView1F_OWNER: TcxGridDBColumn;
    cxGrid1DBTableView1F_OWNER_NAME: TcxGridDBColumn;
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dsDocListBeforeOpen(DataSet: TDataSet);
    procedure BtnViewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocOutList: TFrmDocOutList;

implementation
uses
  udm,uDocClass,upublic, UdlgPeriod, cxGridDBDataDefinitions;
{$R *.dfm}

procedure TFrmDocOutList.BtnEditClick(Sender: TObject);
var
  key : integer;
begin

  key:=srDocList.DataSet.FieldByName('F_DOC_OUT').AsInteger;
  inherited;
  with TOutDoc.Create(key,srDocList.DataSet) do
  begin
    doc_type:=1;
    OpenEditFrm;
  end;
{
with TFrmRoznSale.Create(self) do
begin
  dsDocHead.ParamByName('doc_id').Value:=dsDocListF_ID.Value;
  dsDocHead.Active:=true;
  ShowAsDialog;
  free;
end;
 }
end;

procedure TFrmDocOutList.BtnNewClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  inherited;
  with TOutDoc.Create(key,dsDocList) do
  begin
    doc_type:=(sender as TComponent).Tag;
    OpenEditFrm;
  end;
end;

procedure TFrmDocOutList.BtnOpenClick(Sender: TObject);
var
  base_id,sklad_id,i,j,k,id,res              : integer;
  xmlDocument                               : TxmlDocument;
  NodeDocs,NewDoc,nodeBody,newPos,ValueDoc  : IXmlNode;
  docList                                   : IXmlNode;
  f_summ                                    : Currency;
  f_partner,f_good                          : integer;
  commitDocs                                : boolean;
begin
  commitDocs := false;

  base_id:=GetImportBase;
  sklad_id:=GetNsiSklad;
  LogMsg('Начинаем загрузку');
  if OpenDialog.Execute then
  begin
    if MessageDlg('Проводить документы после загрузки?',mtConfirmation,[mbYes,mbNo],0) = 6 then
      commitDocs:=true;
    xmlDocument:=TxmlDocument.Create(self);
    LogMsg('Файл для загрузки:'+OpenDialog.FileName);
    xmlDocument.LoadFromFile(OpenDialog.FileName);
    xmlDocument.Active;
    docList:=xmlDocument.DocumentElement.ChildNodes['MoveDocs'];
    for I := 0 to docList.ChildNodes.Count - 1 do
    begin
      LogMsg('Загружаем заголовок документа');
      NodeDocs:=docList.ChildNodes[i];
      NewDoc:=NodeDocs.ChildNodes['T_NSI_PARTNER'];
      f_partner:=dm.ImportPartner(NewDoc,base_id);

      dsImportDoc.Active:=false;
      dsImportDoc.ParamByName('f_partner').Value:=f_partner;
      dsImportDoc.ParamByName('f_doc_type').Value:=NodeDocs.Attributes['DocType'];
//      dsImportDoc.ParamByName('f_doc_type').Value:=NodeDocs.Attributes['DocType'];
      dsImportDoc.ParamByName('f_ext_id').Value:=NodeDocs.Attributes['Id'];
      dsImportDoc.ParamByName('f_ext_base').Value:=base_id;
      dsImportDoc.ParamByName('f_sklad').Value:=sklad_id;
      NewDoc:=NodeDocs.ChildNodes['DocUser'];
      dsImportDoc.ParamByName('f_user').Value:=NewDoc.Text;
      NewDoc:=NodeDocs.ChildNodes['wbSkdPrc'];
      if NewDoc.Text <> '' then
        dsImportDoc.ParamByName('F_SKD_PRC').Value:=NewDoc.Text
      else
        dsImportDoc.ParamByName('F_SKD_PRC').Clear;
      NewDoc:=NodeDocs.ChildNodes['wbNumber'];
      LogMsg('Номер документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_number').Value:=NewDoc.Text;
      NewDoc:=NodeDocs.ChildNodes['wbDate'];
      LogMsg('Дата документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_date').Value:=NewDoc.Text;
      NewDoc:=NodeDocs.ChildNodes['Discount_card'];
      LogMsg('скидочная карта документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_discount').Value:=NewDoc.Text;

      LogMsg('Записываем заголовок');
      dsImportDoc.Active:=true;
      LogMsg('Заголовок записан');
      LogMsg('Загружаем табличную часть');
      nodeBody:=NodeDocs.ChildNodes['DocBody'];
      spInsDocStr.ParamByName('f_doc_out').Value:=dsImportDoc.FieldByName('f_id').Value;
      for j := 0 to nodeBody.ChildNodes.Count - 1 do
      begin
        newPos:=nodeBody.ChildNodes[j];
        LogMsg('строка документа: '+IntToStr(j));
        f_summ:=StrToCurr(newPos.ChildNodes['Summ'].Text);

        spInsDocStr.ParamByName('f_cnt').Value:=newPos.ChildNodes['Kol'].Text;
        spInsDocStr.ParamByName('f_sum').Value:=newPos.ChildNodes['Summ'].Text;
        if newPos.ChildNodes['Description'].Text<>'' then
          spInsDocStr.ParamByName('f_descr').Value:=newPos.ChildNodes['Description'].Text
        else
          spInsDocStr.ParamByName('f_descr').Clear;
        spInsDocStr.ParamByName('f_price').Value:=f_summ/spInsDocStr.ParamByName('f_cnt').Value;
        if newPos.ChildNodes['Skidka'].Text <> '' then
          spInsDocStr.ParamByName('f_skd').Value:= newPos.ChildNodes['Skidka'].Text
        else
          spInsDocStr.ParamByName('f_skd').Clear;
        NewDoc:=newPos.ChildNodes['T_NSI_GOOD'];
        LogMsg('Импортируем номенклатуру');
        f_good:=dm.ImportGood(NewDoc,base_id);
        LogMsg('Номенклатура загружена');
        spInsDocStr.ParamByName('f_good').Value:=f_good;
        LogMsg('Записываем строку документа');
        spInsDocStr.ExecProc;
        LogMsg('Строка записана');
      end;
      dsImportDoc.Transaction.CommitRetaining;
      LogMsg('Фиксация документа');
      id:=dsImportDoc.FieldByName('f_id').AsInteger;
      if commitDocs then
      begin
        with TOutDoc.Create(id)do
        begin
          LogMsg('Проводим документ');
          ChangeState(3);
          LogMsg('Документ проведен');
          free;
        end;
      end;

    end;
    xmlDocument.Free;
  end;
  dm.refreshNsiGood:=true;
  DM.TimerRefreshNsiGoodTimer(sender);
end;

procedure TFrmDocOutList.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  if not dsDocListF_DOC_OUT.IsNull then
    RefreshDs(dsDocList,'f_doc_out',dsDocListF_DOC_OUT.Value)
  else
    RefreshDs(dsDocList);
end;

procedure TFrmDocOutList.BtnSaveClick(Sender: TObject);
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
      dsExportDoc.Active:=false;
      ARowIndex:=cxGrid1DBTableView1.DataController.GetSelectedRowIndex(i);
      ARowInfo:=cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);
      dsExportDoc.ParamByName('f_id').Value:=cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,dsDocListF_doc_out.Index);
      dsExportDoc.Active:=true;
      while not dsExportDoc.Eof do
      begin
        expFile.Add(dsExportDocF_VALUE.AsString);
        dsExportDoc.Next;
      end;
    end;
    expFile.Add('</MoveDocs>');
    if not dsExportPrice.ParamByName('F_PRICE_ID').IsNull then
    begin
      expFile.Add('<PriceDocs>');
      for I := 0 to cxGrid1DBTableView1.Controller.SelectedRecordCount - 1 do
      begin
        dsExportPrice.Active:=false;
        ARowIndex:=cxGrid1DBTableView1.DataController.GetSelectedRowIndex(i);
        ARowInfo:=cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);
        dsExportPrice.ParamByName('F_DOC_OUT').Value:=cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,dsDocListF_doc_out.Index);
        dsExportPrice.Active:=true;
        while not dsExportPrice.Eof do
        begin
          expFile.Add(dsExportPriceF_VALUE.AsString);
          dsExportPrice.Next;
        end;
      end;
      expFile.Add('</PriceDocs>');
    end;
    expFile.Add('</Export>');
    expFile.SaveToFile(SaveDialog.FileName);
    expFile.Free;
  end;
end;


procedure TFrmDocOutList.BtnViewClick(Sender: TObject);
var
  key : integer;
begin
  key:=dsDocListF_doc_out.Value;
  with TOutDoc.Create(key,dsDocList) do
  begin
    doc_type:=1;
    OpenViewFrm;
  end;
//  BtnEditClick(sender);
end;

procedure TFrmDocOutList.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if TcxGridItemDBDataBinding(AviewInfo.Item.DataBinding).FieldName = 'F_DOC_SUM' then
  begin
    if (AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_DOC_SUM1.Index]<=AviewInfo.GridRecord.Values[cxGrid1DBTableView1F_PAY_SUM1.Index]) then
    begin
      ACanvas.Font.Color:=clGreen;
      Acanvas.Brush.Color:=clCream;
    end;
  end;
end;

procedure TFrmDocOutList.dsDocListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocList.ParamByName('str_date').value:=EditStr_date.Date;
  dsDocList.ParamByName('end_date').value:=EditEnd_date.Date;
end;

procedure TFrmDocOutList.FormCreate(Sender: TObject);
begin
  inherited;
  Editstr_date.Date:=date;
  Editend_date.Date:=date;
end;

procedure TFrmDocOutList.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key=VK_INSERT) then
    if (ssShift in Shift) then
      BtnNewClick(self)
    else
      N5Click(self);
end;



procedure TFrmDocOutList.N3Click(Sender: TObject);
begin
  inherited;
  with TDlgPeriod.Create(self) do
  begin
    if (ShowModal=mrOk) then
    begin
      if (StartDate.edittext<>'') then
      begin
        DsDocList.DisableControls;
        DsDocList.Active:=false;
        DsDocList.Conditions.ByName('ByPeriod').Enabled:=true;
        DsDocList.ApplyConditions();
        DsDocList.ParamByName('start_date').Value:=StartDate.Date;
        DsDocList.ParamByName('end_date').Value:=EndDate.Date;
        DsDocList.Active:=true;
        DsDocList.EnableControls;
        cxGrid1DBTableView1.DataController.SelectAll;
      end;
      dsExportPrice.ParamByName('F_PRICE_ID').Value:=rzEditPrice.KeyValue;
      BtnSaveClick(sender);
      if DsDocList.Conditions.ByName('ByPeriod').Enabled then
      begin
        DsDocList.DisableControls;
        DsDocList.Active:=false;
        DsDocList.Conditions.ByName('ByPeriod').Enabled:=false;
        DsDocList.ApplyConditions();
        DsDocList.Active:=true;
        DsDocList.EnableControls;
      end;
    end;
    free;
  end;
end;

procedure TFrmDocOutList.N6Click(Sender: TObject);
var
  expFile   : TstringList;
  f_id      : integer;
begin
  f_id:=dsDocListF_doc_out.AsInteger;
  if SaveDialog.Execute(self.Handle) then
  begin
    expFile:=TstringList.Create;
    expFile.Add('<?xml version="1.0" encoding="windows-1251"?>');
    expFile.Add('<Export>');
    expFile.Add('<MoveDocs>');
    with TOutDoc.Create(f_id) do
    begin
      expFile.Add(ExportDoc);
      free;
    end;
    expFile.Add('</MoveDocs>');
    expFile.Add('</Export>');
    expFile.SaveToFile(SaveDialog.FileName);
    expFile.Free;
  end;
end;

end.
