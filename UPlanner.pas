unit UPlanner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPrototype, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxEdit,
  cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerAgendaView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence, dxBarBuiltInMenu,
  cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.DApt,
  dxRibbonSkins, dxRibbonCustomizationForm, dxPrinting, cxSchedulerActions,
  dxBar, cxClasses, dxRibbon, System.Actions, Vcl.ActnList, dxActions,
  System.ImageList, Vcl.ImgList, cxImageList, FireDAC.Comp.Client,
  cxPropertiesStore, RzForms, frxClass, RzButton, RzPanel, Vcl.ExtCtrls,
  RzStatus, cxContainer, cxLocalization, cxSchedulerDBStorage, frxDBSet,
  frxExportRTF, frxExportPDF, frxExportXML, frxExportXLS, frxFIBComponents,
  frxChBox, frxTableObject, frxCross, frxRich, frxExportBaseDialog,
  frxExportDOCX, frxDCtrl, frxOLE, frxDesgn, frxBarcode, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, FIBDatabase, pFIBDatabase, Data.DB, FIBDataSet, pFIBDataSet;

type
  TFrmPlanner = class(TFrmPrototype)
    cxScheduler1: TcxScheduler;
    FDSchemaAdapter1: TFDSchemaAdapter;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxSchedulerNewEvent: TdxSchedulerNewEvent;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarEvent: TdxBar;
    dxBarLargeButtonNewEvent: TdxBarLargeButton;
    dxSchedulerNewRecurringEvent: TdxSchedulerNewRecurringEvent;
    dxBarLargeButtonNewRecurringEvent: TdxBarLargeButton;
    dxSchedulerGoBackward: TdxSchedulerGoBackward;
    dxBarNavigation: TdxBar;
    dxBarLargeButtonGoBackward: TdxBarLargeButton;
    dxSchedulerGoForward: TdxSchedulerGoForward;
    dxBarLargeButtonGoForward: TdxBarLargeButton;
    dxSchedulerGoToToday: TdxSchedulerGoToToday;
    dxBarLargeButtonGotoToday: TdxBarLargeButton;
    dxSchedulerGoToDate: TdxSchedulerGoToDate;
    dxBarLargeButtonGotoDate: TdxBarLargeButton;
    dxSchedulerNextSevenDays: TdxSchedulerNextSevenDays;
    dxBarLargeButtonNext7Days: TdxBarLargeButton;
    dxSchedulerDayView: TdxSchedulerDayView;
    dxBarArrange: TdxBar;
    dxBarLargeButtonDay: TdxBarLargeButton;
    dxSchedulerWorkWeekView: TdxSchedulerWorkWeekView;
    dxBarLargeButtonWorkWeek: TdxBarLargeButton;
    dxSchedulerWeekView: TdxSchedulerWeekView;
    dxBarLargeButtonWeek: TdxBarLargeButton;
    dxSchedulerMonthView: TdxSchedulerMonthView;
    dxBarLargeButtonMonth: TdxBarLargeButton;
    dxSchedulerTimeGridView: TdxSchedulerTimeGridView;
    dxBarLargeButtonTimeline: TdxBarLargeButton;
    dxSchedulerYearView: TdxSchedulerYearView;
    dxBarLargeButtonYear: TdxBarLargeButton;
    dxSchedulerGanttView: TdxSchedulerGanttView;
    dxBarLargeButtonGanttView: TdxBarLargeButton;
    dxSchedulerAgendaView: TdxSchedulerAgendaView;
    dxBarLargeButtonAgenda: TdxBarLargeButton;
    dxSchedulerGroupByNone: TdxSchedulerGroupByNone;
    dxBarGroupBy: TdxBar;
    dxBarLargeButtonGroupByNone: TdxBarLargeButton;
    dxSchedulerGroupByDate: TdxSchedulerGroupByDate;
    dxBarLargeButtonGroupByDate: TdxBarLargeButton;
    dxSchedulerGroupByResource: TdxSchedulerGroupByResource;
    dxBarLargeButtonGroupByResource: TdxBarLargeButton;
    dxRibbonTabView: TdxRibbonTab;
    dxBarTimeScale: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxSchedulerTimeScale60Minutes: TdxSchedulerTimeScale60Minutes;
    dxBarLargeButton60Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale30Minutes: TdxSchedulerTimeScale30Minutes;
    dxBarLargeButton30Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale15Minutes: TdxSchedulerTimeScale15Minutes;
    dxBarLargeButton15Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale10Minutes: TdxSchedulerTimeScale10Minutes;
    dxBarLargeButton10Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale6Minutes: TdxSchedulerTimeScale6Minutes;
    dxBarLargeButton6Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale5Minutes: TdxSchedulerTimeScale5Minutes;
    dxBarLargeButton5Minutes: TdxBarLargeButton;
    dxSchedulerCompressWeekends: TdxSchedulerCompressWeekends;
    dxBarLayout: TdxBar;
    dxBarLargeButtonCompressWeekends: TdxBarLargeButton;
    dxSchedulerWorkTimeOnly: TdxSchedulerWorkTimeOnly;
    dxBarLargeButtonWorkingHours: TdxBarLargeButton;
    dxSchedulerSnapEventsToTimeSlots: TdxSchedulerSnapEventsToTimeSlots;
    dxBarLargeButtonSnapEventsToTimeSlots: TdxBarLargeButton;
    dxSchedulerDateNavigator: TdxSchedulerDateNavigator;
    dxBarLargeButtonDateNavigator: TdxBarLargeButton;
    dxSchedulerResourcesLayoutEditor: TdxSchedulerResourcesLayoutEditor;
    dxBarLargeButtonResourcesLayoutEditor: TdxBarLargeButton;
    dxSchedulerShowPrintForm: TdxSchedulerShowPrintForm;
    dxRibbonTabFile: TdxRibbonTab;
    dxBarPrint: TdxBar;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    dxSchedulerShowPrintPreviewForm: TdxSchedulerShowPrintPreviewForm;
    dxBarLargeButtonPrintPreview: TdxBarLargeButton;
    dxSchedulerShowPageSetupForm: TdxSchedulerShowPageSetupForm;
    dxBarLargeButtonPageSetup: TdxBarLargeButton;
    cxSchedulerStorage1: TcxSchedulerStorage;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    dsScheduler: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    srScheduler: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsSchedulerAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlanner: TFrmPlanner;

implementation

{$R *.dfm}

procedure TFrmPlanner.dsSchedulerAfterPost(DataSet: TDataSet);
begin
  inherited;
  pFIBTransaction1.CommitRetaining;
end;

procedure TFrmPlanner.FormCreate(Sender: TObject);
begin
  inherited;
  dsScheduler.Active := true;
end;

procedure TFrmPlanner.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPlanner := nil;
end;

end.
