unit UThrRefreshNsi;

interface

uses
  Classes;

type
  TRefreshNsi = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

  uses udm;
{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TRefreshNsi.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TRefreshNsi }

procedure TRefreshNsi.Execute;
var
  id: integer;
  buffer : TMemoryStream;
begin
  { Place thread code here }
//  self.FreeOnTerminate:=true;
//  RefreshDs(dm.dsNsiGoods,'No',0,true);
  dm.TimerRefreshNsiGood.Enabled:=false;

  id:=0;
//  dm.dsNsiGoods.DisableControls;
  Synchronize(dm.dsNsiGoods.DisableControls);
  if dm.dsNsiGoods.Active then
  begin
//    bkm:=dm.dsNsiGoods;
    id:=dm.dsNsiGoodsF_Good.AsInteger;
    dm.dsNsiGoods.Active:=false;
  end;
  dm.dsNsiGoods.Active:=true;
  if id>0 then

//    dm.ClientDataSet1.l
    dm.dsNsiGoods.Locate('F_GOOD',id,[]);

//  dm.dsNsiGoods.FetchAll;
//  if bkm <> nil then
//    dm.dsNsiGoods.GotoBookmark(bkm);
  dm.refreshNsiGood:=false;
  dm.TimerRefreshNsiGood.Enabled:=true;
  Synchronize(dm.dsNsiGoods.EnableControls);

//  self.Suspend;

//  dm.dsNsiGoods.EnableControls;
end;

end.
