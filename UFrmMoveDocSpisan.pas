unit UFrmMoveDocSpisan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMoveDoc, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxImage, FIBQuery, pFIBQuery, pFIBStoredProc,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, Menus, FIBDataSet, FIBDatabase, pFIBDatabase,
  pFIBDataSet, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, RzDBBnEd,
  RzDBEdit, DBCtrls, RzDBCmbo, StdCtrls, Mask, RzEdit, RzLabel, RzPanel,
  RzButton, ExtCtrls, RzStatus, cxContainer, cxDBEdit, cxColorComboBox;

type
  TFrmMoveDocSpisan = class(TFrmMoveDoc)
    RzDBMemo1: TRzDBMemo;
    dsNsiPropertyVal: TpFIBDataSet;
    dsNsiPropertyValF_ID: TFIBBCDField;
    dsNsiPropertyValF_DOC_PROPERTY: TFIBBCDField;
    dsNsiPropertyValF_VALUE: TFIBStringField;
    srNsiPropertyVal: TDataSource;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    dsDocProperty: TpFIBDataSet;
    dsDocPropertyF_ID: TFIBBCDField;
    dsDocPropertyF_PROPERTY_ID: TFIBBCDField;
    dsDocPropertyF_PROPERTY_NAME: TFIBStringField;
    dsDocPropertyF_VALUE: TFIBStringField;
    srDocProperty: TDataSource;
    procedure dsDocHeadAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
 
  end;

var
  FrmMoveDocSpisan: TFrmMoveDocSpisan;

implementation

{$R *.dfm}

procedure TFrmMoveDocSpisan.dsDocHeadAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsNsiPropertyVal.Active:=true;
  dsDocProperty.Active:=false;
  dsDocProperty.ParamByName('doc_id').Value:=dsDocHeadDOC_ID.Value;
  dsDocProperty.Active:=true;
end;

end.
