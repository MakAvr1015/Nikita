unit UDocClass;

interface

uses
  UInterfaces,Dialogs,Forms,SysUtils, DB;

type

  TInventoryDoc = class(TInterfacedObject,IDoc)
    ID_Doc  : integer;
  public
    constructor Create (var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
    destructor  Free;
  end;



  TInputDoc = class(TInterfacedObject,IDoc)
    ID_Doc    : integer;
    doc_type  : integer;
  public
    constructor Create (var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
    destructor  Free;
  end;


  TOutDoc = class(TInterfacedObject,IDoc)
    ID_Doc  : integer;
    doc_type : integer;
    mainDs   : TDataSet;
  public
    constructor Create (var doc_id: integer; dsJournal: TDataSet = nil);
    procedure OpenEditFrm;
    procedure OpenViewFrm;
    procedure SaveDoc;
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
    destructor  Free;
  end;

  TInputPay = class(TInterfacedObject,IDoc)
    ID_Doc    : integer;
    doc_type  : integer;
  public
    constructor Create (var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
    destructor  Free;
  end;

  TMoveDoc = class(TInterfacedObject,IDoc)
    ID_Doc  : integer;
    doc_type  : integer;
  public
    constructor Create (var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
    destructor  Free;
  end;

  TOutputPay = class(TInterfacedObject,IDoc)
    ID_Doc    : integer;
    doc_type  : integer;
  public
    constructor Create (var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
    destructor  Free;
  end;

  TTemplateDoc = class(TInterfacedObject,IDoc)
    ID_Doc    : integer;
    doc_type  : integer;
  public
    constructor Create (var doc_id: integer);
    procedure OpenEditFrm;
    procedure SaveDoc;
    function ChangeState (p_newstate : integer): integer;
    function ExportDoc  : PChar;
    destructor  Free;
  end;

implementation
  uses
    UFrmInputDoc,UFrmInputDocBack,UFrmInputDocBackRozn,
    uFrmOutputDoc,UFrmInputPay,UFrmMoveDoc,
    UFrmEditInventory, uFrmRoznSale, uFrmOutDocBack, uFrmOutputPay,
    uDm,uFrmMoveDocSpisan,uFrmMoveDocPrihod,uFrmTemplateDoc,
    UFrmViewDoc, uFrmDocView,uFrmDocSpisan,Upublic;

{ TInputDoc }

function TInputDoc.ChangeState(p_newstate: integer): integer;
begin
  dm.pStChangeState.StoredProcName:='SP_T_DOC_IN_U';
  dm.pStChangeState.ParamByName('f_id').Value:=id_doc;
  dm.pStChangeState.ParamByName('f_state').Value:=p_newstate;
  dm.pStChangeState.ExecProc;
  dm.pStChangeState.Transaction.CommitRetaining;
end;

constructor TInputDoc.Create(var doc_id: integer);
begin
//  inherited;
  ID_Doc:=doc_id;
{
  if doc_id=0 then
  begin
    ShowMessage('Create new Input Doc');
  end
  else
  begin
    ShowMessage('Open existing Input Doc');
  end;
}
end;

function TInputDoc.ExportDoc: PChar;
var
  export_xml  : string;
begin
  dm.DsPublicDs.Active:=false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  dm.DsPublicDs.SQLs.SelectSQL.Add('SELECT F_VALUE FROM PR_EXPORT_DOC_IN('+IntToStr(Id_doc)+')');
  dm.DsPublicDs.Active:=true;
  export_xml:='';
  while not dm.DsPublicDs.Eof do
  begin
    export_xml:=export_xml+dm.DsPublicDs.FieldByName('F_value').AsString;
    dm.DsPublicDs.Next;
  end;
  dm.DsPublicDs.Active:=false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  result:=PChar(export_xml);
end;


destructor TInputDoc.Free;
begin
//  inherited;
end;

procedure TInputDoc.OpenEditFrm;
begin
  case doc_type of
  1:
    with TFrmInputDoc.Create(Application.MainForm) do
    begin
      dsDocHead.ParamByName('f_doc_in').Value:=ID_Doc;
      dsDocHead.ParamByName('f_doc_type').Value:=doc_type;
      dsDocHead.Active:=true;
      caption:=translateCapt('Приходный документ №',Language,TranslateFile)
        +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
      if ID_Doc=-10 then
        ID_Doc:=dsDocHeadF_doc_in.Value;
      ShowAsChild;
    end;
  2:
    with TFrmInputDocBack.Create(Application.MainForm) do
    begin
      dsDocHead.ParamByName('f_doc_in').Value:=ID_Doc;
      dsDocHead.Active:=true;
      caption:=translateCapt('Возврат покупателя №',Language,TranslateFile)
        +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
      if ID_Doc=-10 then
        ID_Doc:=dsDocHeadF_doc_in.Value;
      ShowAsChild;
    end;
  3:
    with TFrmInputDoc.Create(Application.MainForm) do
    begin
      dsDocHead.ParamByName('f_doc_in').Value:=ID_Doc;
      dsDocHead.ParamByName('f_doc_type').Value:=doc_type;
      dsDocHead.Active:=true;
      caption:=translateCapt('Хоз.документ(п) №',Language,TranslateFile)
        +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
      if ID_Doc=-10 then
        ID_Doc:=dsDocHeadF_doc_in.Value;
      ShowAsChild;
    end;
   4:
    with TFrmInputDocBackRozn.Create(Application.MainForm) do
    begin
      dsDocHead.ParamByName('f_doc_in').Value:=ID_Doc;
      dsDocHead.ParamByName('f_doc_type').Value:=doc_type;      
      dsDocHead.Active:=true;
      caption:=translateCapt('Розничный возврат №',Language,TranslateFile)
        +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
      if ID_Doc=-10 then
        ID_Doc:=dsDocHeadF_doc_in.Value;
      ShowAsChild;
    end;

  end;
  self.Free;
end;

procedure TInputDoc.SaveDoc;
begin

end;

{ TOutDoc }

function TOutDoc.ChangeState(p_newstate: integer): integer;
begin
  dm.pStChangeState.StoredProcName:='SP_T_DOC_OUT_U';
  dm.pStChangeState.ParamByName('f_id').Value:=id_doc;
  dm.pStChangeState.ParamByName('f_state').Value:=p_newstate;
  dm.pStChangeState.ExecProc;
  dm.pStChangeState.Transaction.CommitRetaining;
end;

constructor TOutDoc.Create(var doc_id: integer; dsJournal: TDataSet);
begin
  ID_Doc:=doc_id;
  if dsJournal <> nil then
    mainDs:=dsJournal;
end;

function TOutDoc.ExportDoc: PChar;
var
  export_xml  : string;
begin
  dm.DsPublicDs.Active:=false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  dm.DsPublicDs.SQLs.SelectSQL.Add('SELECT F_VALUE FROM PR_EXPORT_DOC_OUT('+IntToStr(Id_doc)+')');
  dm.DsPublicDs.Active:=true;
  export_xml:='';
  while not dm.DsPublicDs.Eof do
  begin
    export_xml:=export_xml+dm.DsPublicDs.FieldByName('F_value').AsString;
    dm.DsPublicDs.Next;
  end;
  dm.DsPublicDs.Active:=false;
  dm.DsPublicDs.SQLs.SelectSQL.Clear;
  result:=PChar(export_xml);
end;

destructor TOutDoc.Free;
begin

end;

procedure TOutDoc.OpenEditFrm;
begin
  case doc_type of
    1:
      with TFrmOutputDoc.Create(Application.MainForm) do
      begin
        dsDocHead.ParamByName('f_doc_out').Value:=ID_Doc;
        dsDocHead.ParamByName('f_type').Value:=doc_type;
        dsDocHead.Active:=true;
        caption:=translateCapt('Расходный документ №',Language,TranslateFile)
          +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
        if ID_Doc=-10 then
          ID_Doc:=dsDocHeadF_doc_out.Value;
{        if mainDs <> nil then
          parentDs:=mainDs;}
        ShowAsChild;
      end;
    2:
      with TFrmRoznSale.Create(Application.MainForm) do
      begin
        if mainDs <> nil then
          parentDs:=mainDs;
        dsDocHead.ParamByName('doc_id').Value:=ID_doc;
        dsDocHead.ParamByName('doc_type').Value:=doc_type;
        dsDocHead.Active:=true;
        caption:=translateCapt('Розница №',Language,TranslateFile)
          +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
        WindowState:=wsMaximized;
        ShowAsChild;
      end;
    3:
       with TFrmOutDocBack.Create(Application.MainForm) do
       begin
{        if mainDs <> nil then
          parentDs:=mainDs;}
        dsDocHead.ParamByName('f_doc_out').Value:=ID_doc;
        dsDocHead.ParamByName('f_type').Value:=doc_type;
        dsDocHead.Active:=true;
        caption:=translateCapt('Возврат поставщику №',Language,TranslateFile)
          +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
//        WindowState:=wsMaximized;
        ShowAsChild;
       end;
    4:
       with TFrmOutputDoc.Create(Application.MainForm) do
       begin
{        if mainDs <> nil then
          parentDs:=mainDs;}
        dsDocHead.ParamByName('f_doc_out').Value:=ID_doc;
        dsDocHead.ParamByName('f_type').Value:=doc_type;
        dsDocHead.Active:=true;
        caption:=translateCapt('Хоз.документ(р) №',Language,TranslateFile)
          +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
//        WindowState:=wsMaximized;
        ShowAsChild;
       end;
  end;
  self.Free;
end;

procedure TOutDoc.OpenViewFrm;
begin
{  with TFrmViewDoc.Create(Application.MainForm) do
  begin
    p_doc_name:='T_DOC_OUT';
    p_doc_id:=ID_doc;
    dsDocHead.Active:=true;
    dsDocBody.Active:=true;
    Caption:=dsDocHead.FieldByName('F_TYPE_NAME').AsString+' №'+
      dsDocHead.FieldByName('F_Number').AsString + ' от '+dsDocHead.FieldByName('F_date').AsString;
//    ShowAsDialog;
    ShowAsChild;

  end;}
  with TFrmDocView.Create(Application.MainForm) do
  begin
    dsDocHead.ParamByName('f_doc_out').Value:=ID_doc;
    dsDocHead.ParamByName('f_type').Value:=doc_type;
    dsDocHead.Active:=true;
    caption:=translateCapt('Хоз.документ(р) №',Language,TranslateFile)
      +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
    ShowAsChild;
  end;
  self.free;
end;

procedure TOutDoc.SaveDoc;
begin

end;

{ TInputPay }

function TInputPay.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TInputPay.Create(var doc_id: integer);
begin
  id_doc:=doc_id;
end;

function TInputPay.ExportDoc: PChar;
begin

end;

destructor TInputPay.Free;
begin

end;

procedure TInputPay.OpenEditFrm;
begin
  with TFrmInputPay.Create(Application.MainForm) do
  begin
    dsMoneyInHead.ParamByName('F_pay').Value:=ID_Doc;
    dsMoneyInHead.ParamByName('F_MONEY_TYPE').Value:=Doc_type;
    dsMoneyInHead.Active:=true;
    if ID_Doc=-10 then
      ID_Doc:=dsMoneyInHeadF_pay.Value;
    ShowAsChild;
  end;
  self.free;
end;

procedure TInputPay.SaveDoc;
begin

end;

{ TMoveDoc }

function TMoveDoc.ChangeState(p_newstate: integer): integer;
begin
  dm.pStChangeState.StoredProcName:='SP_T_DOC_MOVE_U';
  dm.pStChangeState.ParamByName('f_id').Value:=id_doc;
  dm.pStChangeState.ParamByName('f_state').Value:=p_newstate;
  dm.pStChangeState.ExecProc;
  dm.pStChangeState.Transaction.CommitRetaining;
end;

constructor TMoveDoc.Create(var doc_id: integer);
begin
  id_doc:=doc_id;
end;

function TMoveDoc.ExportDoc: PChar;
begin

end;

destructor TMoveDoc.Free;
begin

end;

procedure TMoveDoc.OpenEditFrm;
var
  can_edit_price  : string;
begin
  can_edit_price := dm.GetSYSValue('CAN_EDIT_OUT_PRICE');
  case doc_type of
    1:
      begin
        with TFrmMoveDoc.Create(Application.MainForm) do
        begin
          doc:=self;
          dsDocHead.ParamByName('doc_id').Value:=ID_Doc;
          dsDocHead.ParamByName('doc_type').Value:=doc_type;
          dsDocHead.Active:=true;
          caption:=translateCapt('Перемещение №',Language,TranslateFile)
            +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
          if ID_Doc=-10 then
            ID_Doc:=dsDocHeadDoc_id.Value;
          if can_edit_price='1' then
            cxGrid1DBTableView1F_PRICE_VAL.Options.Editing:=true;          
          ShowAsChild;
        end;
      end;
    2:
      begin
        with //TFrmDocSpisan.Create(Application.MainForm)do
        TFrmMoveDocSpisan.Create(Application.MainForm) do
        begin
//          doc:=self;
          dsDocHead.ParamByName('doc_id').Value:=ID_Doc;
          dsDocHead.ParamByName('doc_type').Value:=doc_type;
          dsDocHead.Active:=true;
          caption:=translateCapt('Списание №',Language,TranslateFile)
            +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
          if ID_Doc=-10 then
            ID_Doc:=dsDocHeadDoc_id.Value;
          ShowAsChild;
        end;
      end;
    3:
      begin
        with TFrmMoveDocPrihod.Create(Application.MainForm) do
        begin
          doc:=self;
          dsDocHead.ParamByName('doc_id').Value:=ID_Doc;
          dsDocHead.ParamByName('doc_type').Value:=doc_type;
          dsDocHead.Active:=true;
          caption:=translateCapt('Оприходование №',Language,TranslateFile)
            +dsDocHeadF_NUMBER.AsString+' от '+dsDocHeadF_DATE.AsString;
          if ID_Doc=-10 then
            ID_Doc:=dsDocHeadDoc_id.Value;
          ShowAsChild;
        end;
      end;

  end;

end;

procedure TMoveDoc.SaveDoc;
begin

end;

{ TInventoryDoc }

function TInventoryDoc.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TInventoryDoc.Create(var doc_id: integer);
begin
  id_doc:=doc_id;
end;

function TInventoryDoc.ExportDoc: PChar;
begin

end;

destructor TInventoryDoc.Free;
begin

end;

procedure TInventoryDoc.OpenEditFrm;
begin
  with TFrmEditInventory.Create(Application.MainForm) do
  begin
    dsDocHead.ParamByName('F_INVENTORY').Value:=ID_Doc;
    dsDocHead.Active:=true;
    if ID_Doc=-10 then
      ID_Doc:=dsDocHeadf_inv.Value;
    ShowAsChild;
  end;
end;

procedure TInventoryDoc.SaveDoc;
begin

end;

{ TOutputPay }

function TOutputPay.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TOutputPay.Create(var doc_id: integer);
begin
  id_doc:=doc_id;
end;

function TOutputPay.ExportDoc: PChar;
begin

end;

destructor TOutputPay.Free;
begin

end;

procedure TOutputPay.OpenEditFrm;
begin
  with TFrmOutputPay.Create(Application.MainForm) do
  begin
    dsMoneyInHead.ParamByName('F_pay').Value:=ID_Doc;
    dsMoneyInHead.ParamByName('F_MONEY_TYPE').Value:=Doc_type;
    dsMoneyInHead.Active:=true;
    if ID_Doc=0 then
      ID_Doc:=dsMoneyInHeadF_pay.Value;
    ShowAsChild;
  end;
  self.free;
end;

procedure TOutputPay.SaveDoc;
begin

end;

{ TTemplateDoc }

function TTemplateDoc.ChangeState(p_newstate: integer): integer;
begin

end;

constructor TTemplateDoc.Create(var doc_id: integer);
begin
  id_doc:=doc_id;
end;

function TTemplateDoc.ExportDoc: PChar;
begin

end;

destructor TTemplateDoc.Free;
begin

end;

procedure TTemplateDoc.OpenEditFrm;
begin
    with TFrmTemplateDoc.Create(Application.MainForm) do
    begin
      dsDocHead.ParamByName('DOC_ID').Value:=ID_Doc;
      dsDocHead.Active:=true;
      if ID_Doc=-10 then
        ID_Doc:=dsDocHeadDOC_ID.Value;
      ShowAsChild;
    end;
    self.free;
end;

procedure TTemplateDoc.SaveDoc;
begin

end;

end.
