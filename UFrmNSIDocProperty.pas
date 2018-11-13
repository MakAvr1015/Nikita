unit UFrmNSIDocProperty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxGraphics, cxCustomData, cxStyles, cxTL, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxInplaceContainer, cxTLData, cxDBTL, FIBDataSet, pFIBDataSet;

type
  TFrmNSIDocProperty = class(TFrmPrototype)
    Splitter1: TSplitter;
    dsListAtributes: TpFIBDataSet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    srListAtributes: TDataSource;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsListPropertyVal: TpFIBDataSet;
    dsListPropertyValF_ID: TFIBBCDField;
    dsListPropertyValF_DOC_PROPERTY: TFIBBCDField;
    dsListPropertyValF_VALUE: TFIBStringField;
    srListPropertyVal: TDataSource;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_DOC_PROPERTY: TcxGridDBColumn;
    cxGrid1DBTableView1F_VALUE: TcxGridDBColumn;
    dsListAtributesF_PROPERTY: TFIBBCDField;
    dsListAtributesF_NAME: TFIBStringField;
    cxGrid2DBTableView1F_PROPERTY: TcxGridDBColumn;
    cxGrid2DBTableView1F_NAME: TcxGridDBColumn;
    procedure dsListAtributesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNSIDocProperty: TFrmNSIDocProperty;

implementation

{$R *.dfm}

  uses
    uDm;

procedure TFrmNSIDocProperty.dsListAtributesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsListPropertyVal.Active:=true;
end;

end.
