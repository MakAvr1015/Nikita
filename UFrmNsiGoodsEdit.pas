unit UFrmNsiGoodsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzPanel, RzButton, ExtCtrls, DB, FIBDataSet,
  FIBDatabase, pFIBDatabase, pFIBDataSet, StdCtrls, Mask, RzEdit, RzDBEdit,
  RzDBBnEd, dxdbtrel, RzLabel, DBCtrls, RzDBCmbo, Menus, RzStatus,
  cxPropertiesStore, RzForms, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode, frxDCtrl,
  frxDesgn, frxFIBComponents, ExtDlgs, dxSkinsCore, dxSkinsDefaultPainters,
  cxControls, cxContainer, cxEdit, cxImage, cxDBEdit, RzRadChk, RzDBChk,
  cxGraphics, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxInplaceContainer, cxVGrid, cxDBVGrid,
  cxOI, cxLabel;

type
  TFrmNsiGoodsEdit = class(TFrmPrototype)
    srEditNsiGoods: TDataSource;
    dsEditNsiGoods: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    dsEditNsiGoodsF_ID: TFIBBCDField;
    dsEditNsiGoodsF_NAME: TFIBStringField;
    dsEditNsiGoodsF_GOODS_GRP: TFIBBCDField;
    edName: TRzDBEdit;
    dsEditNsiGoodsGRP_NAME: TFIBStringField;
    dsSourceGrp: TpFIBDataSet;
    dsSourceGrpGRP_ID: TFIBBCDField;
    dsSourceGrpF_PARENT: TFIBBCDField;
    dsSourceGrpF_NAME: TFIBStringField;
    SrSourceGrp: TDataSource;
    EdtGoodGrp: TdxDBLookupTreeView;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    dsEditNsiGoodsF_ED_IZM: TFIBBCDField;
    edArticle: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    srEdIzmSource: TDataSource;
    dsEdIzmSource: TpFIBDataSet;
    dsEdIzmSourceF_ED_IZM: TFIBBCDField;
    dsEdIzmSourceF_NAME: TFIBStringField;
    dsEdIzmSourceF_SHORT_NAME: TFIBStringField;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBMemo1: TRzDBMemo;
    dsEditNsiGoodsF_DOP_INFO: TFIBStringField;
    dsEditNsiGoodsF_ARTICLE: TFIBStringField;
    dsGetNsiPhoto: TpFIBDataSet;
    srGetNsiPhoto: TDataSource;
    dsGetNsiPhotoF_PHOTO_ID: TFIBBCDField;
    dsGetNsiPhotoF_GOOD: TFIBBCDField;
    dsGetNsiPhotoF_NAME: TFIBStringField;
    dsGetNsiPhotoF_MEMO: TFIBBlobField;
    OpenPictureDialog: TOpenPictureDialog;
    cxDBImage1: TcxDBImage;
    dsEditNsiGoodsF_BARTER: TBooleanField;
    RzDBCheckBox1: TRzDBCheckBox;
    edGoodType: TcxDBLookupComboBox;
    dsTypeGood: TpFIBDataSet;
    srTypeGood: TDataSource;
    dsTypeGoodF_ID: TFIBBCDField;
    dsTypeGoodF_NAME: TFIBStringField;
    dsTypeGoodF_CHECK_OST: TFIBSmallIntField;
    dsTypeGoodF_COMPL: TFIBSmallIntField;
    dsEditNsiGoodsF_GOOD_TYPE: TFIBBCDField;
    dsGoodAtributes: TpFIBDataSet;
    srGoodAtributes: TDataSource;
    dsGoodAtributesF_ID: TFIBBCDField;
    dsGoodAtributesF_GOOD: TFIBBCDField;
    dsGoodAtributesF_GOOD_INFO: TFIBBCDField;
    dsGoodAtributesF_GOOD_INFO_NAME: TFIBStringField;
    dsGoodAtributesF_GOOD_INFO_VAL: TFIBStringField;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_INFO: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_INFO_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1F_GOOD_INFO_VAL: TcxGridDBColumn;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1TableView1Column1: TcxGridColumn;
    cxGrid1TableView1Column2: TcxGridColumn;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1F_GOOD_INFO_VALGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiGoodsEdit: TFrmNsiGoodsEdit;

implementation
uses
  uDm;

{$R *.dfm}

procedure TFrmNsiGoodsEdit.cxGrid1DBTableView1F_GOOD_INFO_VALGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
var
  info_id : integer;
  editItem :TcxEditRepositoryItem;
begin
  inherited;
  info_id:=Arecord.Values[2];
//  if info_id=3 then
//  begin
//  with //dm.cxEditRepositoryComboBoxItem1 do
  editItem:=dm.cxEditRepository.ItemByName('Editor'+IntToStr(info_id));
//  do
//  begin
//    Properties.Assign(AProperties);
    if editItem <> nil then
    begin
      AProperties:=editItem.Properties;
    end;
//  end;
end;

procedure TFrmNsiGoodsEdit.FormShow(Sender: TObject);
begin
  inherited;
  dsSourceGrp.Active:=true;
  dsEdIzmSource.Active:=true;
  dsTypeGood.Active:=true;
  dsGoodAtributes.Active:=true;
end;

end.
