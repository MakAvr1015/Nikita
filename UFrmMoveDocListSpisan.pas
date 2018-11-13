unit UFrmMoveDocListSpisan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMoveDocList, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBDatabase, pFIBDatabase, FIBQuery, pFIBQuery,
  pFIBStoredProc, FIBDataSet, pFIBDataSet, cxPropertiesStore, RzForms,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  Menus, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls,
  RzStatus, ComCtrls, ToolWin;

type
  TFrmMoveDocListSpisan = class(TFrmMoveDocList)
    dsMoveDocsListF_DEFAULT_PROPERTY: TFIBStringField;
    cxGrid1DBTableView1F_DEFAULT_PROPERTY: TcxGridDBColumn;
    procedure BtnEditClick(Sender: TObject);
    procedure dsMoveDocsListCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMoveDocListSpisan: TFrmMoveDocListSpisan;

implementation

{$R *.dfm}
uses
 uDocClass,udm,upublic;


procedure TFrmMoveDocListSpisan.BtnEditClick(Sender: TObject);
var
  key : integer;
begin
  key:=dsMoveDocsListF_ID.Value;
  with TMoveDoc.Create(key) do
  begin
    doc_type:=2;
    OpenEditFrm;
  end;
end;

procedure TFrmMoveDocListSpisan.dsMoveDocsListCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('F_DOC_PROPERTY').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    if v_val.Names[i] <>'' then
      DataSet.FieldByName('DF_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
end;

procedure TFrmMoveDocListSpisan.FormCreate(Sender: TObject);
var
  tf: TStringField;
begin
  inherited;
  dm.dsNsiDocProp.Active:=false;
  dm.dsNsiDocProp.active:=true;
  dm.dsNsiDocProp.First;
  while not dm.dsNsiDocProp.eof do
  begin
    tf:=TStringField.Create(dsMoveDocsList);
    tf.Calculated:=true;
    tf.Index:=dsMoveDocsList.FieldCount;
    tf.FieldName:='DF_'+dm.dsNsiDocProp.FieldByName('f_id').AsString;
    tf.DisplayLabel:=dm.dsNsiDocProp.FieldByName('f_name').AsString;
    tf.tag:=dm.dsNsiDocProp.FieldByName('f_id').AsInteger;
    tf.DataSet:=dsMoveDocsList;
    with cxGrid1DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
      Caption:=dm.dsNsiDocProp.FieldByName('f_name').AsString;
    end;
    dm.dsNsiDocProp.Next;
  end;  

end;

end.
