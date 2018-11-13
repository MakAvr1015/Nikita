unit UDM;

interface

uses
  SysUtils, Classes, ActnList, ImgList, Controls, Forms, DSContainer,
  FIBDatabase, pFIBDatabase, DB, ADODB, Dialogs, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBQuery, pFIBStoredProc, msXmlDom, XmlDoc, XmlDom, XmlIntf,
  pFIBScripter, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, IdFTPList, cxEdit, cxEditRepositoryItems,
  SIBEABase, SIBFIBEA, IB_Services, IdIntercept, IdInterceptThrottler,UThrRefreshNsi,
  Provider, pFIBClientDataSet, DBClient, ExtCtrls, cxStyles, cxClasses,
  cxGridTableView, StdActns, OverbyteIcsWndControl, OverbyteIcsFtpCli,
  cxGraphics, cxGridCardView, cxVGrid, cxDropDownEdit, pFIBErrorHandler, fib;

type
  TDM = class(TDataModule)
    ActionList: TActionList;
    ActNsiTovar: TAction;
    ActNsiPartner: TAction;
    ActNsiSklad: TAction;
    ActNsiStatus: TAction;
    ImageList: TImageList;
    ActDocInp: TAction;
    ActDocOut: TAction;
    ActDocMoneyInp: TAction;
    ActDocMoneyOut: TAction;
    pFIBDatabase: TpFIBDatabase;
    pFIBTransaction: TpFIBTransaction;
    ActNsiPrice: TAction;
    dsGood_ins: TpFIBDataSet;
    dsGetGoodByScan: TpFIBDataSet;
    ActNsiBank: TAction;
    dsGetGoodByScanF_NAME: TFIBStringField;
    dsGetGoodByScanF_GOODS_GRP: TFIBBCDField;
    dsGetGoodByScanF_ED_IZM: TFIBBCDField;
    dsGetGoodByScanF_ED_IZM_NAME: TFIBStringField;
    dsGetGoodByScanF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsGetGoodByScanF_SCANCODE: TFIBStringField;
    ActZapas: TAction;
    dsGetGoodByScanF_ARTICLE: TFIBStringField;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    ActDocPrice: TAction;
    ActDocMove: TAction;
    srGetGoodByScan: TDataSource;
    ActInventory: TAction;
    dsStateSource: TpFIBDataSet;
    dsStateSourceF_ID: TFIBBCDField;
    dsStateSourceF_NAME: TFIBStringField;
    dsStateSourceF_PARENT: TFIBBCDField;
    srStateSource: TDataSource;
    spImportPartner: TpFIBDataSet;
    spImportPartnerF_ID: TFIBBCDField;
    dsImportScancode: TpFIBDataSet;
    dsImportScancodeF_RESULT: TFIBSmallIntField;
    dsImportNsiGood: TpFIBDataSet;
    ActDocInpBack: TAction;
    ActDocOutBack: TAction;
    DsPublicDs: TpFIBDataSet;
    pStChangeState: TpFIBStoredProc;
    ActDocMoveSpisan: TAction;
    IdFTP: TIdFTP;
    spImportPictures: TpFIBStoredProc;
    ActDocMovePrihod: TAction;
    ActDocTemplate: TAction;
    ActNsiDiscount: TAction;
    ActReportKKM: TAction;
    dsGetPhoto: TpFIBDataSet;
    dsGetPhotoF_MEMO: TFIBBlobField;
    srGetPhoto: TDataSource;
    spUpdateGood: TpFIBStoredProc;
    ActNsiTovarType: TAction;
    cxEditRepository: TcxEditRepository;
    ActDocInpHz: TAction;
    ActDocOutHZ: TAction;
    ActNsiDocProperty: TAction;
    SIBfibEventAlerter: TSIBfibEventAlerter;
    spSetContext: TpFIBStoredProc;
    dsGetSysParam: TpFIBDataSet;
    pFIBSecurityService1: TpFIBSecurityService;
    dsNsiGoods: TpFIBDataSet;
    dsNsiGoodsF_NAME: TFIBStringField;
    dsNsiGoodsF_GOODS_GRP: TFIBBCDField;
    dsNsiGoodsF_ARTICLE: TFIBStringField;
    dsNsiGoodsF_ED_IZM_SHORT_NAME: TFIBStringField;
    dsNsiGoodsF_DOP_INFO: TFIBStringField;
    dsNsiGoodsF_ED_IZM: TFIBBCDField;
    dsNsiGoodsF_ED_IZM_NAME: TFIBStringField;
    dsNsiGoodsF_PICTURE: TStringField;
    dsNsiGoodsF_COLOR: TFIBStringField;
    spPostEventGood: TpFIBStoredProc;
    TimerRefreshNsiGood: TTimer;
    ActNsiGoodsInfo: TAction;
    dsSklad: TpFIBDataSet;
    dsSkladF_ID: TFIBBCDField;
    dsSkladF_NAME: TFIBStringField;
    dsNsiGoodsF_GOOD: TFIBBCDField;
    dsGetGoodByScanF_GOOD: TFIBBCDField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    WindowCascade1: TWindowCascade;
    FtpClient: TFtpClient;
    ImageListLage: TImageList;
    cxImageList1: TcxImageList;
    dsNsiGoodsF_MMEDIA: TFIBBlobField;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    dsNsiGoodsF_CRE_DATE: TFIBDateField;
    cxStyle36: TcxStyle;
    cxVerticalGridStyleSheetDevExpress: TcxVerticalGridStyleSheet;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    dsGoodProps: TpFIBDataSet;
    dsGoodsPropsValues: TpFIBDataSet;
    dsGoodsPropsValuesF_ID: TFIBBCDField;
    dsGoodsPropsValuesF_NSI_GOODS_INFO: TFIBBCDField;
    dsGoodsPropsValuesF_ORDER: TFIBBCDField;
    dsGoodsPropsValuesF_VALUE: TFIBStringField;
    dsGoodPropsF_ID: TFIBBCDField;
    dsGoodPropsF_NAME: TFIBStringField;
    dsGoodPropsF_MULTI: TFIBSmallIntField;
    cxEditRepositoryComboBoxItem1: TcxEditRepositoryComboBoxItem;
    dsNsiGoodsF_GOOD_TYPE: TFIBStringField;
    dsNsiGoodsDopInfo: TpFIBDataSet;
    dsImportNsiGoodsDopInfo: TpFIBDataSet;
    dsImportNsiGoodsDopInfoF_ID: TFIBBCDField;
    dsImportNsiGoodsDopInfoF_GOOD: TFIBBCDField;
    dsImportNsiGoodsDopInfoF_GOOD_INFO: TFIBBCDField;
    dsImportNsiGoodsDopInfoF_GOOD_INFO_NAME: TFIBStringField;
    dsImportNsiGoodsDopInfoF_GOOD_INFO_VAL: TFIBStringField;
    spSetGoodCh_Date: TpFIBStoredProc;
    pFibErrorHandler1: TpFibErrorHandler;
    dsNsiDocProp: TpFIBDataSet;
    procedure DummyAct(Sender: TObject);
    procedure ActDocInpExecute(Sender: TObject);
    procedure ActNsiPartnerExecute(Sender: TObject);
    procedure ActNsiTovarExecute(Sender: TObject);
    procedure ActDocOutExecute(Sender: TObject);
    procedure ActNsiPriceExecute(Sender: TObject);
    procedure ActNsiSkladExecute(Sender: TObject);
    procedure ActNsiBankExecute(Sender: TObject);
    procedure ActZapasExecute(Sender: TObject);
    procedure ActDocPriceExecute(Sender: TObject);
    procedure ActDocMoneyInpExecute(Sender: TObject);
    procedure ActDocMoveExecute(Sender: TObject);
    procedure ActInventoryExecute(Sender: TObject);
    procedure pFIBDatabaseAfterConnect(Sender: TObject);
    procedure ActDocInpBackExecute(Sender: TObject);
    procedure ActDocOutBackExecute(Sender: TObject);
    procedure ActDocMoneyOutExecute(Sender: TObject);
    procedure ActDocMoveSpisanExecute(Sender: TObject);
    procedure ActDocMovePrihodExecute(Sender: TObject);
    procedure ActDocTemplateExecute(Sender: TObject);
    procedure ActNsiDiscountExecute(Sender: TObject);
    procedure ActReportKKMExecute(Sender: TObject);
    procedure ActNsiTovarTypeExecute(Sender: TObject);
    procedure ActDocInpHzExecute(Sender: TObject);
    procedure ActDocOutHZExecute(Sender: TObject);
    procedure ActNsiDocPropertyExecute(Sender: TObject);
    procedure SIBfibEventAlerterEventAlert(Sender: TObject; EventName: string;
      EventCount: Integer);
    procedure TimerRefreshNsiGoodTimer(Sender: TObject);
    procedure ActNsiGoodsInfoExecute(Sender: TObject);
    procedure pFIBDatabaseBeforeConnect(Database: TFIBDatabase;
      LoginParams: TStrings; var DoConnect: Boolean);
    procedure pFIBDatabaseBeforeDisconnect(Sender: TObject);
    procedure RefreshNsiGoodGUI;
    procedure dsGoodPropsAfterOpen(DataSet: TDataSet);
    procedure pFibErrorHandler1FIBErrorEvent(Sender: TObject;
      ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    refreshThread : TRefreshNsi;
    refreshNsiGood : boolean;
    procedure UploadPhoto( Article: string; Path: string; ChDate: TDateTime);
    function ImportGood(GoodNode : IXmlNode;ext_base :integer): integer;
    function ImportPartner(PartnerNode : IXmlNode;ext_base :integer): integer;
    function InsExtGood(article : string; name: string;  dop_info: string='';good_type: string=''): integer;
    function GetSYSValue(sysParam:string):string;
  end;
  procedure RefreshDs( DS : TdataSet; FldName: string ='No'; key : integer = 0;fetch : boolean=false);
  procedure PostAllDS(P_comp  : TComponent; Commit : boolean;p_close : boolean=false);
  procedure ExportDs(DS : pointer);
  procedure LogMsg(msg : string);
  procedure ClearLog;
var
  DM: TDM;

implementation
  uses
    uFrmPrototype,UPublic,uFrmProgress;

{$R *.dfm}
procedure ClearLog;
var
   logFile  : TextFile;
   filehandle: Integer;

begin
  if FileExists(Prg_path+'\nikita.log') then
  begin
    try
      DeleteFile(Prg_path+'\nikita.log');
    finally

    end;
  end;
end;
procedure LogMsg(msg : string);
var
   logFile  : TextFile;
   filehandle: Integer;

begin
  if Not FileExists(Prg_path+'\nikita.log') then
  begin
    fileHandle := FileCreate(Prg_path+'\nikita.log');
    fileClose(fileHandle);
  end;
  try
    AssignFile(logFile,Prg_path+'\nikita.log');
    Append( logFile );
    Writeln( logFile, TimeToStr(time)+': '+msg);
    Flush( logFile );
    CloseFile( logFile );
  finally

  end;
end;
procedure ExportDs(DS : pointer);
var
  dlgRes  : TModalResult;
  NodeDoc : TXmlDocument;
  RecNode : IXMLNode;
  i       : integer;
begin
  NodeDoc:=TXmlDocument.Create(application);
  NodeDoc.Active:=true;
//  RecNode:=NodeDoc.AddChild('Документ');
  if (TComponent(DS^) is TdataSet)  then
  begin
    TDataSet(DS^).DisableControls;
    TDataSet(DS^).Active:=true;
    TDataSet(DS^).First;
    while not TDataSet(DS^).Eof do
    begin
      RecNode:=NodeDoc.AddChild(TDataSet(DS^).Name);
      for I := 0 to TDataSet(DS^).FieldCount - 1 do
      begin
        RecNode.Attributes[TDataSet(DS^).Fields[i].FieldName]:=TDataSet(DS^).Fields[i].AsString;
      end;
      TDataSet(DS^).Next;
    end;
  end;
  NodeDoc.SaveToFile('c:\file.xml');
  NodeDoc.Free;
end;
procedure PostAllDS(P_comp  : TComponent; Commit : boolean; p_close : boolean=false);
var
  i       : integer;
  dlgRes  : TModalResult;
begin
  dlgRes:=mrNone;
  with P_Comp do
  begin
    for I := 0 to  ComponentCount-1 do
    begin
      if Components[i] is TpFIBDataSet then
      begin
        if TpFIBDataSet(Components[i]).Active then
        begin
          if TpFIBDataSet(Components[i]).State in [dsEdit,dsInsert] then
          begin
            try
              TpFIBDataSet(Components[i]).Post;
            except
              on E: Exception do
              begin
                TpFIBDataSet(Components[i]).Cancel;
                MessageDlg(E.Message,mtError,[],E.HelpContext);
              end;
            end;
          end;
          if Commit then
            try
              TpFIBDataSet(Components[i]).Transaction.CommitRetaining;
            except
              on E: Exception do
              begin
                TpFIBDataSet(Components[i]).Transaction.RollbackRetaining;
                MessageDlg(E.Message,mtError,[],E.HelpContext);
              end;
            end;
          if p_close then
            TpFIBDataSet(Components[i]).Active:=false;
        end;
      end;
    end;
  end;
end;
procedure RefreshDs( DS : TdataSet;FldName: string ='No'; key : integer = 0; fetch : boolean=false);
var
  id,i  : integer;
  pnt : pointer;
  fieldName : string;
begin
  id:=0;
  pnt:=DS.GetBookmark;
  DS.DisableControls;
  if (ds.Active) then
  begin
    if FldName='No' then
    begin
      for i:=0 to DS.FieldCount-1 do
      begin
        if ((DS.Fields[i].Tag=1) and not DS.Fields[i].IsNull) then
        begin
          fieldName:=DS.Fields[i].FieldName;
          break;
        end;
      end;
    end
    else
      fieldName:=FldName;
    if (Ds.Fields.FindField(fieldName)<>nil) then
      if (not Ds.Fields.FindField(fieldName).IsNull) then
        if not DS.FieldByName(fieldName).Calculated then
          id:=DS.FieldByName(fieldName).Value;
  end;
  DS.Active:=false;
  DS.Active:=true;
  if fetch then
    ds.Last;
  DS.GotoBookmark(pnt);
  if key>0 then
    id:=key;
  if (id>0) and (Ds.Fields.FindField(fieldName)<>nil) then
  begin
    Ds.Locate(fieldName,id,[]);
  end;
  DS.EnableControls;
end;

procedure TDM.ActDocInpBackExecute(Sender: TObject);
begin
  ShowInDocBackJournal;
end;

procedure TDM.ActDocInpExecute(Sender: TObject);
begin
  ShowDocInJournal;
end;

procedure TDM.ActDocInpHzExecute(Sender: TObject);
begin
  ShowDocInJournalHz;
end;

procedure TDM.ActDocMoneyInpExecute(Sender: TObject);
begin
  ShowMoneyInJournal;
end;

procedure TDM.ActDocMoneyOutExecute(Sender: TObject);
begin
  ShowMoneyOutJournal;
end;

procedure TDM.ActDocMoveExecute(Sender: TObject);
begin
  ShowMoveDocJournal;
end;

procedure TDM.ActDocMovePrihodExecute(Sender: TObject);
begin
  ShowMoveDocPrihodJournal;
end;

procedure TDM.ActDocMoveSpisanExecute(Sender: TObject);
begin
  ShowMoveDocSpisanJournal;
end;

procedure TDM.ActDocOutBackExecute(Sender: TObject);
begin
  ShowOutDocBackJournal;
end;

procedure TDM.ActDocOutExecute(Sender: TObject);
begin
  ShowDocOutJournal ;
end;

procedure TDM.ActDocOutHZExecute(Sender: TObject);
begin
  ShowDocOutJournalHz;
end;

procedure TDM.ActDocPriceExecute(Sender: TObject);
begin
  ShowDocPriceJournal;
end;

procedure TDM.ActDocTemplateExecute(Sender: TObject);
begin
  ShowTemplateDocJournal;
end;

procedure TDM.ActInventoryExecute(Sender: TObject);
begin
  ShowInventoryJournal;
end;

procedure TDM.ActNsiTovarTypeExecute(Sender: TObject);
begin
  ShowNsiGoodType;
end;

procedure TDM.ActNsiBankExecute(Sender: TObject);
begin
  ShowNsiBank;
end;

procedure TDM.ActNsiDiscountExecute(Sender: TObject);
begin
  ShowNsiDiscountCard;
end;

procedure TDM.ActNsiDocPropertyExecute(Sender: TObject);
begin
  ShowNsiDocProperty;
end;

procedure TDM.ActNsiGoodsInfoExecute(Sender: TObject);
begin
  ShowNsiGoodsInfo;
end;

procedure TDM.ActNsiPartnerExecute(Sender: TObject);
begin
  ShowNsiPartner;
end;

procedure TDM.ActNsiPriceExecute(Sender: TObject);
begin
  ShowNsiPrice;
end;

procedure TDM.ActNsiSkladExecute(Sender: TObject);
begin
  ShowNsiSklad;
end;

procedure TDM.ActNsiTovarExecute(Sender: TObject);
begin
  ShowNsiGoods;
end;

procedure TDM.ActReportKKMExecute(Sender: TObject);
begin
  ShowKKMReport;
end;

procedure TDM.ActZapasExecute(Sender: TObject);
begin
  ShowZapas;
end;

procedure TDM.dsGoodPropsAfterOpen(DataSet: TDataSet);
var
  i: integer;
  editItemClass :TcxEditRepositoryItemClass;
  editItem :TcxEditRepositoryItem;
begin
  dataset.First;
  cxEditRepository.Clear;
  while not dataset.eof do
  begin
//    cxEditRepository.Items[dataset.RecNo]:=TcxEditRepositorySpinItem.Create(self);
//    editItem:=TcxEditRepositoryItemClass.
    dsGoodsPropsValues.Active:=false;
    dsGoodsPropsValues.ParamByName('f_nsi_goods_info').Value:=dataSet.FieldByName('F_ID').AsInteger;
    dsGoodsPropsValues.Active:=true;
    dsGoodsPropsValues.Last;
    if dsGoodsPropsValues.RecordCount>0 then
    begin
      editItemClass:=TcxEditRepositoryComboBoxItem;
      editItem:=cxEditRepository.CreateItem(TcxEditRepositoryComboBoxItem);
//      TcxEditRepositoryComboBoxItem(editItem).Properties.DropDownListStyle:= lsFixedList
      dsGoodsPropsValues.First;

      while not dsGoodsPropsValues.Eof do
      begin
        TcxEditRepositoryComboBoxItem(editItem).Properties.Items.Add(dsGoodsPropsValuesF_VALUE.Value);
        dsGoodsPropsValues.Next;
      end;
      TcxEditRepositoryComboBoxItem(editItem).Properties.DropDownListStyle:=lsFixedList;
      editItem.Name:='Editor'+dataSet.FieldByName('F_ID').AsString;
    end;
{    editItem:=cxEditRepository.CreateItem(editItemClass);
    editItemClass(editItem).
    with cxEditRepository.CreateItem(editItemClass) do
    begin
      Name:='Editor'+dataSet.FieldByName('F_ID').AsString;
    end;}
    dataset.Next;
  end;

end;

procedure TDM.DummyAct(Sender: TObject);
begin
  with TFrmPrototype.Create(Application.MainForm) do
  begin
    showAsChild;
  end;
end;

function TDM.GetSYSValue(sysParam: string): string;
begin
  dsGetSysParam.Active:=false;
  dsGetSysParam.ParamByName('PARAM_NAME').Value:=sysParam;
  dsGetSysParam.active:=true;
  result:=dsGetSysParam.FieldByName('PARAM_VALUE').AsString;
end;

function TDM.ImportGood(GoodNode: IXmlNode;ext_base :integer): integer;
var
  f_partner,k : integer;
  Scancodes   : IXmlNode;
  str         : string;
  ftp_path    : string;
  ms          : TMemoryStream;
  AFList      : TIdFTPListItems;
begin

  dsPublicDS.Active:=false;
  dsPublicDS.SQLs.SelectSQL.Clear;
  dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,1) as param_value FROM SP_GET_SYS_PARAM(''download_photo'')');
  dsPublicDS.Active:=true;
  if (dsPublicDS.FieldByName('param_value').AsInteger=1) then
  begin
    LogMsg('Грузим фотку');
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_host'')');
    dsPublicDS.Active:=true;
    ftpClient.HostName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''21'') as param_value FROM SP_GET_SYS_PARAM(''ftp_port'')');
    dsPublicDS.Active:=true;
    ftpClient.Port:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''/'') as param_value FROM SP_GET_SYS_PARAM(''ftp_path'')');
    dsPublicDS.Active:=true;
    ftp_path:=dsPublicDS.FieldByName('param_value').AsString;
//    ftpClient.HostDirName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_login'')');
    dsPublicDS.Active:=true;
    ftpClient.UserName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_password'')');
    dsPublicDS.Active:=true;
    ftpClient.PassWord:=dsPublicDS.FieldByName('param_value').AsString;
    try
      if not ftpClient.Connected then
      begin
        ftpClient.Passive:=true;
        ftpClient.Connect;
        ftpClient.TypeBinary;
      end;
//      ftpClient.HostDirName:='/';
      CreateDir(Prg_PAth+'\photo');

    except
    end;
  end;

  LogMsg('Начинаем загрузку номенклатуры');
  f_partner:=ImportPartner(GoodNode.ChildNodes['T_NSI_PARTNER'], ext_base);
  dsImportNsiGood.Active:=false;
  dsImportNsiGood.Params.ClearValues;
  dsImportNsiGood.ParamByName('f_name').Value:=GoodNode.ChildNodes['f_name'].Text;
  dsImportNsiGood.ParamByName('F_UPDATE').Value:=0;

  if GoodNode.ChildNodes['f_barter'].Text<>'' then
    dsImportNsiGood.ParamByName('f_barter').Value:=GoodNode.ChildNodes['f_barter'].Text;
  LogMsg('Наименование: '+GoodNode.ChildNodes['f_name'].Text);
//  dsImportNsiGood.ParamByName('f_id').Value:=GoodNode.ChildNodes['f_id'].Text;
  dsImportNsiGood.ParamByName('f_article').Value:=GoodNode.ChildNodes['f_article'].Text;
  LogMsg('Артикул: '+GoodNode.ChildNodes['f_article'].Text);
  str:=StringReplace(GoodNode.ChildNodes['f_article'].Text,' ','_',[rfReplaceAll])+'.jpg';
  dsImportNsiGood.ParamByName('f_dop_info').Value:=GoodNode.ChildNodes['f_dop_info'].Text;
  LogMsg('Описание: '+GoodNode.ChildNodes['f_dop_info'].Text);

  dsImportNsiGood.ParamByName('f_partner').Value:=f_partner;
  dsImportNsiGood.ParamByName('f_ext_base').Value:=ext_base;
  dsImportNsiGood.Active:=true;
  LogMsg('Зафиксировали в справочнике');
  dsImportScancode.ParamByName('f_good').Value:=dsImportNsiGood.FieldByName('f_good_id').Value;
  LogMsg('Начинаем загружать штрихкоды');
  Scancodes:=GoodNode.ChildNodes['T_NSI_SCANCODE'];
  for k := 0 to Scancodes.ChildNodes.Count - 1 do
  begin
      dsImportScancode.Active:=false;
      if Scancodes.ChildNodes[k].IsTextElement then
        dsImportScancode.ParamByName('f_Scancode').Value:=Scancodes.ChildNodes[k].Text
      else
        begin
          dsImportScancode.ParamByName('f_Scancode').Value:=Scancodes.ChildNodes[k].DOMNode.firstChild.nodeValue;
        end;
      LogMsg('Штрихкод: '+dsImportScancode.ParamByName('f_Scancode').Value);
      dsImportScancode.Active:=true;
      LogMsg('Штрихкод загружен');
  end;
{  dsPublicDS.Active:=false;
  dsPublicDS.SQLs.SelectSQL.Clear;
  dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,1) as param_value FROM SP_GET_SYS_PARAM(''download_photo'')');
  dsPublicDS.Active:=true;
  if (dsPublicDS.FieldByName('param_value').AsInteger=1) then
  begin
    LogMsg('Грузим фотку');
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_host'')');
    dsPublicDS.Active:=true;
    ftpClient.HostName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''21'') as param_value FROM SP_GET_SYS_PARAM(''ftp_port'')');
    dsPublicDS.Active:=true;
    ftpClient.Port:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''/'') as param_value FROM SP_GET_SYS_PARAM(''ftp_path'')');
    dsPublicDS.Active:=true;
    str:=dsPublicDS.FieldByName('param_value').AsString;
//    ftpClient.HostDirName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_login'')');
    dsPublicDS.Active:=true;
    ftpClient.UserName:=dsPublicDS.FieldByName('param_value').AsString;
    dsPublicDS.Active:=false;
    dsPublicDS.SQLs.SelectSQL.Clear;
    dsPublicDS.SQLs.SelectSQL.Add('SELECT coalesce(param_value,''etalon-nsk.ru'') as param_value FROM SP_GET_SYS_PARAM(''ftp_password'')');
    dsPublicDS.Active:=true;
    ftpClient.PassWord:=dsPublicDS.FieldByName('param_value').AsString;
}
  if ftpClient.Connected then
  begin
    try

      ftpClient.HostFileName:=ftp_path+'/'+str;
      ftpClient.LocalFileName:=Prg_PAth+'\photo\'+str;

      ftpClient.size;
      if ftpClient.SizeResult>0 then

      if ftpClient.Get then
      begin

{      if not IdFTP.Connected then
       IdFTP.Connect;
      AssErt(IdFTP.Connected);
      IdFTP.ChangeDir('/');// Установить папку на сервере}

{      AFList:=TIdFTPListItems.Create;

      IdFTP.ExtListItem(AFList,str);
      if AFList.Count>0 then
      begin
        IdFTP.Get(str,Prg_PAth+'\photo\'+str,true);//Файл Откуда-Куда}
        spImportPictures.ParamByName('F_article').Value:=GoodNode.ChildNodes['f_article'].Text;
        spImportPictures.ParamByName('F_mmedia').LoadFromFile(Prg_PAth+'\photo\'+str);
        spImportPictures.ExecProc;
      end
      else
      begin
        LogMsg('Не удалось загрузить с фтп');
        LogMsg(ftpClient.ErrorMessage);
      end;
    except
    end;
{    if IdFTP.Connected then
     IdFTP.Disconnect;}
//    AFList.Free;
  end;
  dsPublicDS.Active:=false;
  dsPublicDS.SQLs.SelectSQL.Clear;
  result:=dsImportNsiGood.FieldByName('f_good_id').AsInteger;
  LogMsg('Номенклатура загружена');
end;

function TDM.ImportPartner(PartnerNode: IXmlNode;ext_base :integer): integer;
begin
  spImportPartner.Active:=false;
  spImportPartner.ParamByName('f_name').Value:=PartnerNode.ChildNodes['f_name'].Text;
  spImportPartner.ParamByName('f_inn').Value:=PartnerNode.ChildNodes['f_inn'].Text;
  spImportPartner.ParamByName('f_kpp').Value:=PartnerNode.ChildNodes['f_kpp'].Text;
  spImportPartner.ParamByName('f_ext_base').Value:=ext_base;
  spImportPartner.ParamByName('f_ext_id').Value:=PartnerNode.ChildNodes['f_id'].Text;
  spImportPartner.Active:=true;
  result:=spImportPartner.FieldByName('f_id').AsInteger;
end;

function TDM.InsExtGood(article, name: string;dop_info: string=''; good_type: string=''): integer;
begin
  dsImportNsiGood.Active:=false;
  dsImportNsiGood.Params.ClearValues;
  dsImportNsiGood.ParamByName('f_update').Value:=1;
  if name<>'' then
    dsImportNsiGood.ParamByName('f_name').Value:=name;
  dsImportNsiGood.ParamByName('f_article').Value:=article;
  dsImportNsiGood.ParamByName('f_dop_info').Value:=dop_info;
  dsImportNsiGood.ParamByName('f_good_type').Value:=good_type;
  dsImportNsiGood.Active:=true;
  dsImportNsiGood.Transaction.CommitRetaining;
  result:=dsImportNsiGood.FieldByName('f_good_id').AsInteger;
end;

procedure TDM.pFIBDatabaseAfterConnect(Sender: TObject);
var
  frm_progress : TFrmProgress;
begin
  frm_progress := TFrmProgress.Create(Application.MainForm);
  frm_progress.Show;
  try
    dsStateSource.Active:=true;
//    dm.dsNsiGoods.Active:=true;
    frm_progress.cxProgressBar.Properties.Max:=dm.dsNsiGoods.RecordCount;
    frm_progress.cxLabel.Caption:='Загружаем справочник товаров';
{    while not dm.dsNsiGoods.Eof do
    begin
      frm_progress.cxProgressBar.Position:=dm.dsNsiGoods.RecNo;
      application.ProcessMessages;
      dm.dsNsiGoods.Next;
    end;}

//    refreshThread:=TRefreshNsi.Create(true);
//    refreshThread.Resume;

    dsSklad.Active:=true;
    dsSklad.FetchAll;
  except
  on E: Exception do
     begin
        MessageDlg(E.Message,mtError,[],E.HelpContext);
     end;
  end;
  frm_progress.Close;
  frm_progress.Free;
  TimerRefreshNsiGood.Enabled:=true;
  dsGoodProps.Active:=true;
end;

procedure TDM.pFIBDatabaseBeforeConnect(Database: TFIBDatabase;
  LoginParams: TStrings; var DoConnect: Boolean);
begin
  Database.DbName:=DataBasePath;
end;

procedure TDM.pFIBDatabaseBeforeDisconnect(Sender: TObject);
begin
  try
    if refreshThread<>nil then
      refreshThread.Terminate;
  finally

  end;
end;

procedure TDM.pFibErrorHandler1FIBErrorEvent(Sender: TObject;
  ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);

begin
{  ShowMessage(ErrorValue.SQLMessage);
  DoRaise:=true;}
end;

procedure TDM.RefreshNsiGoodGUI;
var
  frm_progress : TFrmProgress;
begin
  if refreshThread<>nil then
      refreshThread.Terminate;
  dsNsiGoods.DisableControls;
  dsNsiGoods.Active:=false;
  TimerRefreshNsiGood.Enabled:=false;
  frm_progress := TFrmProgress.Create(Application.MainForm);
  frm_progress.Show;
  try
    dm.dsNsiGoods.Active:=true;
    frm_progress.cxProgressBar.Properties.Max:=dm.dsNsiGoods.RecordCount;
    frm_progress.cxLabel.Caption:='Загружаем справочник товаров';
    while not dm.dsNsiGoods.Eof do
    begin
      frm_progress.cxProgressBar.Position:=dm.dsNsiGoods.RecNo;
      application.ProcessMessages;
      dm.dsNsiGoods.Next;
    end;

  except
  on E: Exception do
     begin
        MessageDlg(E.Message,mtError,[],E.HelpContext);
     end;
  end;
  frm_progress.Close;
  frm_progress.Free;
  TimerRefreshNsiGood.Enabled:=true;
  dsNsiGoods.EnableControls;
end;

procedure TDM.SIBfibEventAlerterEventAlert(Sender: TObject; EventName: string;
  EventCount: Integer);
var
  v_context_val : string;
begin
  if eventName ='need_password'then
  begin
    v_context_val:=GetPassword;
  end;
  if eventName ='refresh_goods'then
  begin
//    if refreshThread<>nil then
    refreshNsiGood:=true;

  end;
end;

procedure TDM.TimerRefreshNsiGoodTimer(Sender: TObject);
begin
//    refreshThread.WaitFor;
    if refreshNsiGood then
    begin
      if refreshThread <> nil then
      begin
        refreshThread.Terminate;
        refreshThread.WaitFor;
        refreshThread.Free;
      end;
//    refreshThread.Free;
      refreshThread:=TRefreshNsi.Create(false);
    end;
end;

procedure TDM.UploadPhoto(Article, Path: string; ChDate : TDateTime);
begin
  dsGetPhoto.Active:=false;
  dsGetPhoto.ParamByName('f_good').Value:=Article;
  dsGetPhoto.ParamByName('f_ch_date').Value:=ChDAte;
  dsGetPhoto.Active:=true;
  if not dsGetPhoto.Eof then
    TFibBlobField(dm.dsGetPhoto.FieldByName('F_MEMO')).SaveToFile(Path+'\'+StringReplace(Article,' ','_',[rfReplaceAll])+'.jpg');
  dsGetPhoto.ParamByName('f_ch_date').Clear;
  dsGetPhoto.Active:=false;
end;

end.
