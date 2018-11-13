unit UFrmPrototype;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, ExtCtrls, udm, RzButton, Menus, RzStatus, DB, FIBDatabase,
  pFIBDatabase, pFIBDataSet, frxClass,frxVariables, frxFIBComponents, frxDesgn,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxExportPDF,
  frxCross, frxBarcode, frxDCtrl, RzForms, cxPropertiesStore,cxGridDBTableView,
  cxCustomData, cxPc;

type
  TFrmPrototype = class(TForm)
    RzToolbar: TRzToolbar;
    RzStatusBar1: TRzStatusBar;
    BtnNew: TRzToolButton;
    BtnOpen: TRzToolButton;
    BtnFind: TRzToolButton;
    BtnPrint: TRzToolButton;
    BtnOK: TRzToolButton;
    BtnCancel: TRzToolButton;
    BtnRefresh: TRzToolButton;
    BtnEdit: TRzToolButton;
    Panel3: TPanel;
    BtnExecute: TRzToolButton;
    PrnMenu: TPopupMenu;
    DsFormName: TRzStatusPane;
    BtnDelete: TRzToolButton;
    BtnSave: TRzToolButton;
    BtnExit: TRzToolButton;
    frxReport2: TfrxReport;
    N5: TMenuItem;
    RzFormState: TRzFormState;
    cxPropertiesStore: TcxPropertiesStore;
    BtnView: TRzToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure InitPrnForms;
    procedure FormCreate(Sender: TObject);
    procedure ActPrnForm(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzFormStateRestoreState(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure CloseWin;//(Sender: TObject);
    constructor CreateForm (Aowner : Tcomponent; AFormName : String='');
  private
    Act : TCloseAction;
    NeedToSave  : boolean;
    PrList      : Tstrings;
    parentPageName : string;
//    const MyHotKey = 13;

//    procedure WMChar  (var Msg : TWMChar); message WM_CHAR;
//    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;

    { Private declarations }
  public
    FormName  : string;
    parentDs  : TDataSet;

    procedure ShowAsChild;
    function ShowAsDialog : boolean;
    { Public declarations }
    procedure RestoreState;
  end;

var
  FrmPrototype: TFrmPrototype;

implementation
uses
 upublic,uMainFrm;
{$R *.dfm}

procedure TFrmPrototype.BtnCancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
//  close;
end;

procedure TFrmPrototype.BtnDeleteClick(Sender: TObject);
var
  cmp : TComponent;
begin
  cmp:=self.FindComponent(DsFormName.Caption);
  if (cmp<>nil) then
  begin
    if (cmp is TDataSet) then
    begin
      if MessageDlg('Вы уверены что хотите удалить?',mtWarning,[mbYes,mbNo],0,mbNo)=mrYes then
      begin
        (cmp as TDataSet).Delete;
        refreshDs((cmp as TDataSet));
        (cmp as TpFibDataSet).Transaction.CommitRetaining;
      end;
    end;
  end;
end;

procedure TFrmPrototype.InitPrnForms;
var
  FindedFile  : TSearchRec;
  varName     : string;
  MnItem      : TMenuItem;
  i           : integer;
begin
  PrList:=TstringList.Create;
  if FindFirst(Prg_path+'\*.fr3',faAnyFile,FindedFile)=0 then
  begin
    repeat
      frxReport2.LoadFromFile(Prg_path+'\'+FindedFile.Name);
      if frxReport2.Variables.IndexOf(FormName)>=0 then
      begin
        i:=PrList.Add(Prg_path+'\'+FindedFile.Name);
        MnItem:=TMenuItem.Create(PrnMenu);
        MnItem.Caption:=frxReport2.ReportOptions.Name;
        MnItem.Tag:=i+1;
        MnItem.OnClick:=ActPrnForm;
        PrnMenu.Items.Add(MnItem);
      end;
    until FindNext(FindedFile)<>0 ;
  end;
  FindClose(FindedFile);
end;

procedure TFrmPrototype.BtnOKClick(Sender: TObject);
begin
  PostAllDS(self,true);
  if Act=caHide then
  begin
    ModalResult:=mrOk;
  end;
{  else
    close;}
//  close;
end;

procedure TFrmPrototype.BtnPrintClick(Sender: TObject);
begin
  BtnPrint.Down:=true;
end;

procedure TFrmPrototype.BtnSaveClick(Sender: TObject);
begin
  PostAllDs(Self,true);

end;

procedure TFrmPrototype.CloseWin;//(Sender: TObject);
begin
  self.Close;
end;

constructor TFrmPrototype.CreateForm(Aowner: Tcomponent; AFormName: String);
begin
  inherited Create(AOwner);
  if AformName='' then
    FormName:=self.ClassName
  else
    FormName:=AFormName;
//  InitPrnForms;
end;

procedure TFrmPrototype.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PostAllDs(Self,true);
  Action:=Act;
end;

procedure TFrmPrototype.FormCreate(Sender: TObject);
begin
  RestoreState;
  InitPrnForms;  
end;

procedure TFrmPrototype.FormDestroy(Sender: TObject);
var
   i : integer;
begin
//  UnRegisterHotKey(self.Handle, MyHotKey);

  if parentDs <> nil then
    RefreshDS(parentDs);
  if parentPageName <> '' then
  begin
    for I := 0 to FrmMain.PageControl1.PageCount - 1 do
      if FrmMain.PageControl1.Pages[i].Name=parentPageName then
      begin
        try
          FrmMain.PageControl1.ActivePageIndex:=FrmMain.PageControl1.Pages[i].PageIndex;
          break;
        except

        end;
      end;

  end;
  try
    PostAllDs(Self,true,true);
    PrList.Free;
  except

  end;
end;

procedure TFrmPrototype.FormShow(Sender: TObject);
var
  cmp : TComponent;
begin
  cmp:=self.FindComponent(DsFormName.Caption);
  if (cmp<>nil) then
  begin
    if (cmp is TDataSet) then
      refreshDs((cmp as TDataSet));
  end;

end;

procedure TFrmPrototype.N5Click(Sender: TObject);
var
  i        : integer;
  FVar     : TfrxVariable;
  Page     : TfrxReportPage;
begin
  frxReport2.Clear;
  frxReport2.ReportOptions.Name:='NewReport';
  frxReport2.FileName:='';
  Page := TfrxReportPage.Create(frxReport2);
  Page.CreateUniqueName;
  frxReport2.Variables[FormName]:=null;
//  FVar:=frxReport2.Variables.Add;
//  FVar.Name:='Descr';
  for I := 0 to self.ComponentCount-1 do
  begin
    if (Self.Components[i] is TField) then
    begin
      frxReport2.Variables[(Self.Components[i] as TField).FieldName]:=null;
    end;
  end;
  frxReport2.DesignReport;
end;

procedure TFrmPrototype.RestoreState;
var
  i : integer;
begin
  caption:=translateCapt(caption,Language,TranslateFile);
  if FormName='' then
    FormName:=self.ClassName;
  cxPropertiesStore.StorageName:=cxPropertiesStore.StorageName+'\'+FormName;
//  RzFormState.Section:=Self.ClassName;
  for I := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TcxGridDBColumn) then
    begin
      cxPropertiesStore.Components.Add;
      with cxPropertiesStore.Components[cxPropertiesStore.Components.Count-1] do
      begin
        Component:=self.Components[i];
        Properties.Add('SortIndex');
        Properties.Add('SortOrder');
        Properties.Add('Visible');
        Properties.Add('GroupIndex');
        Properties.Add('Width');
//        cxPropertiesStore.RestoreFrom;
      end;
    end;
    if (self.Components[i] is TcxGridDBTableView) then
    begin
      if (TcxGridDBTableView(Components[i]).DataController.DataSet.FindField('f_article') <> nil)
        or (TcxGridDBTableView(Components[i]).DataController.DataSet.FindField('f_article') <> nil)
        then
      begin
        TcxGridDBTableView(Components[i]).DragMode:=dmAutomatic;
      end;
    end;
  end;
//  RegisterHotKey(self.Handle, MyHotKey, 0, VK_RETURN);

  if ((BorderStyle=bsSizeable)) then
  begin
    cxPropertiesStore.Components.Add;
    with cxPropertiesStore.Components[cxPropertiesStore.Components.Count-1] do
    begin
      Component:=self;
//       Properties.Add('Width');
//       Properties.Add('Height');
       Properties.Add('WindowState');
    end;
    cxPropertiesStore.RestoreFrom;
//    RzFormState.RestoreState;
  end;
  TranslateForm(self,Language,TranslateFile);
end;

procedure TFrmPrototype.RzFormStateRestoreState(Sender: TObject);
begin
  RzFormState.Section:=Self.ClassName;
end;

procedure TFrmPrototype.ActPrnForm(Sender: TObject);
var
  PrnForm,VarName,dsName    : string;
  i,j,k,n                   : integer;
  ARowIndex                 : Integer;
  ARowInfo                  : TcxRowInfo;
  findval                   : boolean;
begin
  frxReport2.Clear;
  findval:=false;
  if (sender is TComponent) then
  begin
    if ((sender as TComponent).Tag>0) then
    begin
      prnForm:=PrList[(sender as TComponent).tag-1];
      frxReport2.LoadFromFile(prnForm);
      for I := 0 to frxReport2.Variables.Count - 1 do
      begin
        VarName:=frxReport2.Variables.Items[i].Name;
        for j := 0 to self.ComponentCount-1 do
        begin
          if (self.Components[j] is TDataSet) then
          begin
            if ((self.Components[j] as TDataSet).findField(VarName)<>nil) then
            begin
              dsName := self.Components[j].Name;
              frxReport2.Variables.Items[i].Value:=''''+(self.Components[j] as TDataSet).findField(VarName).AsString+'''';
            end;
          end;
        end;
      end;
      for j := 0 to self.ComponentCount-1 do
      begin
        if (self.Components[j] is TcxGridDBTableView) then
        begin
          if (self.Components[j] as TcxGridDBTableView).DataController.DataSet.Name<>dsName then
            continue;
          for k:=0 to (self.Components[j] as TcxGridDBTableView).Controller.SelectedRowCount-1 do
          begin
            ARowIndex:=(self.Components[j] as TcxGridDBTableView).DataController.GetSelectedRowIndex(k);
            ARowInfo:=(self.Components[j] as TcxGridDBTableView).DataController.GetRowInfo(ARowIndex);

            for I := 0 to frxReport2.Variables.Count - 1 do
            begin
              VarName:=frxReport2.Variables.Items[i].Name;
              if ((self.Components[j] as TcxGridDBTableView).DataController.DataSet.findField(VarName)<>nil) then
              begin
                findval:=true;
                for n := 0 to (self.Components[j] as TcxGridDBTableView).ColumnCount - 1 do
                  if (self.Components[j] as TcxGridDBTableView).Columns[n].DataBinding.FieldName = VarName then
                    frxReport2.Variables.Items[i].Value:=''''+
                      VarToStr((self.Components[j] as TcxGridDBTableView).DataController.GetRowValue(ARowInfo,n))
                      +'''';
              end;
            end;
            if findval then
            begin
              if k=0 then
                frxReport2.PrepareReport
              else
                frxReport2.PrepareReport(false);
            end;
          end;
        end;
      end;
      if not findval then
        frxReport2.PrepareReport;
      frxReport2.ShowPreparedReport;
    end;
  end;
end;

procedure TFrmPrototype.ShowAsChild;
var
  pg_name : string;
begin
  Inc(FrmMain.CreatedMDICount);

//  Align:=alClient;
//  FrmMain.dxBarListItem.Items.AddObject(Caption, Self);
//  FormStyle:=fsMdiChild;
//  ManualDock(FrmMain.DockTabSet);
//  self.SetParent(FrmMain.PageControl1);
  BorderStyle:=bsSizeable;
  self.ManualDock(FrmMain.PageControl1);
//  parentPage:=@FrmMain.PageControl1.ActivePage;
  if (FrmMain.PageControl1.ActivePage <> nil) then
    parentPageName:=FrmMain.PageControl1.ActivePage.name;
//  parentPage:=FrmMain.PageControl1.ActivePageIndex;

  FrmMain.PageControl1.ActivePageIndex:=FrmMain.PageControl1.PageCount-1;
  pg_name:='Chld_'+IntTostr(FrmMain.CreatedMDICount);
  FrmMain.PageControl1.ActivePage.Name:=pg_name;
  Act:=caFree;
//  FrmMain.DockTabSet.ShowDockClient(self);
  Show;
  self.SetFocus;
  self.SetParent(FrmMain.PageControl1.ActivePage);
  if self.ActiveControl<>nil then
    self.ActiveControl.SetFocus;

end;

function TFrmPrototype.ShowAsDialog: boolean;
begin
  Act:=caHide;
  dragKind:=dkDrag;
  dragMode:=dmManual;
  BorderStyle:=bsDialog;
  if ShowModal=mrOk then
    result:=true
  else
    result:=false;
end;



end.
