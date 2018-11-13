unit UNsiClass;

interface

uses
  cxCustomData, UFrmNsiPartner, UFrmNsiGoods, UTypes, Forms, SysUtils;

type
  TNsiPartner = class
    function GetPartner_ID : integer;
    property  Partner_id  : integer read GetPartner_ID;
  end;
type
  TNsiGood = class
  private
    f_good_id: integer;
  public
//    constructor Create (var good_id: integer);
    function GetId(var scancode: string):TDigits;
    function CheckBarter(f_id: integer) : boolean;
  end;


implementation

uses
  udm;
{ TNsiPartner }


{ TNsiPartner }

function TNsiPartner.GetPartner_ID: integer;
begin
  with TFrmNsiPartner.Create(application.mainForm) do
  begin
    if ShowAsDialog then
      result:=dsNsiPartnerF_ID.Value
    else
      result:=0;
    free;
  end;
end;

{ TNsiGood }

function TNsiGood.CheckBarter(f_id: integer): boolean;
begin
  result:=false;
  if F_id > 0 then
  begin
    dm.DsPublicDs.Active:=false;
    dm.DsPublicDs.SelectSQL.Clear;
    dm.DsPublicDs.Transaction.CommitRetaining;
    dm.DsPublicDs.SelectSQL.Add('select f_barter from sp_t_nsi_goods_get(');
    dm.DsPublicDs.SelectSQL.Add(IntToStr(F_id));
    dm.DsPublicDs.SelectSQL.Add(',null)');
    dm.DsPublicDs.Active:=true;
    if (dm.dsPublicDS.FieldByName('f_barter').AsInteger=1) then
      result:=true;
  end
end;

{
constructor TNsiGood.Create(var good_id: integer);
begin
  f_good_id := good_id;
end;
}

function TNsiGood.GetId(var scancode: string): TDigits;
  var
    i   : integer;
    ARowIndex: Integer;
    ARowInfo: TcxRowInfo;
begin
  if scancode<>'' then
  begin
    dm.dsGetGoodByScan.Active:=false;
    dm.dsGetGoodByScan.ParamByName('scan').Value:=scancode;
    dm.dsGetGoodByScan.Active:=true;
    if not dm.dsGetGoodByScan.IsEmpty then
    begin
      case dm.dsGetGoodByScan.RecordCount of
        1:
        begin
          setLength(result,1);
          result[0]:=dm.dsGetGoodByScanf_good.AsInteger;
          exit;
        end;
        else
        begin
          if not Assigned(FrmNsiGoods) then
          begin
            FrmNsiGoods:=TFrmNsiGoods.create(Application.MainForm);
          end;

          with FrmNsiGoods do
          begin
//            cxGrid1Level1.GridView:=cxGrid1DBCardView1;
            srNsiGoods.DataSet:=dm.dsGetGoodByScan;
            if ShowAsDialog then
            begin
              if cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
              begin
                setLength(result,cxGrid1DBTableView1.Controller.SelectedRowCount);
                for I := 0 to cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
                begin
                  ARowIndex:=cxGrid1DBTableView1.DataController.GetSelectedRowIndex(i);
                  ARowInfo:=cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);

                  result[i]:=cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid1DBTableView1F_GOOD.Index);
                end;
              end
              else
              begin
                setLength(result,1);
                result[0]:=srNsiGoods.DataSet.FieldByName('f_good').Value;
              end;

            end;
//            free;
            exit;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if not assigned(FrmNsiGoods) then
    begin
      FrmNsiGoods:=TFrmNsiGoods.create(Application.MainForm);
    end;
    with FrmNsiGoods do
    begin
      srNsiGoods.DataSet:=DM.dsNsiGoods;
      if ShowAsDialog then
      begin
        if cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
        begin
          setLength(result,cxGrid1DBTableView1.Controller.SelectedRowCount);
          for I := 0 to cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
          begin
            ARowIndex:=cxGrid1DBTableView1.DataController.GetSelectedRowIndex(i);
            ARowInfo:=cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);

            result[i]:=cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid1DBTableView1F_GOOD.Index);
          end;
        end
        else
        begin
          setLength(result,1);
          result[0]:=srNsiGoods.DataSet.FieldByName('f_good').Value;
        end;
      end;
//      free;
    end;

  end;
end;

end.
