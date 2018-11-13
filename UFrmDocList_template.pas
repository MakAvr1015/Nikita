unit UFrmDocList_template;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, ComCtrls, ToolWin, DB, FIBDataSet, pFIBDataSet, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, FIBQuery, pFIBQuery,
  pFIBStoredProc, xmldom, XMLIntf, msxmldom,XMLDoc;

type
  TFrmDocList_template = class(TFrmPrototype)
    dsDocTemplateList: TpFIBDataSet;
    srDocTemplateList: TDataSource;
    ToolBar1: TToolBar;
    Editstr_date: TDateTimePicker;
    Editend_date: TDateTimePicker;
    dsDocTemplateListF_NUMBER: TFIBStringField;
    dsDocTemplateListF_DATE: TFIBDateField;
    dsDocTemplateListF_AUTHOR: TFIBStringField;
    dsDocTemplateListF_STATE: TFIBBCDField;
    dsDocTemplateListF_STATE_NAME: TFIBStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1F_NUMBER: TcxGridDBColumn;
    cxGrid1DBTableView1F_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_AUTHOR: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1F_STATE_NAME: TcxGridDBColumn;
    dsDocTemplateListDOC_ID: TFIBBCDField;
    cxGrid1DBTableView1DOC_ID: TcxGridDBColumn;
    spInsDocStr: TpFIBStoredProc;
    dsImportDoc: TpFIBDataSet;
    OpenDialog: TOpenDialog;
    procedure dsDocTemplateListBeforeOpen(DataSet: TDataSet);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocList_template: TFrmDocList_template;

implementation

{$R *.dfm}
uses
  uDm,uPublic,uDocClass;

procedure TFrmDocList_template.BtnEditClick(Sender: TObject);
var
  key : integer;
begin

  key:=dsDocTemplateListDOC_ID.Value;
  inherited;
  with TTemplateDoc.Create(key) do
  begin
    OpenEditFrm;
  end;
end;

procedure TFrmDocList_template.BtnNewClick(Sender: TObject);
var
  key : integer;
begin
  key:=-10;
  inherited;
  with TTemplateDoc.Create(key) do
  begin
    OpenEditFrm;
  end;
end;

procedure TFrmDocList_template.BtnOpenClick(Sender: TObject);
var
  base_id,sklad_id,i,j,k,id,res              : integer;
  xmlDocument                               : TxmlDocument;
  NodeDocs,NewDoc,nodeBody,newPos,ValueDoc  : IXmlNode;
  docList                                   : IXmlNode;
  f_summ                                    : Currency;
  f_partner,f_good                          : integer;
begin

  base_id:=GetImportBase;
  sklad_id:=GetNsiSklad;
  LogMsg('Начинаем загрузку');
  if OpenDialog.Execute(self.Handle) then
  begin
    xmlDocument:=TxmlDocument.Create(self);
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
      dsImportDoc.ParamByName('f_ext_id').Value:=NodeDocs.Attributes['Id'];
      dsImportDoc.ParamByName('f_ext_base').Value:=base_id;
      dsImportDoc.ParamByName('f_sklad').Value:=sklad_id;

      NewDoc:=NodeDocs.ChildNodes['wbNumber'];
      LogMsg('Номер документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_number').Value:=NewDoc.Text;
      NewDoc:=NodeDocs.ChildNodes['wbDate'];
      LogMsg('Дата документа: '+NewDoc.Text);
      dsImportDoc.ParamByName('f_date').Value:=NewDoc.Text;
      LogMsg('Записываем заголовок');
      dsImportDoc.Active:=true;
      LogMsg('Заголовок записан');
      LogMsg('Загружаем табличную часть');
      nodeBody:=NodeDocs.ChildNodes['DocBody'];
      spInsDocStr.ParamByName('f_doc_template').Value:=dsImportDoc.FieldByName('f_id').Value;
      for j := 0 to nodeBody.ChildNodes.Count - 1 do
      begin
        newPos:=nodeBody.ChildNodes[j];
        LogMsg('строка документа: '+IntToStr(j));
        f_summ:=StrToCurr(newPos.ChildNodes['Summ'].Text);

        spInsDocStr.ParamByName('f_cnt').Value:=newPos.ChildNodes['Kol'].Text;
        if newPos.ChildNodes['Description'].Text<>'' then
          spInsDocStr.ParamByName('f_descr').Value:=newPos.ChildNodes['Description'].Text
        else
          spInsDocStr.ParamByName('f_descr').Clear;
        
//        spInsDocStr.ParamByName('f_sum').Value:=newPos.ChildNodes['Summ'].Text;
        spInsDocStr.ParamByName('f_price').Value:=f_summ/spInsDocStr.ParamByName('f_cnt').Value;
//        spInsDocStr.ParamByName('f_skd').Value:= newPos.ChildNodes['Skidka'].Text;

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
    end;
    xmlDocument.Free;
  end;
  dm.refreshNsiGood:=true;
  DM.TimerRefreshNsiGoodTimer(sender);
end;

procedure TFrmDocList_template.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  if not dsDocTemplateListDoc_id.IsNull then
    RefreshDs(dsDocTemplateList,'f_id',dsDocTemplateListDoc_id.Value)
  else
    RefreshDs(dsDocTemplateList);

end;

procedure TFrmDocList_template.dsDocTemplateListBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  dsDocTemplateList.ParamByName('str_date').Value:=EditStr_date.Date;
  dsDocTemplateList.ParamByName('end_date').Value:=EditEnd_date.Date;
end;

procedure TFrmDocList_template.FormCreate(Sender: TObject);
begin
  inherited;
  Editstr_date.Date:=date;
  Editend_date.Date:=date;
end;

end.
