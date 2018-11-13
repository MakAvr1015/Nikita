unit UFrmZapasNEw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, UFramGoodCard;

type
  TFrmZapasNEw = class(TFrmPrototype)
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    dsZapas: TpFIBDataSet;
    dsZapasF_GOOD: TFIBBCDField;
    dsZapasF_OST: TFIBStringField;
    srZapas: TDataSource;
    dsZapasF_ARTICLE: TFIBStringField;
    dsZapasF_NAME: TFIBStringField;
    cxGrid2DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid2DBTableView1F_OST: TcxGridDBColumn;
    cxGrid2DBTableView1F_ARTICLE: TcxGridDBColumn;
    cxGrid2DBTableView1F_NAME: TcxGridDBColumn;
    FramGoodCard1: TFramGoodCard;
    procedure dsZapasCalcFields(DataSet: TDataSet);
    procedure dsZapasBeforeOpen(DataSet: TDataSet);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmZapasNEw: TFrmZapasNEw;

implementation

{$R *.dfm}
uses
  uDm,upublic;
procedure TFrmZapasNEw.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  ShowNsiGoodEdit(dsZapasF_GOOD.AsInteger);
end;

procedure TFrmZapasNEw.dsZapasBeforeOpen(DataSet: TDataSet);
var
  tf: tfloatfield;
begin
  dm.dsSklad.First;

  while not dm.dsSklad.Eof do
  begin
    tf:=TFloatField.Create(dataset);
    tf.Calculated:=true;
    tf.Index:=DataSet.FieldCount;
    tf.FieldName:='Sklad_'+dm.dsSklad.FieldByName('f_id').AsString;
    tf.tag:=dm.dsSklad.FieldByName('f_id').AsInteger;
    tf.DataSet:=DataSet;
//    DataSet.Fields.Add(tf);
    with cxGrid2DBTableView1.CreateColumn do
    begin
      DataBinding.FieldName:=tf.FieldName;
      Summary.FooterKind:=skSum;
      Caption:=dm.dsSklad.FieldByName('f_name').AsString;
    end;
    dm.dsSklad.Next;
  end;
end;

procedure TFrmZapasNEw.dsZapasCalcFields(DataSet: TDataSet);
var
  v_ost : string;
  i:integer;
  v_val : TStringList;
  tf: tfield;
begin
  v_val := TStringList.Create;
  v_val.Text:= DataSet.FieldByName('f_ost').AsString;
  for I := 0 to v_val.Count - 1 do
  begin
    DataSet.FieldByName('Sklad_'+v_val.Names[i]).value:=v_val.Values[v_val.Names[i]];
  end;
  v_val.Free;
end;

end.
