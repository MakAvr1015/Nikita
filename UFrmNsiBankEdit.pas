unit UFrmNsiBankEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, StdCtrls, RzLabel, Mask,
  RzEdit, RzDBEdit, DB, FIBDataSet, FIBDatabase, pFIBDatabase, pFIBDataSet,
  Menus, RzStatus, cxPropertiesStore, RzForms, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross, frxBarcode,
  frxDCtrl, frxDesgn, frxFIBComponents;

type
  TFrmNsiBankEdit = class(TFrmPrototype)
    dsNsiBakEdit: TpFIBDataSet;
    pFIBTransaction: TpFIBTransaction;
    dsNsiBakEditF_ID: TFIBBCDField;
    dsNsiBakEditF_NAME: TFIBStringField;
    dsNsiBakEditF_U_NAME: TFIBStringField;
    dsNsiBakEditF_U_ADDRES: TFIBStringField;
    dsNsiBakEditF_INN: TFIBStringField;
    dsNsiBakEditF_KPP: TFIBStringField;
    dsNsiBakEditF_K_SCH: TFIBStringField;
    srNsiBakEdit: TDataSource;
    EdName: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Ed_U_NAME: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzLabel5: TRzLabel;
    RzDBEdit4: TRzDBEdit;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzDBEdit5: TRzDBEdit;
    dsNsiBakEditF_BIK: TFIBStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNsiBankEdit: TFrmNsiBankEdit;

implementation

{$R *.dfm}
uses uPublic,uDm;

procedure TFrmNsiBankEdit.BtnOKClick(Sender: TObject);
begin
  PostAllDS(self,true);
  inherited;
end;

procedure TFrmNsiBankEdit.FormShow(Sender: TObject);
begin
  inherited;
  dsNsiBakEdit.Active:=true;
end;

end.
