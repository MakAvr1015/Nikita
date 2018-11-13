unit UMainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzGroupBar, ExtCtrls, uDm, RzCommon, RzStatus, RzForms,
  Menus, StdCtrls, ADODB, Grids, DBGrids, DB, XPStyleActnCtrls, ActnList,
  ActnMan, ToolWin, ActnCtrls, ActnMenus, StdActns, dxBar, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  cxControls, dxSkinsdxBarPainter, dxStatusBar, dxRibbonStatusBar,
  dxDockControl, dxDockPanel, dxSkinsdxDockControlPainter, UFramBufer,
  dxSkinsdxLCPainter, dxLayoutLookAndFeels, dxLayoutControl, dxsbar, Tabs,
  DockTabSet, ComCtrls, dxSkinscxPCPainter, cxPC, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxBarcode, frxDesgn,
  frxFIBComponents, frxDCtrl, frxCross, dxBarExtItems;

type
  TFrmMain = class(TForm)
    RzRegIniFile: TRzRegIniFile;
    RzFormState1: TRzFormState;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    dxBarManager: TdxBarManager;
    dxBarListItem: TdxBarListItem;
    dxRibbon1: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManagerBar2: TdxBar;
    N15: TMenuItem;
    dxBarButton6: TdxBarButton;
    dxBarManagerBar3: TdxBar;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    N16: TMenuItem;
    dxBarButton16: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    dxBarButton20: TdxBarButton;
    N17: TMenuItem;
    dxBarButton21: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton25: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    N18: TMenuItem;
    N19: TMenuItem;
    dxBarButton29: TdxBarButton;
    dxDockingManager: TdxDockingManager;
    NGoodBufer: TMenuItem;
    Panel: TPanel;
    Splitter1: TSplitter;
    PageControl1: TcxPageControl;
    FramBufer1: TFramBufer;
    dxRibbon1Tab2: TdxRibbonTab;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxCrossObject1: TfrxCrossObject;
    frxDialogControls1: TfrxDialogControls;
    frxFIBComponents2: TfrxFIBComponents;
    frxDesigner2: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    dxBarRoznSale: TdxBarLargeButton;
    dxBarManagerBar1: TdxBar;
    dxBarRoznBack: TdxBarLargeButton;
    dxBarRoznMove: TdxBarLargeButton;
    dxBarButton30: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure dxBarListItemGetData(Sender: TObject);
    procedure dxBarListItemClick(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure NGoodBuferClick(Sender: TObject);
    procedure FramBufer1BtnMoveAllLeftClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    CreatedMDICount: Integer;
  end;

var
  FrmMain: TFrmMain;

implementation


{$R *.dfm}

{ TFrmMain }
uses
  upublic;

procedure TFrmMain.dxBarListItemClick(Sender: TObject);
begin
with dxBarListItem do
  TCustomForm(Items.Objects[ItemIndex]).Show;
end;

procedure TFrmMain.dxBarListItemGetData(Sender: TObject);
begin
with dxBarListItem do
  ItemIndex := Items.IndexOfObject(ActiveMDIChild);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  TranslateForm(self,Language,TranslateFile);
end;

procedure TFrmMain.FramBufer1BtnMoveAllLeftClick(Sender: TObject);
var
  i         : integer;
  recipient : TComponent;
begin
  i:=FrmMain.PageControl1.ActivePageIndex;
  if i>-1 then
  begin
    recipient:=FrmMain.PageControl1.DockClients[i];
{    showMessage(
      FrmMain.PageControl1.DockClients[i].Name);}
//    if recipient is TFrmMoveDoc then

  end;
end;

procedure TFrmMain.N16Click(Sender: TObject);
begin
  ShowAboutBox;
end;

procedure TFrmMain.N19Click(Sender: TObject);
begin
  ShowConsole;
end;

procedure TFrmMain.NGoodBuferClick(Sender: TObject);
begin
  if FramBufer1.LkpSklad.EditValue=null then
  begin
    dm.dsGetSysParam.Active:=false;
    dm.dsGetSysParam.ParamByName('PARAM_NAME').Value:='DEFAULT_SKLAD';
    dm.dsGetSysParam.Active:=true;
    def_sklad:=dm.dsGetSysParam.FieldByName('PARAM_VALUE').AsInteger;
    FramBufer1.LkpSklad.EditValue:=def_sklad;
    FramBufer1.dsGoodBuffer.Active:=true;
  end;
  panel.Visible:=not panel.Visible;
end;

end.
