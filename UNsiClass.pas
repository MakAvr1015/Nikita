unit UNsiClass;

interface

uses
  cxCustomData, UFrmNsiPartner, UFrmNsiGoods, UTypes, Forms, SysUtils, UInterfaces;

type
  TNsiPartner = class
  private
    f_inn: string;
    f_name: String;
    f_address: String;
    f_id: integer;
  public
    function GetInn: string;
    procedure SetInn(p_inn: string);
    function GetName: string;
    procedure SetName(p_name: string);
    function GetAddress: string;
    procedure SetAddress(P_address: string);
    function GetPartner_ID: integer;
    procedure SetPartner_id(p_id: integer);
    property Partner_id: integer read GetPartner_ID write SetPartner_id;
  end;

type
  TNsiSklad = class
  private
    f_prefix: string;
    f_name: string;
    f_id: integer;
  public
    constructor CreateByID(p_id: integer);
    function GetPrefix: String;
    procedure SetPrefix(p_prefix: String);
    function GetName: String;
    procedure SetName(p_name: String);
    function GetId: integer;
    procedure SetId(p_id: integer);
  end;

type
  TNsiGood = class
  private
    f_good_id: integer;
    f_article: string;
    f_name: string;
  public
    // constructor Create (var good_id: integer);
    function GetId(var scancode: string): TDigits;
    function CheckBarter(f_id: integer): boolean;
    function GetF_Id: integer;
    procedure SetF_id(p_id: integer);
    function GetArticle: string;
    procedure SetArticle(p_article: string);
    function GetName: String;
    procedure SetName(p_name: String);
  end;

implementation

uses
  udm, Data.DB;
{ TNsiPartner }

{ TNsiPartner }

function TNsiPartner.GetAddress: string;
begin
  result := f_address;
end;

function TNsiPartner.GetInn: string;
begin
  result := f_inn;
end;

function TNsiPartner.GetName: string;
begin
  result := f_name;
end;

function TNsiPartner.GetPartner_ID: integer;
begin
  if self.f_id > 0 then
  begin
    result := self.f_id;
  end
  else
  begin
    with TFrmNsiPartner.Create(application.mainForm) do
    begin
      if ShowAsDialog then
        result := dsNsiPartnerF_ID.Value
      else
        result := 0;
      free;
    end;
  end;
end;

procedure TNsiPartner.SetAddress(P_address: string);
begin
  f_address := P_address;
end;

procedure TNsiPartner.SetInn(p_inn: string);
begin
  f_inn := p_inn;
end;

procedure TNsiPartner.SetName(p_name: string);
begin
  f_name := p_name;
end;

procedure TNsiPartner.SetPartner_id(p_id: integer);
begin
  self.f_id := p_id;
end;

{ TNsiGood }

function TNsiGood.CheckBarter(f_id: integer): boolean;
begin
  result := false;
  if f_id > 0 then
  begin
    dm.DsPublicDs.Active := false;
    dm.DsPublicDs.SelectSQL.Clear;
    dm.DsPublicDs.Transaction.CommitRetaining;
    dm.DsPublicDs.SelectSQL.Add('select f_barter from sp_t_nsi_goods_get(');
    dm.DsPublicDs.SelectSQL.Add(IntToStr(f_id));
    dm.DsPublicDs.SelectSQL.Add(',null)');
    dm.DsPublicDs.Active := true;
    if (dm.DsPublicDs.FieldByName('f_barter').AsInteger = 1) then
      result := true;
  end
end;

{
  constructor TNsiGood.Create(var good_id: integer);
  begin
  f_good_id := good_id;
  end;
}

function TNsiGood.GetArticle: string;
begin
  result := f_article;
end;

function TNsiGood.GetF_Id: integer;
begin
  result := f_good_id;
end;

function TNsiGood.GetId(var scancode: string): TDigits;
var
  i: integer;
  ARowIndex: integer;
  ARowInfo: TcxRowInfo;
begin
  if scancode <> '' then
  begin
    dm.dsGetGoodByScan.Active := false;
    dm.dsGetGoodByScan.ParamByName('scan').Value := scancode;
    dm.dsGetGoodByScan.Active := true;
    if not dm.dsGetGoodByScan.IsEmpty then
    begin
      case dm.dsGetGoodByScan.RecordCount of
        1:
          begin
            setLength(result, 1);
            result[0] := //dm.dsGetGoodByScanF_SCANCODE.AsInteger;
              dm.dsGetGoodByScanf_good.AsInteger;
            exit;
          end;
      else
        begin
          if not Assigned(FrmNsiGoods) then
          begin
            FrmNsiGoods := TFrmNsiGoods.Create(application.mainForm);
          end;

          with FrmNsiGoods do
          begin
            // cxGrid1Level1.GridView:=cxGrid1DBCardView1;
            srNsiGoods.DataSet := dm.dsGetGoodByScan;
            if ShowAsDialog then
            begin
              if cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
              begin
                setLength(result,
                  cxGrid1DBTableView1.Controller.SelectedRowCount);
                for i := 0 to cxGrid1DBTableView1.Controller.
                  SelectedRowCount - 1 do
                begin
                  ARowIndex := cxGrid1DBTableView1.DataController.
                    GetSelectedRowIndex(i);
                  ARowInfo := cxGrid1DBTableView1.DataController.GetRowInfo
                    (ARowIndex);

                  result[i] := cxGrid1DBTableView1.DataController.GetRowValue
                    (ARowInfo, cxGrid1DBTableView1F_GOOD.Index);
                end;
              end
              else
              begin
                setLength(result, 1);
                result[0] := srNsiGoods.DataSet.FieldByName('f_good').Value;
              end;

            end;
            // free;
            exit;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if not Assigned(FrmNsiGoods) then
    begin
      FrmNsiGoods := TFrmNsiGoods.Create(application.mainForm);
    end;
    with FrmNsiGoods do
    begin
      srNsiGoods.DataSet := dm.dsNsiGoods;
      if ShowAsDialog then
      begin
        if cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
        begin
          setLength(result, cxGrid1DBTableView1.Controller.SelectedRowCount);
          for i := 0 to cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
          begin
            ARowIndex := cxGrid1DBTableView1.DataController.
              GetSelectedRowIndex(i);
            ARowInfo := cxGrid1DBTableView1.DataController.GetRowInfo
              (ARowIndex);

            result[i] := cxGrid1DBTableView1.DataController.GetRowValue
              (ARowInfo, cxGrid1DBTableView1F_GOOD.Index);
          end;
        end
        else
        begin
          setLength(result, 1);
          result[0] := srNsiGoods.DataSet.FieldByName('f_good').Value;
          //result[0] := dsGoodScancodesF_ID.Value;
          //srNsiGoods.DataSet.FieldByName('f_good').Value;
        end;
      end;
      // free;
    end;

  end;
end;

function TNsiGood.GetName: String;
begin
  result := f_name;
end;

procedure TNsiGood.SetArticle(p_article: string);
begin
  f_article := p_article;
end;

procedure TNsiGood.SetF_id(p_id: integer);
begin
  f_good_id := p_id;
end;

procedure TNsiGood.SetName(p_name: String);
begin
  f_name := p_name;
end;

{ TNsiSklad }

constructor TNsiSklad.CreateByID(p_id: integer);
begin
  if dm.dsSklad.Locate('F_ID', p_id, [loPartialKey]) then
  begin
    self.f_id := p_id;
    self.f_name := dm.dsSklad.FieldByName('F_NAME').AsString;
    self.f_prefix := dm.dsSklad.FieldByName('F_PREFIX').AsString;
  end;
end;

function TNsiSklad.GetId: integer;
begin
  result := self.f_id
end;

function TNsiSklad.GetName: String;
begin
  result := f_name;
end;

function TNsiSklad.GetPrefix: String;
begin
  result := f_prefix;
end;

procedure TNsiSklad.SetId(p_id: integer);
begin
  self.f_id := p_id;
end;

procedure TNsiSklad.SetName(p_name: String);
begin
  f_name := p_name;
end;

procedure TNsiSklad.SetPrefix(p_prefix: String);
begin
  f_prefix := p_prefix;
end;

end.
