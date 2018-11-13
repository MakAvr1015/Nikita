unit uDlgSaveZapas;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, cxGraphics, dxSkinsCore, dxSkinsDefaultPainters, ComCtrls,
  ShlObj, cxShellCommon, cxDropDownEdit, cxShellComboBox, cxSpinEdit,
  cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, FIBDataSet, pFIBDataSet,
  cxCalendar;

type
  TDlgSaveZapas = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    OptPrice: TcxLookupComboBox;
    RoznPrice: TcxLookupComboBox;
    SaveImg: TcxCheckBox;
    EditCount: TcxSpinEdit;
    DirToSave: TcxShellComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dsPriceList: TpFIBDataSet;
    dsPriceListF_ID: TFIBBCDField;
    dsPriceListF_NAME: TFIBStringField;
    srPriceList: TDataSource;
    DataSource1: TDataSource;
    pFIBDataSet1: TpFIBDataSet;
    FIBBCDField1: TFIBBCDField;
    FIBStringField1: TFIBStringField;
    OstPorog: TcxSpinEdit;
    Label5: TLabel;
    OnlyPhoto: TcxCheckBox;
    GroupBox1: TGroupBox;
    editDateFrom: TcxDateEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    OstFrom: TcxSpinEdit;
    Label8: TLabel;
    OstTo: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgSaveZapas: TDlgSaveZapas;

implementation

{$R *.dfm}
uses
 uDm;

procedure TDlgSaveZapas.FormCreate(Sender: TObject);
begin
  dsPriceList.Active:=true;
end;

end.
