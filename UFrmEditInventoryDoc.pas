unit UFrmEditInventoryDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, FIBDatabase, pFIBDatabase, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, RzDBCmbo, RzDBEdit, RzDBBnEd, StdCtrls,
  Mask, RzEdit, RzLabel, FIBDataSet, pFIBDataSet, cxContainer, cxImage, cxDBEdit;

type
  TFrmEditInventoryDoc = class(TFrmPrototype)
    dsHeadDoc: TpFIBDataSet;
    srHeadDoc: TDataSource;
    dsHeadDocF_NUMBER: TFIBStringField;
    dsHeadDocF_MANAGER: TFIBStringField;
    dsHeadDocF_DOC_COUNT: TFIBBCDField;
    dsHeadDocF_INVENTORY: TFIBBCDField;
    dsHeadDocF_STATE: TFIBBCDField;
    dsHeadDocF_STATE_NAME: TFIBStringField;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel4: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pFIBTransaction1: TpFIBTransaction;
    DsInventoryDocStr: TpFIBDataSet;
    dsHeadDocF_INV_DOC: TFIBBCDField;
    DsInventoryDocStrF_ID: TFIBBCDField;
    DsInventoryDocStrF_GOOD: TFIBBCDField;
    DsInventoryDocStrF_GOOD_ARTICLE: TFIBStringField;
    DsInventoryDocStrF_GOOD_NAME: TFIBStringField;
    DsInventoryDocStrF_COUNT: TFIBBCDField;
    DsInventoryDocStrF_INVENTORY_DOC: TFIBBCDField;
    srInventoryDocStr: TDataSource;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_ARTICLE: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1F_INVENTORY_DOC: TcxGridDBColumn;
    RzLabel2: TRzLabel;
    RzDBEdit3: TRzDBEdit;
    Panel1: TPanel;
    cxDBImage1: TcxDBImage;
    Splitter1: TSplitter;
    dsGoodPhoto: TpFIBDataSet;
    srGoodPhoto: TDataSource;
    procedure BtnNewClick(Sender: TObject);
    procedure DsInventoryDocStrAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    scan  : string;
    scan_time : TTime;
    procedure InsPosition;

  end;

var
  FrmEditInventoryDoc: TFrmEditInventoryDoc;

implementation

{$R *.dfm}
uses
  uDm,upublic, UTypes;

{ TFrmEditInventoryDoc }

procedure TFrmEditInventoryDoc.BtnNewClick(Sender: TObject);
begin
  DsInventoryDocStr.Insert;
end;

procedure TFrmEditInventoryDoc.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
    Char(vk_insert):
      InsPosition;
    Char(VK_RETURN):
      InsPosition;
    else
    begin
      if (time()- scan_time)<0.000001 then
        scan:=scan+key
      ELSE
        scan:=key;
      scan_time:=time();
    end;
  end;
end;

procedure TFrmEditInventoryDoc.DsInventoryDocStrAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshDs(DataSet,'F_GOOD',DsInventoryDocStrF_GOOD.Value);
end;


procedure TFrmEditInventoryDoc.InsPosition;
var
  i     : integer;
  cnt   : integer;
  goods : Tdigits;
begin
  goods:=GetNsiGood(date(),scan);
  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      DsInventoryDocStr.Insert;
      DsInventoryDocStrF_GOOD.Value:=goods[i];
      DsInventoryDocStr.Post;
    end;
  end
  else
  begin
    beep;
  end;
  scan:='';
end;

end.
