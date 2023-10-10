unit UFramNsiGoodsGrp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit, dxSkinsCore,
  dxSkinsDefaultPainters, RzButton, ExtCtrls, RzPanel, FIBDatabase,
  pFIBDatabase, cxInplaceContainer, cxDBTL, cxControls, cxTLData, DB,
  FIBDataSet, pFIBDataSet, dxSkinscxPCPainter, cxPC, cxLookAndFeels,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxTLdxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFramNsiGoodsGrp = class(TFrame)
    dsNsiGrp: TpFIBDataSet;
    dsNsiGrpF_PARENT: TFIBBCDField;
    dsNsiGrpF_NAME: TFIBStringField;
    dsNsiGrpGRP_ID: TFIBBCDField;
    srNsiGrp: TDataSource;
    cxDBTreeList: TcxDBTreeList;
    cxDBTreeList1F_ID: TcxDBTreeListColumn;
    cxDBTreeList1F_PARENT: TcxDBTreeListColumn;
    cxDBTreeList1F_NAME: TcxDBTreeListColumn;
    pFIBTransaction_frm: TpFIBTransaction;
    frameRzToolbar: TRzToolbar;
    BtnNew: TRzToolButton;
    BtnOpen: TRzToolButton;
    BtnFind: TRzToolButton;
    BtnPrint: TRzToolButton;
    BtnOK: TRzToolButton;
    BtnCancel: TRzToolButton;
    BtnRefresh: TRzToolButton;
    BtnEdit: TRzToolButton;
    BtnRecycle: TRzToolButton;
    dsNsiGrpF_COLOR: TFIBStringField;
    cxDBTreeList1F_COLOR: TcxDBTreeListColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheetGrp: TcxTabSheet;
    cxTabSheetGrpExt: TcxTabSheet;
    dsAlterneteList: TpFIBDataSet;
    srAlterneteList: TDataSource;
    dsAlterneteListF_ID: TFIBIntegerField;
    dsAlterneteListF_NAME: TFIBStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1F_ID: TcxGridDBColumn;
    cxGrid1DBTableView1F_NAME: TcxGridDBColumn;
    procedure BtnNewClick(Sender: TObject);
    procedure cxDBTreeListDblClick(Sender: TObject);
    procedure BtnRecycleClick(Sender: TObject);
    procedure cxDBTreeListCustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Initframe;
  end;

implementation

{$R *.dfm}
uses
 udm, ufrmEdinNsiGrp, uPublic;

procedure TFramNsiGoodsGrp.BtnNewClick(Sender: TObject);
begin
  case cxPageControl1.ActivePageIndex of
    0:
      with TfrmEdinNsiGrp.Create(Application.MainForm) do
      begin
        dsNsiGoodsGrp.ParamByName('F_PARENT_GRP').Value:=dsNsiGrpGRP_ID.Value;
        dsNsiGoodsGrp.ParamByName('F_GRP').Value:=-10;
        if ShowAsDialog then
        begin
          if dsNsiGoodsGrp.State in [dsEdit,dsInsert] then
            dsNsiGoodsGrp.Post;
          dsNsiGoodsGrp.Transaction.CommitRetaining;
          refreshDs(dsNsiGrp);
        end;
        free;
      end;
    1:
    begin
      GetGoodsLink(0);
      refreshDs(dsAlterneteList);
    end;
  end;


end;

procedure TFramNsiGoodsGrp.BtnRecycleClick(Sender: TObject);
begin

  if MessageDlg('Вы уверены что хотите удалить?',mtWarning,[mbYes,mbNo],0,mbNo)=mrYes then
  begin
    dsNsiGrp.Delete;
    refreshDs(dsNsiGrp);
    (dsNsiGrp).Transaction.CommitRetaining;
  end;
end;

procedure TFramNsiGoodsGrp.cxDBTreeListCustomDrawCell(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Node.Level=0 then
  begin
    ACanvas.Font.Style:= [fsBold];

  end;
  if not VarIsNull(AViewInfo.Node.Values[cxDBTreeList1F_COLOR.ItemIndex]) then
    ACanvas.Font.Color:=AViewInfo.Node.Values[cxDBTreeList1F_COLOR.ItemIndex];

    //AViewInfo.GetInterfaceTable.
    //dsNsiGrpF_COLOR.AsInteger;
//  AViewInfo.
//  TcxTreeListEditCellViewInfo.GetInterfaceTable
end;

procedure TFramNsiGoodsGrp.cxDBTreeListDblClick(Sender: TObject);
begin
  with TfrmEdinNsiGrp.Create(Application.MainForm) do
  begin
    dsNsiGoodsGrp.ParamByName('F_GRP').Value:=dsNsiGrpGRP_ID.Value;
//    dsNsiGoodsGrp.Active:=true;
    if ShowAsDialog then
    begin
      if dsNsiGoodsGrp.State in [dsEdit,dsInsert] then
        dsNsiGoodsGrp.Post;
      dsNsiGoodsGrp.Transaction.CommitRetaining;
      refreshDs(dsNsiGrp);
    end;
    free;
  end;
end;

procedure TFramNsiGoodsGrp.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  ShowGoodsLink(dsAlterneteListF_ID.Value);
  refreshDs(dsAlterneteList);
end;

procedure TFramNsiGoodsGrp.Initframe;
begin
 refreshDS(dsNsiGrp);
 refreshDs(dsAlterneteList);
end;

end.
