unit uDlgCopyDoc2Price;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, RzButton, RzRadChk, Mask, RzEdit, RzSpnEdt, DB, FIBDataSet,
  pFIBDataSet, DBCtrls, RzDBCmbo;

type
  TDlgCopyDoc2Price = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    edNacenka: TRzSpinEdit;
    Label1: TLabel;
    ChckOpenDoc: TRzCheckBox;
    EdPrice: TRzDBLookupComboBox;
    Label2: TLabel;
    dsPriceList: TpFIBDataSet;
    dsPriceListF_ID: TFIBBCDField;
    dsPriceListF_NAME: TFIBStringField;
    srPriceList: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgCopyDoc2Price: TDlgCopyDoc2Price;

implementation

{$R *.dfm}
uses
 udm,upublic;

procedure TDlgCopyDoc2Price.FormShow(Sender: TObject);
begin
  dsPriceList.Active:=true;
  dsPriceList.Last;
  dsPriceList.First;
end;

end.
