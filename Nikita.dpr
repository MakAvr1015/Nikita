program Nikita;

{$R 'resource.res' 'Resource\resource.rc'}

uses
  Forms,
  SysUtils,
  ShlObj,
  Menus,
  ActnList,
  DIALOGS,
  UMainFrm in 'UMainFrm.pas' {FrmMain},
  UDocClass in 'UDocClass.pas',
  UInterfaces in 'UInterfaces.pas',
  UDM in 'UDM.pas' {dm: TDataModule},
  UFrmPrototype in 'UFrmPrototype.pas' {FrmPrototype},
  UFrmDocInpList in 'UFrmDocInpList.pas' {FrmListInputDocs},
  UFrmInputDoc in 'UFrmInputDoc.pas' {FrmInputDoc},
  UFrmNsiPartner in 'UFrmNsiPartner.pas' {FrmNsiPartner},
  UNsiClass in 'UNsiClass.pas',
  UPublic in 'UPublic.pas',
  UFrmNsiParnerEdit in 'UFrmNsiParnerEdit.pas' {FrmNsiParnerEdit},
  UFrmNsiGoods in 'UFrmNsiGoods.pas' {FrmNsiGoods},
  UFrmNsiGoodsEdit in 'UFrmNsiGoodsEdit.pas' {FrmNsiGoodsEdit},
  UFramNsiGoodsGrp in 'UFramNsiGoodsGrp.pas' {FramNsiGoodsGrp: TFrame},
  UfrmEdinNsiGrp in 'UfrmEdinNsiGrp.pas' {frmEdinNsiGrp},
  UFrmDocOutList in 'UFrmDocOutList.pas' {FrmDocOutList},
  UFrmOutputDoc in 'UFrmOutputDoc.pas' {FrmOutputDoc},
  UfrmNsiPrice in 'UfrmNsiPrice.pas' {frmNsiPrice},
  UFrmImport in 'UFrmImport.pas' {FrmImport},
  UFrmCalcPrice in 'UFrmCalcPrice.pas' {FrmCalcPrice},
  UFrmNsiSklad in 'UFrmNsiSklad.pas' {FrmNsiSklad},
  UFrmNsiBank in 'UFrmNsiBank.pas' {FrmNsiBank},
  UFrmNsiBankEdit in 'UFrmNsiBankEdit.pas' {FrmNsiBankEdit},
  UFrmZapas in 'UFrmZapas.pas' {FrmZapas},
  UFrmNsiSkladEdit in 'UFrmNsiSkladEdit.pas' {FrmNsiSkladEdit},
  uPassWord in 'uPassWord.pas' {PasswordDlg},
  UFrmNsiPriceEd in 'UFrmNsiPriceEd.pas' {FrmNsiPriceEd},
  UFrmDocPriceList in 'UFrmDocPriceList.pas' {FrmDocPriceList},
  UFrmPriceDoc in 'UFrmPriceDoc.pas' {FrmPriceDoc},
  uDlgCopyDoc2Price in 'uDlgCopyDoc2Price.pas' {DlgCopyDoc2Price},
  UFrmInputDocBack in 'UFrmInputDocBack.pas' {FrmInputDocBack},
  UFrmImportSource in 'UFrmImportSource.pas' {FrmImportSource},
  UFrmInputPayList in 'UFrmInputPayList.pas' {FrmInputPayList},
  UFrmInputPay in 'UFrmInputPay.pas' {FrmInputPay},
  UFrmMoveDocList in 'UFrmMoveDocList.pas' {FrmMoveDocList},
  UFrmMoveDoc in 'UFrmMoveDoc.pas' {FrmMoveDoc},
  UFrmRoznSale in 'UFrmRoznSale.pas' {FrmRoznSale},
  uDlgPeriod in 'uDlgPeriod.pas' {DlgPeriod},
  UFrmImportProp in 'UFrmImportProp.pas' {FrmImportProp},
  UFrmErrorImport in 'UFrmErrorImport.pas' {FrmErrorImport},
  UFrmEditInventory in 'UFrmEditInventory.pas' {FrmEditInventory},
  UFrmInventoryList in 'UFrmInventoryList.pas' {FrmInventoryList},
  UFrmEditInventoryDoc in 'UFrmEditInventoryDoc.pas' {FrmEditInventoryDoc},
  UFrmListBack in 'UFrmListBack.pas' {FrmListBack},
  UFrmDocOutBackList in 'UFrmDocOutBackList.pas' {FrmDocOutBackList},
  uAboutBox in 'uAboutBox.pas' {AboutBox},
  UFrmOutDocBack in 'UFrmOutDocBack.pas' {FrmOutDocBack},
  UFrmOutputPayList in 'UFrmOutputPayList.pas' {FrmOutputPayList},
  UFrmOutputPay in 'UFrmOutputPay.pas' {FrmOutputPay},
  uDlgSaveZapas in 'uDlgSaveZapas.pas' {DlgSaveZapas},
  uDlgLoadPicture in 'uDlgLoadPicture.pas' {DlgLoadPicture},
  UFrmMoveDocSpisan in 'UFrmMoveDocSpisan.pas' {FrmMoveDocSpisan},
  UFrmMoveDocListSpisan in 'UFrmMoveDocListSpisan.pas' {FrmMoveDocListSpisan},
  UFrmMoveDocPrihod in 'UFrmMoveDocPrihod.pas' {FrmMoveDocPrihod},
  UFrmMoveDocListPrihod in 'UFrmMoveDocListPrihod.pas' {FrmMoveDocListPrihod},
  UFrmDocList_template in 'UFrmDocList_template.pas' {FrmDocList_template},
  UFrmTemplateDoc in 'UFrmTemplateDoc.pas' {FrmTemplateDoc},
  UFrmNsiDiscount in 'UFrmNsiDiscount.pas' {FrmNsiDiscount},
  UFrmNSIDiscountCardList in 'UFrmNSIDiscountCardList.pas' {FrmNSIDiscountCardList},
  uDlgKKMReport in 'uDlgKKMReport.pas' {DlgKKMReport},
  UTypes in 'UTypes.pas',
  UDlgSave in 'UDlgSave.pas' {DlgSave},
  UFrmNsiGoodsGrp in 'UFrmNsiGoodsGrp.pas' {FrmNsiGoodsGrp},
  UFrmViewDoc in 'UFrmViewDoc.pas' {FrmViewDoc},
  UFramGoodCard in 'UFramGoodCard.pas' {FramGoodCard: TFrame},
  UFrmNSIGoodType in 'UFrmNSIGoodType.pas' {FrmNSIGoodType},
  UFrmListInputDocsHz in 'UFrmListInputDocsHz.pas' {FrmListInputDocsHz},
  uFrmDocOutListHz in 'uFrmDocOutListHz.pas' {FrmDocOutListHz},
  UFrmNSIDocProperty in 'UFrmNSIDocProperty.pas' {FrmNSIDocProperty},
  uContextPasswordDlg in 'uContextPasswordDlg.pas' {ContextPasswordDlg},
  UFrmConsole in 'UFrmConsole.pas' {FrmConsole},
  UThrRefreshNsi in 'UThrRefreshNsi.pas',
  UFrmNSIGoodsInfo in 'UFrmNSIGoodsInfo.pas' {FrmNSIGoodsInfo},
  UFramBufer in 'UFramBufer.pas' {FramBufer: TFrame},
  UFrmZapasNEw in 'UFrmZapasNEw.pas' {FrmZapasNEw},
  UFrmProgress in 'UFrmProgress.pas' {FrmProgress},
  UFrmRoznList in 'UFrmRoznList.pas' {FrmRoznList},
  UFrmNSIGoodsLinks in 'UFrmNSIGoodsLinks.pas' {FrmNSIGoodsLinks},
  UFrmNSIGoodAttributes in 'UFrmNSIGoodAttributes.pas' {FrmNSIGoodAttributes},
  UFrmDocView in 'UFrmDocView.pas' {FrmDocView},
  UFrmDocSpisan in 'UFrmDocSpisan.pas' {FrmDocSpisan},
  uDlgImportInputDoc in 'uDlgImportInputDoc.pas' {DlgImportInputDoc},
  UMy_types in 'UMy_types.pas' {,
    DriverError in 'ShtrihDrv\DriverError.pas',
    DriverTypes in 'ShtrihDrv\DriverTypes.pas',
    DrvFRLib_TLB in 'ShtrihDrv\DrvFRLib_TLB.pas',
    GlobalConst in 'ShtrihDrv\GlobalConst.pas',
    LogFile in 'ShtrihDrv\LogFile.pas',
    RegExpr in 'ShtrihDrv\RegExpr.pas',
    SMDrvFR1CLib_TLB in 'ShtrihDrv\SMDrvFR1CLib_TLB.pas' {/  StringUtils in 'ShtrihDrv\StringUtils.pas';},
  DriverError in 'ShtrihDrv\DriverError.pas',
  DriverTypes in 'ShtrihDrv\DriverTypes.pas',
  DrvFRLib_TLB in 'ShtrihDrv\DrvFRLib_TLB.pas',
  GlobalConst in 'ShtrihDrv\GlobalConst.pas',
  LogFile in 'ShtrihDrv\LogFile.pas',
  RegExpr in 'ShtrihDrv\RegExpr.pas',
  SMDrvFR1CLib_TLB in 'ShtrihDrv\SMDrvFR1CLib_TLB.pas' {/  StringUtils in 'ShtrihDrv\StringUtils.pas';},
  uDlgShtrihProperty in 'uDlgShtrihProperty.pas' {DlgShtrihProperty},
  UFrmInputDocBackRozn in 'UFrmInputDocBackRozn.pas' {FrmInputDocBackRozn},
  UFramBanner in 'UFramBanner.pas' {FramBanner: TFrame},
  UDocumentsClasses in 'UDocumentsClasses.pas',
  UQueueProc in 'UQueueProc.pas',
  UFrmMrkActions in 'UFrmMrkActions.pas' {FrmMrkActions},
  MoveDocumentServicesImpl1 in 'MoveDocumentServicesImpl1.pas',
  UFrmListZakaz in 'UFrmListZakaz.pas' {FrmListZakaz},
  UPluginManager in 'UPluginManager.pas',
  UPluginAPI in 'Plugins\API\Headers\UPluginAPI.pas',
  Nikita_TLB in 'Nikita_TLB.pas',
  UPlanner in 'UPlanner.pas' {FrmPlanner},
  OutDocumentServicesImpl1 in 'OutDocumentServicesImpl1.pas',
  UDlgPrgProp in 'UDlgPrgProp.pas' {DlgPrgProp},
  UFrmZakazList in 'UFrmZakazList.pas' {FrmZakazList},
  UFrmZakazDoc in 'UFrmZakazDoc.pas' {FrmZakazDoc},
  UDlgMakeDocFromZakaz in 'UDlgMakeDocFromZakaz.pas',
  Vcl.ActnMan {DlgMakeDocFromZakaz},
  UNsiGoodScancodeFrame in 'UNsiGoodScancodeFrame.pas' {NsiGoodScancodeFrame: TFrame},
  UFrmMakeBkp in 'UFrmMakeBkp.pas' {FrmMakeBkp};

// StringUtils in 'ShtrihDrv\StringUtils.pas';

{$R *.res}
// {$R resource.res}
var
  vl_index,vl_index2 : integer;
  vl_actions : TArrayAct;
  vl_MenuItem: TMenuItem;
  vl_ActionClient,vl_ActionClient1 : TActionClientItem;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.Title := 'Никита';
  Application.CreateForm(Tdm, dm);
  Prg_path := ExtractFilePath(Application.ExeName);
  app_data := GetSpecialFolderPath(CSIDL_APPDATA) + '\Nikita';
  if not directoryexists(app_data) then
  begin
    MkDir(app_data);
  end;
  ClearLog;
//  Application.CreateForm(TFrmMain, FrmMain);
  if Login then
  begin
    Application.Title := Application.Title + ' ' + prg_title;
    LogMsg('Начинаем грузить форму');
    Application.CreateForm(TFrmMain, FrmMain);
    LogMsg('Форма загружена');
    try
      dm.cxLocalizer1.Active := true;
      dm.cxLocalizer1.Locale := 1049;
    except
      on E : Exception do
          LogMsg('Ошибка локализации '+E.Message);
    end;
    Plugins.LoadPlugins(PluginPath,'.dll');
    for vl_index := 0 to Plugins.FCount-1 do
    begin
     // LogMsg('Загрузка расширения '+Plugins.FItems[vl_index].);
     try
      Plugins.FItems[vl_index].ConnectDB(DataBasePath,DM.pFIBDatabase.ConnectParams.UserName,
        DM.pFIBDatabase.ConnectParams.Password,DM.pFIBDatabase.LibraryName);
      vl_actions := Plugins.FItems[vl_index].GetActions;
      vl_ActionClient := FrmMain.ActionManager1.FindItemByCaption('Дополнения');
      for vl_index2 := 0 to Plugins.FItems[vl_index].FActCount - 1 do
        begin
{          with FrmMain.MainMenu1.Items.Find('Дополнения') do
          begin
            vl_MenuItem := TMenuItem.Create(FrmMain.MainMenu1);
            vl_MenuItem.Action := Plugins.FItems[vl_index].FActions[vl_index2];
            Add(vl_MenuItem);
          end;}
          //vl_Action := TAction.Create(FrmMain.ActionManager1);
          vl_ActionClient1 := TActionClientItem.Create(vl_ActionClient.Items);
          vl_ActionClient1.Action := Plugins.FItems[vl_index].FActions[vl_index2];
{          vl_ActionClient := FrmMain.ActionManager1.AddAction(Plugins.FItems[vl_index].FActions[vl_index2],
            FrmMain.ActionManager1.ActionBars.ActionBars[1].items[0]);}

//          FrmMain.ActionManager1.ActionBars.ActionBars[1].
//          LogMsg(Plugins.FItems[vl_index].FActions[vl_index2].Caption);
        end;
     except
       on E : Exception do
          ShowMessage(E.ClassName+' Ошибка подключения расширения : '+E.Message);
     end;
    end;

    Application.Run;
  end
  else
  begin
    Plugins.Destroy;
    DM.Free;
    Application.Terminate;
  end;

end.
