unit UPublic;

interface
uses
  uMy_Types,

  Forms,Controls,SysUtils,Dialogs,Windows, Db, cxCustomData,Variants, UTypes,IniFiles,
  FIBDatabase, dxDockPanel,cxGridDbTableView,pFIBDataSet, TypInfo,SHFolder;


  procedure ShowNsiPartner;
  function GetNsiPartner : integer;
  procedure ShowNsiGoods;
  procedure ShowNsiPrice;
  function GetNsiGood (dat: tdate;scan : string = '';sclad : integer = 0;price: integer = 0 ): TDigits;//integer;
  function GetOutDoc (num_doc : string=''): TDigits;
  procedure ShowDocInJournal;
  procedure ShowDocInJournalHz;
  procedure ShowDocOutJournalHz;
  procedure ShowDocOutJournal;
  function  GetDocOut ( v_partner : integer=0; v_pay_type : integer=0) : integer;
  procedure StartImport(DS  : pointer; pCalcFields : TCalcFieldsForImport=nil);
  function CalcPrice(price_id  : integer) : boolean;
  function GetNsiSklad : integer;
  procedure ShowNsiSklad;
  procedure ShowNsiBank;
  function GetNsiBank : integer;
  function GetNsiPrice : integer;
  procedure ShowZapas;
  function login: boolean;
  procedure ShowDocPriceJournal;
  procedure ShowDocPrice(doc_id:integer);
  function GetImportBase: integer;
  procedure ShowMoneyInJournal;
  procedure ShowMoneyOutJournal;
  procedure ShowMoveDocJournal;
  procedure ShowInventoryJournal;
  procedure ShowInDocBackJournal;
  procedure ShowOutDocBackJournal;
  procedure ShowAboutBox;
  procedure ShowMoveDocSpisanJournal;
  procedure ShowMoveDocPrihodJournal;
  procedure ShowNsiGoodEdit(good_id : integer);
  procedure ShowTemplateDocJournal;
  procedure ShowNsiDiscountCard;
  procedure ShowKKMReport;
  function GetNsiDiscountCard : integer;
  function GetGoodsGrp: integer;
  procedure ShowNsiGoodType;
  procedure ShowDoc(doc_name:string;doc_id:integer);
  procedure ShowNsiDocProperty;
  procedure GetPrgVersion;
  function GetPassword : string;
  procedure ShowConsole;
  procedure ShowNsiGoodsInfo;
  /// <summary>
  ///  ��������� ���������� ������ ���������������
  ///  </summary>
  procedure DragDropGood(source : TcxGridDBTableView; dest : TpFIBDataSet);
  function translate(capt : string;lang : string; Dict : TIniFile) : string;
  function translateCapt(capt : string;lang : string; DictFileName : String) : string;
  procedure TranslateForm(Form : TForm; Lang : string; DictFileName : string);
  function GetSpecialFolderPath(folder : integer) : string;
var
  Prg_path  : string;
  Curr_transaction : TFibTransaction;
  DataBasePath : string ='base\nbase.gdb';
  Prg_version : string;
  Language    : string;
  TranslateFile : string = 'translate.ini';
  def_sklad : integer;
  kkm : TKkm;
const CheckCount=1;
const IdxDocIn=1;
const IdxDocOut=2;
const IdxDocMove=3;
implementation

uses
  {uMainFrm,}Udm,UFrmNsiPartner,UFrmNsiGoods,UFrmDocInpList,UFrmDocOutList,ufrmNsiPrice,
  uFrmImport,uFrmCalcPrice,uFrmNsiSklad,uFrmNsiBank,uFrmZapas,uPassWord,uFrmDocPriceList,
  uFrmPriceDoc,UFrmImportSource,UFrmInputPayList,UFrmInputPay,uFrmMoveDocList,
  uFrmMoveDoc,uFrmInventoryList,UFrmEditInventoryDoc,UFrmListBack,uFrmDocOutBackList,
  uAboutBox,UFrmOutputPayList,UFrmNsiGoodsEdit,uFrmMoveDocListSpisan,uFrmMoveDocListPrihod,
  UFrmDocList_template,uFrmNsiDiscountCardList,uDlgKKMReport,UFrmNsiGoodsGrp,UFrmViewDoc,
  uFrmNSIGoodType,UFrmListInputDocsHz,UFrmDocOutListHz,uFrmNSIDocProperty,uContextPasswordDlg,
  uFrmConsole, UNsiClass, uFrmNSIGoodsInfo,uFrmZapasNew;


function GetOutDoc (num_doc : string=''): TDigits;
var
  i   : integer;
  ARowIndex: Integer;
  ARowInfo: TcxRowInfo;
begin
  with TFrmDocOutList.Create(Application.MainForm) do
  begin
    if ShowAsDialog then
    begin
        if cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
        begin
          setLength(result,cxGrid1DBTableView1.Controller.SelectedRowCount);
          for I := 0 to cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
          begin
            ARowIndex:=cxGrid1DBTableView1.DataController.GetSelectedRowIndex(i);
            ARowInfo:=cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);

            result[i]:=cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid1DBTableView1F_DOC_OUT1.Index);
          end;
        end
        else
        begin
          setLength(result,1);
          result[0]:=dsDocList.FieldByName('F_DOC_OUT').Value;
        end;

    end;
  end;
end;
function GetSpecialFolderPath(folder : integer) : string;
const
  SHGFP_TYPE_CURRENT = 0;
var
  path: array [0..MAX_PATH] of char;
begin
  if SUCCEEDED(SHGetFolderPath(0,folder,0,SHGFP_TYPE_CURRENT,@path[0])) then
    Result := path
  else
    Result := '';
end;

function translate(capt : string;lang : string; Dict : TIniFile) : string;
var s : string;
begin
 Result:=capt;
 S:=Dict.ReadString(Lang, capt, '');
// if S='' then Dict.WriteString(Lang, capt, '');
 if S<>'' then
  Result:=S
 else
  Dict.WriteString(Lang, capt,'');
end;

function translateCapt(capt : string;lang : string; DictFileName : String) : string;
var s : string;
var Dict : TIniFile;
begin
 Result:=capt;
 if (Language='���') or (Language='') then
    exit;
 Dict:=TIniFile.Create(Prg_path+'\'+DictFileName);
 S:=Dict.ReadString(Lang, capt, '');
// if S='' then Dict.WriteString(Lang, capt, '');
 if S<>'' then
  Result:=S
 else
  Dict.WriteString(Lang, capt,'');
 Dict.Free;
end;


procedure TranslateForm(Form : TForm; Lang : string; DictFileName : string);
var Dict : TIniFile;
 I,J : Integer;
// Obj : TObject;
 prop : PPropInfo;
 tr_string  : string;
begin
  if (Language='���') or (Language='') then
    exit;
  Dict:=TIniFile.Create(Prg_path+'\'+DictFileName);
  For I:=0 to Form.ComponentCount-1 do
  Begin
    prop := GetPropInfo(Form.Components[i], 'Caption');
    if Assigned(prop) then
    begin
      tr_string:=GetStrProp(Form.Components[i],prop);
      if tr_string<> '' then
      begin
        tr_string:=Translate(tr_string, Lang, Dict);
        SetStrProp(Form.Components[i],prop,tr_string);
      end;
    end;
    prop := GetPropInfo(Form.Components[i], 'Text');
    if Assigned(prop) then
    begin
      tr_string:=GetStrProp(Form.Components[i],prop);
      if tr_string<> '' then
      begin
        tr_string:=Translate(tr_string, Lang, Dict);
        SetStrProp(Form.Components[i],prop,tr_string);
      end;
    end;
  End;
  Dict.Free;
end;


procedure DragDropGood(source : TcxGridDBTableView; dest : TpFIBDataSet);
var
  AControl  : TControl;
  newGrp,I  : integer;
  ARowIndex : Integer;
  ARowInfo  : TcxRowInfo;
  f_index   : integer;
  f_cnt_index : integer;
  f_cnt     : integer;
  article   : string;
begin
  f_cnt_index:=-1;
        with source do
        begin
          for I := 0 to ColumnCount - 1 do
          begin
            if columns[i].DataBinding.FieldName='F_GOOD' then
              f_index:=i;
            if ((columns[i].DataBinding.FieldName='F_CNT')
              or (columns[i].DataBinding.FieldName='F_END_OST')) then
              f_cnt_index:=i;
          end;

          for I := 0 to Controller.SelectedRecordCount - 1 do
          begin
            ARowIndex:=DataController.GetSelectedRowIndex(i);
            ARowInfo:=DataController.GetRowInfo(ARowIndex);
            DataController.GetValue(ArowInfo.RecordIndex,0);
            dest.Insert;
            article:=DataController.GetValue(ArowInfo.RecordIndex,f_index);
            dest.FieldByName('f_good').Value:=article;
            if f_cnt_index>=1 then
              f_cnt:=DataController.GetValue(ArowInfo.RecordIndex,f_cnt_index)
            else
              f_cnt:=1;
            if dest.FindField('f_cnt')<>nil then
              dest.FieldByName('f_cnt').Value:=f_cnt;
            dest.Post;
          end;
          if i>0 then
          begin
            dest.DisableControls;
            dest.Transaction.CommitRetaining;
            dest.Active:=false;
            dest.Active:=true;
            dest.EnableControls;
          end;
        end;

end;


procedure ShowNsiGoodsInfo;
begin
  with TFrmNSIGoodsInfo.Create(Application.MainForm) do
  begin
    ShowAsDialog;
    free;
  end;
end;
procedure GetPrgVersion;
begin
  dm.dsGetSysParam.Active:=false;
  dm.dsGetSysParam.ParamByName('PARAM_NAME').Value:='PROGRAM_VERSION';
  dm.dsGetSysParam.Active:=true;
  prg_version:=dm.dsGetSysParam.FieldByName('PARAM_VALUE').AsString;
end;

procedure ShowConsole;
begin
  with TFrmConsole.Create(Application.MainForm) do
    showAsChild;
end;
function GetPassword : string;
begin
  with TContextPasswordDlg.Create(Application.MainForm) do
  begin
    if ShowModal=mrOk then
    begin
      result:=Password.Text;
    end;
    free;    
  end;
end;
procedure ShowNsiDocProperty;
begin
  with TFrmNSIDocProperty.Create(Application.MainForm) do
  begin
    showAsChild;
  end;
end;

procedure ShowNsiGoodType;
begin
  with TFrmNSIGoodType.Create(Application.MainForm) do
  begin
    showAsChild;
  end;
end;
procedure ShowDoc(doc_name:string;doc_id:integer);
begin
//  TFrmViewDoc.Create(doc_name,doc_id);
end;
function GetGoodsGrp: integer;
begin
  with TFrmNsiGoodsGrp.Create(Application.MainForm) do
  begin
    if ShowAsDialog then
    begin
      result:=FramNsiGoodsGrp1.dsNsiGrpGRP_ID.Value;
    end;
  end;
end;

procedure ShowKKMReport;
begin
  with TDlgKKMReport.Create(Application.MainForm) do
  begin
    ShowModal;
    free;
  end;
end;
procedure ShowNsiDiscountCard;
begin
  with TFrmNsiDiscountCardList.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;

function GetNsiDiscountCard : integer;
begin
  with TFrmNsiDiscountCardList.Create(Application.MainForm) do
  begin
    if ShowAsDialog then
    begin
      result:=dsNsiDiscountCardF_ID.Value;
    end;
  end;
end;

procedure ShowTemplateDocJournal;
begin
  with TFrmDocList_template.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;
procedure ShowNsiGoodEdit(good_id : integer);
begin
  with TFrmNsiGoodsEdit.Create(Application.MainForm) do
  begin
    dsEditNsiGoods.ParamByName('NSI_ID').Value:=good_id;
    dsEditNsiGoods.ParamByName('F_Goods_grp').Clear;
    dsEditNsiGoods.Active:=true;
    if ShowAsDialog then
    begin
      if dsEditNsiGoods.State in [dsEdit,dsInsert] then
      begin
        dsEditNsiGoods.Post;
      end;
      dsEditNsiGoods.Transaction.CommitRetaining;
    end;
    free;
  end;
end;
procedure ShowMoneyOutJournal;
begin
  with TFrmOutputPayList.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;
procedure ShowOutDocBackJournal;
begin
  with tFrmDocOutBackList.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;
procedure ShowAboutBox;
begin
  with TAboutBox.Create(Application.MainForm) do
  begin
     ShowModal;
     free;
  end;
end;
procedure ShowInDocBackJournal;
begin
  with TFrmListBack.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;
procedure ShowInventoryJournal;
begin
  with TFrmInventoryList.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;

procedure ShowMoveDocJournal;
begin
  with TFrmMoveDocList.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;

procedure ShowMoveDocSpisanJournal;
begin
  with TFrmMoveDocList.CreateForm(Application.MainForm,'TFrmMoveDocListSpisan') do
  //TFrmMoveDocListSpisan.Create(Application.MainForm) do
  begin
    caption:=translateCapt('������ ��������',Language,TranslateFile);
    tag:=2;
    ShowAsChild;
  end;
end;
procedure ShowMoveDocPrihodJournal;
begin
  with TFrmMoveDocListPrihod.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;

function GetImportBase: integer;
begin
  with TFrmImportSource.Create(Application) do
  begin
    result:=0;
    if ShowAsDialog then
    begin
      result:=dsImportBaseF_ID.Value;
    end;
    free;
  end;
end;

function login: boolean;
begin
  result:=false;

  try
    dm.pFIBDatabase.Connected:=true;
    dm.pFIBDatabase.DefaultTransaction.Active:=true;
    result:=true;
  except
    with TPasswordDlg.Create(Application) do
    begin
      dm.pFIBDatabase.Connected:=false;

      if ShowModal=mrOk then
      begin
//        dm.pFIBDatabase.DbName:=EdBase.Text;
        DataBasePath:=EdBase.Text;
        dm.pFIBDatabase.ConnectParams.UserName:=EdUser.Text;
        Language:=LangSelect.Text;
//        dm.pFIBDatabase.ConnectParams.RoleName:=EdRole.Text;
        dm.pFIBDatabase.ConnectParams.Password:=Password.Text;
        try
          dm.pFIBDatabase.Connected:=true;
          dm.pFIBDatabase.DefaultTransaction.Active:=true;
          result:=true;
          if Atol.Checked then
            kkm:=TKkm.Create(1);
          if Strih.Checked then
            kkm:=TKkm.Create(2);
        except
          on E: Exception do
          begin
            MessageDlg(E.Message,mtError,[],E.HelpContext);
          end;
        end;
      end;
      free;
    end;
  end;
end;

procedure ShowMoneyInJournal;
begin
  with TFrmInputPayList.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;

procedure ShowDocPrice(doc_id:integer);
begin
  with TFrmPriceDoc.Create(Application.MainForm) do
  begin
    dsPriceDocHead.ParamByName('f_price_doc').Value:=doc_id;
    dsPriceDocHead.Active:=true;
    ShowAsChild;
  end;

end;

procedure ShowDocPriceJournal;
begin
  with TFrmDocPriceList.Create(Application.MainForm) do
  begin
    ShowAsChild;
  end;
end;

  procedure ShowZapas;
  var
    dxDockPanel : TdxDockPanel;

  begin
//    dxDockPanel := TdxDockPanel.Create(FrmMain);
//    dxDockPanel.DockState:=FrmMain.dxDockSitePublic;
//    dxDockPanel.Caption:='�������� ������';
//    dxDockPanel.ShowSingleTab:=true;
//    with TFrmZapas.Create(Application.MainForm) do
//    with TFrmZapas.Create(dxDockPanel) do
    with TFrmZapas.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;
  procedure ShowNsiBank;
  begin
    with TFrmNsiBank.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;
  function GetNsiBank : integer;
  begin
    with TFrmNsiBank.Create(Application.MainForm) do
    begin
      result:=0;
      if ShowAsDialog then
      begin
        result:=dsNsiBanksF_ID.Value;
      end;
      free;
    end;
  end;


  function GetNsiSklad : integer;
  begin
    with TFrmNsiSklad.Create(Application.MainForm) do
    begin
      if ShowAsDialog then
      begin
        result:=dsNsiSkladF_ID.Value;
      end;
      free;
    end;
  end;

  procedure ShowNsiSklad;
  begin
    with TFrmNsiSklad.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;

  function CalcPrice(price_id  : integer) : boolean;
  begin
    with TFrmCalcPrice.Create(Application.MainForm) do
    begin
      dsPriceSource.Active:=true;
      if showAsDialog then
      begin
        result:=true;
      end
      else
        result:=false;
      free;
    end;
  end;

  procedure StartImport(DS  : pointer; pCalcFields : TCalcFieldsForImport=nil);
  begin
    with TFrmImport.CreateImp(ds,pCalcFields) do
    begin
      ShowAsDialog;
      free;
    end;
  end;
  procedure ShowNsiPrice;
  begin
    with TfrmNsiPrice.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;

  function GetNsiPrice : integer;
  begin
    with TfrmNsiPrice.Create(Application.MainForm) do
    begin
      dsListNsiPrice.afterOpen:=nil;
      Panel1.Visible:=false;
      cxGrid1.Align:=alClient;
      if ShowAsDialog then
        result:=dsListNsiPriceF_PRICE_ID.Value
      else
        result:=0;
      free;
    end;
  end;


  procedure ShowDocInJournal;
  begin
    with TFrmListInputDocs.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;

  procedure ShowDocInJournalHz;
  begin
    with TFrmListInputDocsHz.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;

  procedure ShowDocOutJournalHz;
  begin
    with TFrmDocOutListHz.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;


  function  GetDocOut ( v_partner : integer=0; v_pay_type : integer=0) : integer;
  begin
    with TFrmDocOutList.Create(Application.MainForm) do
    begin
      if v_partner > 0 then
      begin
        dsDocList.Conditions.ByName('ByPartner').Enabled:=true;
        dsDocList.Conditions.ByName('ByPaySum').Enabled:=true;
        dsDocList.ApplyConditions();
        dsDocList.ParamByName('f_partner').Value:=v_partner;
      end;
      if v_pay_type > 0 then
      begin
        dsDocList.Conditions.ByName('ByPayType').Enabled:=true;
        dsDocList.ApplyConditions();
        dsDocList.ParamByName('f_pay_type').Value:=v_pay_type;
      end;
      if ShowAsDialog then
      begin
        result:=dsDocListF_doc_out.Value;
      end
      else
        result:=-1;
      free;
    end;
  end;


  procedure ShowNsiPartner;
  begin
    with TFrmNsiPartner.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;

  function GetNsiPartner : integer;
  begin
    with TFrmNsiPartner.Create(Application.MainForm) do
    begin
      if ShowAsDialog then
        result:=dsNsiPartnerF_ID.Value
      else
        result:=0;
      free;
    end;
  end;
  procedure ShowNsiGoods;
  begin
    with TFrmNsiGoods.create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;
  function GetNsiGood (dat: tdate;scan : string = '';sclad : integer = 0;price: integer = 0): TDigits;//integer;
  var
    i   : integer;
    ARowIndex: Integer;
    ARowInfo: TcxRowInfo;
    p_price: integer;
  begin
  p_price := price;
{  if VarIsNull(price) then
    p_price:=0
  else
    p_price:=VarAsType(price,varInteger);}
  dm.dsPublicDS.Active:=false;
  dm.dsPublicDS.SQLs.SelectSQL.Clear;
  dm.dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,1) as param_value FROM SP_GET_SYS_PARAM(''GET_GOOD_FROM_REG'')');
  dm.dsPublicDS.Active:=true;
  if (dm.dsPublicDS.FieldByName('param_value').AsInteger=1) and (sclad<>0) then
  begin
    with TFrmZapas.Create(Application.MainForm) do
    begin
//      cxGrid2DBTableView1.DataController.DataModeController.GridMode:=true;
      dsListZapas.Active:=false;
      if sclad<>0 then
      begin
        dsListZapas.ParamByName('f_sklad_in').Value:=sclad;
        cxGridSklad.visible:=false;
      end;
      dsListZapas.ParamByName('f_date_in').Value:=dat;
      if p_price<>0 then
      begin
        dsListZapas.ParamByName('f_price').Value:=p_price;
        LkpPrice.Visible:=false;
      end;
      if scan<>'' then
        dsListZapas.ParamByName('f_scan').Value:=scan;

      dsListZapas.Active:=true;
      if dsListZapas.RecordCount=1 then
      begin
        setLength(result,1);
        result[0]:=dsListZapasF_GOOD.AsInteger;
      end
      else
      begin
        if showasDialog then
        begin
          if cxGrid2DBTableView1.Controller.SelectedRowCount > 1 then
          begin
            setLength(result,cxGrid2DBTableView1.Controller.SelectedRowCount);
            for I := 0 to cxGrid2DBTableView1.Controller.SelectedRowCount - 1 do
            begin
              ARowIndex:=cxGrid2DBTableView1.DataController.GetSelectedRowIndex(i);
              ARowInfo:=cxGrid2DBTableView1.DataController.GetRowInfo(ARowIndex);
              result[i]:=cxGrid2DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid2DBTableView1F_GOOD.Index);
            end;
          end
          else
          begin
            setLength(result,1);
            result[0]:=dsListZapas.FieldByName('f_good').Value;
          end;
        end;
      end;
      free;
    end;
  end
  else
    with TNsiGood.create do begin
      result:=GetId(scan);
      free;
    end;
{    begin
      with TFrmNsiGoods.create(Application.MainForm) do
      begin
//        cxGrid1DBTableView1.DataController.DataModeController.GridMode:=true;
        if scan<>'' then
        begin
          dsGetGoodByScan.Active:=false;
          dsGetGoodByScan.ParamByName('scan').Value:=scan;
          dsGetGoodByScan.Active:=true;
          if not dsGetGoodByScan.IsEmpty then
            case dsGetGoodByScan.RecordCount of
            1:
              begin
                setLength(result,1);
                result[0]:=dsGetGoodByScanf_id.AsInteger;
                free;
                exit;
              end;
            else
              begin
                srNsiGoods.DataSet:=dsGetGoodByScan;
              end;
            end
          else
            result:=0;
        end;
        if ShowAsDialog then
        begin
//        result:=srNsiGoods.DataSet.FieldByName('f_id').Value;
          if cxGrid1DBTableView1.Controller.SelectedRowCount > 1 then
          begin
            setLength(result,cxGrid1DBTableView1.Controller.SelectedRowCount);
            for I := 0 to cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
            begin
              ARowIndex:=cxGrid1DBTableView1.DataController.GetSelectedRowIndex(i);
              ARowInfo:=cxGrid1DBTableView1.DataController.GetRowInfo(ARowIndex);

              result[i]:=cxGrid1DBTableView1.DataController.GetRowValue(ARowInfo,cxGrid1DBTableView1F_ID.Index);

            end;
          end
          else
          begin
            setLength(result,1);
            result[0]:=srNsiGoods.DataSet.FieldByName('f_id').Value;
          end;
        end;
//      else
//        result[1]:=0;
        free;
      end;
    end;}
  end;
  procedure ShowDocOutJournal;
  begin
    with TFrmDocOutList.Create(Application.MainForm) do
    begin
      ShowAsChild;
    end;
  end;
end.
