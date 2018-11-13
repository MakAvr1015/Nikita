unit uDlgPeriod;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask, RzEdit, DB, FIBDataSet, pFIBDataSet, DBCtrls,
  RzDBCmbo;

type
  TDlgPeriod = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    StartDate: TRzDateTimeEdit;
    EndDate: TRzDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rzEditPrice: TRzDBLookupComboBox;
    srPrice: TDataSource;
    dsPrice: TpFIBDataSet;
    dsPriceF_ID: TFIBBCDField;
    dsPriceF_NAME: TFIBStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgPeriod: TDlgPeriod;

implementation

{$R *.dfm}
uses
 uPublic,udm;
procedure TDlgPeriod.FormCreate(Sender: TObject);
begin
{  StartDate.Date:=Date;
  EndDate.Date:=Date;}
  dsPrice.Active:=true;
  dsPrice.FetchAll;
end;

end.
