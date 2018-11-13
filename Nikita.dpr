program Nikita;

{$R 'Resource\resource.res' 'Resource\resource.rc'}

uses
  Forms,
  SysUtils,
  UMainFrm in 'UMainFrm.pas' {FrmMain},
  UDocClass in 'UDocClass.pas',
  UInterfaces in 'UInterfaces.pas',
  UDM in 'UDM.pas' {DM: TDataModule},
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
  UMy_types in 'UMy_types.pas',
  DriverError in 'ShtrihDrv\DriverError.pas',
  DriverTypes in 'ShtrihDrv\DriverTypes.pas',
  DrvFRLib_TLB in 'ShtrihDrv\DrvFRLib_TLB.pas',
  GlobalConst in 'ShtrihDrv\GlobalConst.pas',
  LogFile in 'ShtrihDrv\LogFile.pas',
  RegExpr in 'ShtrihDrv\RegExpr.pas',
  SMDrvFR1CLib_TLB in 'ShtrihDrv\SMDrvFR1CLib_TLB.pas' {/  StringUtils in 'ShtrihDrv\StringUtils.pas';},
  uDlgShtrihProperty in 'uDlgShtrihProperty.pas' {DlgShtrihProperty},
  UFrmInputDocBackRozn in 'UFrmInputDocBackRozn.pas' {FrmInputDocBackRozn};

//  StringUtils in 'ShtrihDrv\StringUtils.pas';

{$R *.res}
//{$R resource.res}


begin
  Application.Initialize ;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Никита';
  Application.CreateForm(TDM, DM);
  Prg_path:=ExtractFilePath(Application.ExeName);
  if Login then
  begin
    Application.CreateForm(TFrmMain, FrmMain);
    ClearLog;
    Application.Run;
  end
  else
    Application.Terminate;
end.
