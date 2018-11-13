unit UFramBufer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, RzPanel, RzButton, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxSpinEdit, UFramGoodCard, FIBDataSet,
  pFIBDataSet, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBCtrls, FIBDatabase,
  pFIBDatabase;

type
  TFramBufer = class(TFrame)
    RzToolbar1: TRzToolbar;
    DSBuffer: TDataSource;
    FramGoodCard1: TFramGoodCard;
    cxGrid: TcxGrid;
    cxGridDBTableViewBuffer: TcxGridDBTableView;
    cxGridDBTableViewBufferF_ID: TcxGridDBColumn;
    cxGridDBTableViewBufferF_GOOD: TcxGridDBColumn;
    cxGridDBTableViewBufferF_GOOD_ARTICLE: TcxGridDBColumn;
    cxGridDBTableViewBufferF_GOOD_NAME: TcxGridDBColumn;
    cxGridDBTableViewBufferF_CNT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    SrSklad: TDataSource;
    LkpSklad: TcxLookupComboBox;
    dsGoodBuffer: TpFIBDataSet;
    dsGoodBufferF_ID: TFIBBCDField;
    dsGoodBufferF_GOOD: TFIBBCDField;
    dsGoodBufferF_GOOD_NAME: TFIBStringField;
    dsGoodBufferF_CNT: TFIBFloatField;
    dsGoodBufferF_ARTICLE: TFIBStringField;
    pFIBTransaction1: TpFIBTransaction;
    dsGoodBufferF_OST: TFIBFloatField;
    cxGridDBTableViewBufferF_OST: TcxGridDBColumn;
    BtnPrint: TRzToolButton;
    BtnMoveAllLeft: TRzToolButton;
    BtnRecycle: TRzToolButton;
    procedure cxGridDBTableViewBufferDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxGridDBTableViewBufferDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure RzToolButton5Click(Sender: TObject);
    procedure LkpSkladPropertiesChange(Sender: TObject);
    procedure cxGridDBTableViewBufferKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    scan  : string;
    scan_time : ttime;
  public

    { Public declarations }
  end;

implementation

uses
  udm,uPublic,UTypes;

{$R *.dfm}




procedure TFramBufer.cxGridDBTableViewBufferDragDrop(Sender, Source: TObject; X,
  Y: Integer);

begin
  with TcxDragControlObject(Source) do
  begin
    if Control is TcxGridSite then
      with TcxGridSite(Control) do
      begin
        DragDropGood(TcxGridDBTableView(GridView),dsGoodBuffer);
      end;
  end;
end;

procedure TFramBufer.cxGridDBTableViewBufferDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')<>nil then
    begin
      Accept:=true;

    end;
  end;
end;

procedure TFramBufer.cxGridDBTableViewBufferKeyPress(Sender: TObject;
  var Key: Char);
var
  goods : Tdigits;
  cnt:integer;
  i:integer;
begin
  if key=Char(VK_RETURN) then
  begin
    goods:=GetNsiGood(date(),scan,LkpSklad.EditValue);
  cnt:=length(goods);
  if cnt>0 then
  begin
    for I := 0 to cnt - 1 do
    begin
      dsGoodBuffer.Insert;
      dsGoodBufferF_GOOD.Value:=goods[i];
      dsGoodBufferF_CNT.Value:=1;
      dsGoodBuffer.Post;
      dsGoodBuffer.Transaction.CommitRetaining;
      RefreshDs(dsGoodBuffer);
    end;
  end
  else
  begin
    beep;
  end;
  scan:='';
  end
  else
  begin
    if (time()- scan_time)<0.000001 then
      scan:=scan+key
    ELSE
      scan:=key;
    scan_time:=time();
  end;
end;

procedure TFramBufer.LkpSkladPropertiesChange(Sender: TObject);
begin
  dsGoodBuffer.Active:=false;
  dsGoodBuffer.ParamByName('f_sklad').Value:=LkpSklad.EditValue;
  dsGoodBuffer.Active:=true;
end;

procedure TFramBufer.RzToolButton5Click(Sender: TObject);
begin
  dsGoodBuffer.DisableControls;
  dsGoodBuffer.First;

  while not dsGoodBuffer.Eof do
  begin
    dsGoodBuffer.Delete;
  end;
  dsGoodBuffer.Transaction.CommitRetaining;
  dsGoodBuffer.EnableControls;
end;

end.
