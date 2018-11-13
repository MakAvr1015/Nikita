unit UFrmDevReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxClasses, cxGraphics, cxCustomData, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, DB, FIBDataSet, pFIBDataSet, dxorgchr,
  dxdborgc, cxControls, cxCustomPivotGrid, cxDBPivotGrid, cxPropertiesStore,
  RzForms, frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxClass,
  frxExportPDF, frxCross, frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents,
  Menus, RzButton, RzPanel, ExtCtrls, RzStatus, TeEngine, Series, TeeProcs,
  Chart, DBChart;

type
  TFrmDevReport = class(TFrmPrototype)
    cxDBPivotGrid: TcxDBPivotGrid;
    srReport: TDataSource;
    dsReport: TpFIBDataSet;
    DBChart: TDBChart;
    BarSeria: TBarSeries;
    Splitter1: TSplitter;
    dxDbOrgChart: TdxDbOrgChart;
    dsReportChart: TpFIBDataSet;
    srReportChart: TDataSource;
    procedure BtnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDevReport: TFrmDevReport;

implementation
uses
  udm,upublic;
{$R *.dfm}

procedure TFrmDevReport.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  dsReport.Active:=false;
  dsReport.Active:=true;
  dsReportChart.Active:=false;
  dsReportChart.Active:=true;
  dxDbOrgChart.OrderFieldName:='f_ost';
//  BarSeria.YValues.ValueSource:='F_STR_OST'; // <-- the Field for Bar Values
//  BarSeria.XLabelsSource:='F_GOOD'; // <-- the Field for Bar Labels
  cxDBPivotGrid.CreateAllFields;
end;

end.
