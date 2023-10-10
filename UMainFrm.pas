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
  dxLayoutLookAndFeels, dxLayoutControl, Tabs,
  DockTabSet, ComCtrls, dxSkinscxPCPainter, cxPC, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxBarcode, frxDesgn,
  frxFIBComponents, frxDCtrl, frxCross, dxBarExtItems, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxRibbonCustomizationForm, dxBarBuiltInMenu,
  frxExportBaseDialog, frxExportXLSX, frxExportODF, frxExportPPTX,
  frxExportHelpers, frxExportHTMLDiv, frxExportBIFF,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions;

type
  TFrmMain = class(TForm)
    RzRegIniFile: TRzRegIniFile;
    RzFormState1: TRzFormState;
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
    dxBarButton12: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    dxBarButton20: TdxBarButton;
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
    dxDockingManager: TdxDockingManager;
    Panel: TPanel;
    Splitter1: TSplitter;
    PageControl1: TcxPageControl;
    FramBufer1: TFramBufer;
    dxRibbon1Tab2: TdxRibbonTab;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
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
    frxXLSXExport1: TfrxXLSXExport;
    frxHTML5DivExport1: TfrxHTML5DivExport;
    frxODSExport1: TfrxODSExport;
    frxPPTXExport1: TfrxPPTXExport;
    frxODTExport1: TfrxODTExport;
    frxBIFFExport1: TfrxBIFFExport;
    dxBarButton31: TdxBarButton;
    ActionList: TActionList;
    ActNsiTovar: TAction;
    ActNsiPartner: TAction;
    ActNsiSklad: TAction;
    ActNsiStatus: TAction;
    ActDocInp: TAction;
    ActDocOut: TAction;
    ActDocMoneyInp: TAction;
    ActDocMoneyOut: TAction;
    ActNsiPrice: TAction;
    ActNsiBank: TAction;
    ActZapas: TAction;
    ActDocPrice: TAction;
    ActDocMove: TAction;
    ActInventory: TAction;
    ActDocInpBack: TAction;
    ActDocOutBack: TAction;
    ActDocMoveSpisan: TAction;
    ActDocMovePrihod: TAction;
    ActDocTemplate: TAction;
    ActNsiDiscount: TAction;
    ActReportKKM: TAction;
    ActNsiTovarType: TAction;
    ActDocInpHz: TAction;
    ActDocOutHZ: TAction;
    ActNsiDocProperty: TAction;
    ActNsiGoodsInfo: TAction;
    WindowCascade1: TWindowCascade;
    ActDocZakaz: TAction;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActTovarBufer: TAction;
    ActTools: TAction;
    ActPlanner: TAction;
    ActSendSales: TAction;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    procedure dxBarListItemGetData(Sender: TObject);
    procedure dxBarListItemClick(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure NGoodBuferClick(Sender: TObject);
    procedure FramBufer1BtnMoveAllLeftClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure ActDocInpExecute(Sender: TObject);
    procedure ActDocOutExecute(Sender: TObject);
    procedure ActDocMoneyInpExecute(Sender: TObject);
    procedure ActDocMoneyOutExecute(Sender: TObject);
    procedure ActDocPriceExecute(Sender: TObject);
    procedure ActDocMoveExecute(Sender: TObject);
    procedure ActInventoryExecute(Sender: TObject);
    procedure ActDocInpBackExecute(Sender: TObject);
    procedure ActDocOutBackExecute(Sender: TObject);
    procedure ActDocMoveSpisanExecute(Sender: TObject);
    procedure ActDocMovePrihodExecute(Sender: TObject);
    procedure ActDocTemplateExecute(Sender: TObject);
    procedure ActDocInpHzExecute(Sender: TObject);
    procedure ActDocOutHZExecute(Sender: TObject);
    procedure ActDocZakazExecute(Sender: TObject);
    procedure ActZapasExecute(Sender: TObject);
    procedure ActReportKKMExecute(Sender: TObject);
    procedure ActNsiTovarExecute(Sender: TObject);
    procedure ActNsiPartnerExecute(Sender: TObject);
    procedure ActNsiSkladExecute(Sender: TObject);
    procedure ActNsiStatusExecute(Sender: TObject);
    procedure ActNsiPriceExecute(Sender: TObject);
    procedure ActNsiBankExecute(Sender: TObject);
    procedure ActNsiDiscountExecute(Sender: TObject);
    procedure ActNsiTovarTypeExecute(Sender: TObject);
    procedure ActNsiDocPropertyExecute(Sender: TObject);
    procedure ActNsiGoodsInfoExecute(Sender: TObject);
    procedure ActTovarBuferExecute(Sender: TObject);
    procedure ActToolsExecute(Sender: TObject);
    procedure ActPlannerExecute(Sender: TObject);
    procedure ActSendSalesExecute(Sender: TObject);
  private
    { Private declarations }
    scan: string;
    scan_code: boolean;
    function ActScan : boolean;
    procedure appmessage(var msg: tmsg; var handled: boolean);
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
  upublic, UInterfaces, pFIBStoredProc, UDlgPrgProp, UDocumentsClasses,
  UFrmPrototype, uDocClass;

procedure TFrmMain.ActDocInpBackExecute(Sender: TObject);
begin
  ShowInDocBackJournal;
end;

procedure TFrmMain.ActDocInpExecute(Sender: TObject);
begin
  ShowDocInJournal;
end;

procedure TFrmMain.ActDocInpHzExecute(Sender: TObject);
begin
  ShowDocInJournalHz;
end;

procedure TFrmMain.ActDocMoneyInpExecute(Sender: TObject);
begin
  ShowMoneyInJournal;
end;

procedure TFrmMain.ActDocMoneyOutExecute(Sender: TObject);
begin
  ShowMoneyOutJournal;
end;

procedure TFrmMain.ActDocMoveExecute(Sender: TObject);
begin
  ShowMoveDocJournal;
end;

procedure TFrmMain.ActDocMovePrihodExecute(Sender: TObject);
begin
  ShowMoveDocPrihodJournal;
end;

procedure TFrmMain.ActDocMoveSpisanExecute(Sender: TObject);
begin
  ShowMoveDocSpisanJournal;
end;

procedure TFrmMain.ActDocOutBackExecute(Sender: TObject);
begin
  ShowOutDocBackJournal;
end;

procedure TFrmMain.ActDocOutExecute(Sender: TObject);
begin
  ShowDocOutJournal;
end;

procedure TFrmMain.ActDocOutHZExecute(Sender: TObject);
begin
  ShowDocOutJournalHz;
end;

procedure TFrmMain.ActDocPriceExecute(Sender: TObject);
begin
  ShowDocPriceJournal;
end;

procedure TFrmMain.ActDocTemplateExecute(Sender: TObject);
begin
  ShowTemplateDocJournal;
end;

procedure TFrmMain.ActDocZakazExecute(Sender: TObject);
begin
  ShowZakazList;
end;

procedure TFrmMain.ActInventoryExecute(Sender: TObject);
begin
  ShowInventoryJournal;
end;

function TFrmMain.ActScan : boolean;
var
  vl_scan: TArray<String>;
  vl_key: Integer;
begin
//  ShowMessage(self.scan);
  vl_scan := scan.Split(['#']);
  scan := '';
  result := false;
  if Length(vl_scan) > 0 then
  begin
    if vl_scan[0] = 'TOutDoc' then
        begin
          if Length(vl_scan) > 1 then
            try
              vl_key := StrToInt(vl_scan[1]);
            except
              on Exception do
                vl_key := -10;
            end
          else
            vl_key := -10;
          with TOutDoc.Create(vl_key, nil) do
          begin
            doc_type := 1;
            OpenEditFrm;
          end;
          result := true;
        end
    else if vl_scan[0] = 'TTempDoc' then
        begin
          if Length(vl_scan) > 1 then
            try
              vl_key := StrToInt(vl_scan[1]);
            except
              on Exception do
                vl_key := -10;
            end
          else
            vl_key := -10;
          with TTemplateDoc.Create(vl_key) do
          begin
            OpenEditFrm;
          end;
          result := true;
       end;
  end;
end;

procedure TFrmMain.ActSendSalesExecute(Sender: TObject);
begin
  CheckWebQueue(true);
end;

procedure TFrmMain.ActPlannerExecute(Sender: TObject);
begin
  ShowCalendar;
end;

procedure TFrmMain.ActToolsExecute(Sender: TObject);
begin
  ShowConsole;
end;

procedure TFrmMain.ActNsiBankExecute(Sender: TObject);
begin
  ShowNsiBank;
end;

procedure TFrmMain.ActNsiDiscountExecute(Sender: TObject);
begin
  ShowNsiDiscountCard;
end;

procedure TFrmMain.ActNsiDocPropertyExecute(Sender: TObject);
begin
  ShowNsiDocProperty;
end;

procedure TFrmMain.ActNsiGoodsInfoExecute(Sender: TObject);
begin
  ShowNsiGoodsInfo;
end;

procedure TFrmMain.ActNsiPartnerExecute(Sender: TObject);
begin
  ShowNsiPartner;
end;

procedure TFrmMain.ActNsiPriceExecute(Sender: TObject);
begin
  ShowNsiPrice;
end;

procedure TFrmMain.ActNsiSkladExecute(Sender: TObject);
begin
  ShowNsiSklad;
end;

procedure TFrmMain.ActNsiStatusExecute(Sender: TObject);
begin

  with TFrmPrototype.Create(application.MainForm) do
  begin
    showAsChild;
  end;

end;

procedure TFrmMain.ActNsiTovarExecute(Sender: TObject);
begin
  ShowNsiGoods;
end;

procedure TFrmMain.ActNsiTovarTypeExecute(Sender: TObject);
begin
  ShowNsiGoodType;
end;

procedure TFrmMain.ActReportKKMExecute(Sender: TObject);
begin
  ShowKKMReport;
end;

procedure TFrmMain.ActTovarBuferExecute(Sender: TObject);
begin
  if FramBufer1.LkpSklad.EditValue = null then
  begin
    dm.dsGetSysParam.Active := false;
    dm.dsGetSysParam.ParamByName('PARAM_NAME').Value := 'DEFAULT_SKLAD';
    dm.dsGetSysParam.Active := true;
    def_sklad := dm.dsGetSysParam.FieldByName('PARAM_VALUE').AsInteger;
    FramBufer1.LkpSklad.EditValue := def_sklad;
    FramBufer1.dsGoodBuffer.Active := true;
  end;
  Panel.Visible := not Panel.Visible;
end;

procedure TFrmMain.ActZapasExecute(Sender: TObject);
begin
  ShowZapas;
end;

procedure TFrmMain.appmessage(var msg: tmsg; var handled: boolean);
var
  Key: Char;
  vl_res : boolean;
begin
  if (msg.message = wm_char) then
  begin
    Key := Char(msg.wParam);
    case Key of
      Char(VK_RETURN):
        begin
          if scan_code then
          begin
            vl_res := ActScan();
            handled := true;
            scan := '';
            scan_code := false;
          end
          else
             handled := false;
        end;
      Char(1):
        begin
          scan_code := true;
          scan := '';
        end
    else
      begin
        if scan_code then
        begin
          scan := scan + key; //msg.wParam.ToString
          handled := true;
          if length(scan)>30 then
          begin
            scan_code := false;
            handled := true;
          end;
        end
        else
          handled := false;
      end;

    end;
//    LogMsg(InttoStr(msg.hwnd)+ ':' + scan);
  end;

end;

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

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  for i := 0 to PageControl1.PageCount - 1 do
  begin
    PageControl1.Pages[0].Destroy;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Caption := Prg_title;
  TranslateForm(self, Language, TranslateFile);
  //application.OnMessage := appmessage;

end;

procedure TFrmMain.FramBufer1BtnMoveAllLeftClick(Sender: TObject);
var
  i: Integer;
  recipient: TComponent;
  db_procedure: TpFIBStoredProc;
begin
  i := FrmMain.PageControl1.ActivePageIndex;
  if i > -1 then
  begin
    recipient := FrmMain.PageControl1.DockClients[i];
    if Supports(recipient, IFrmDoc) then
    begin
      if (Sender as TControl).Name = 'BtnToDoc' then
        db_procedure := FramBufer1.spCopyToDoc
      else if (Sender as TControl).Name = 'BtnFromDoc' then
        db_procedure := FramBufer1.spCopyFromDoc;
      db_procedure.ParamByName('P_DOC').Value := (recipient as IFrmDoc).DocId;
      db_procedure.ParamByName('P_DOC_TYPE').Value := (recipient as IFrmDoc)
        .TableName;
      if db_procedure.ParamByName('P_DOC').Value > 0 then
      begin
        db_procedure.executeImmediate;
        db_procedure.Transaction.CommitRetaining;
        (recipient as IFrmDoc).RefreshDoc;
        RefreshDs(FramBufer1.dsGoodBuffer, 'F_GOOD');
      end;
    end;
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

procedure TFrmMain.N20Click(Sender: TObject);
begin
  ShowCalendar;
end;

procedure TFrmMain.N21Click(Sender: TObject);
begin
  with TDlgPrgProp.Create(self) do
  begin
    // LoadProp;
    if ShowModal = mrOk then
    begin

    end;
    free;
  end;
end;

procedure TFrmMain.N22Click(Sender: TObject);
begin
  CheckWebQueue(true);
end;

procedure TFrmMain.NGoodBuferClick(Sender: TObject);
begin
  if FramBufer1.LkpSklad.EditValue = null then
  begin
    dm.dsGetSysParam.Active := false;
    dm.dsGetSysParam.ParamByName('PARAM_NAME').Value := 'DEFAULT_SKLAD';
    dm.dsGetSysParam.Active := true;
    def_sklad := dm.dsGetSysParam.FieldByName('PARAM_VALUE').AsInteger;
    FramBufer1.LkpSklad.EditValue := def_sklad;
    FramBufer1.dsGoodBuffer.Active := true;
  end;
  Panel.Visible := not Panel.Visible;
end;

end.
