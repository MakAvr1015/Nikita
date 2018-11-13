unit UFrmRoznList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, cxPropertiesStore, RzForms, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, Menus, RzButton, RzPanel,
  ExtCtrls, RzStatus, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxBarExtItems, dxBar,
  dxRibbonGallery, cxClasses, dxRibbon, cxControls;

type
  TFrmRoznList = class(TFrmPrototype)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRoznList: TFrmRoznList;

implementation
  uses
    uPublic, uDm;
{$R *.dfm}

end.
