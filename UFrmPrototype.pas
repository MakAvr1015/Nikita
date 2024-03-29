unit UFrmPrototype;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, ExtCtrls, udm, RzButton, Menus, RzStatus, DB, FIBDatabase,
  pFIBDatabase, pFIBDataSet, frxClass, frxVariables, frxFIBComponents, frxDesgn,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportHTML, frxExportPDF,
  frxCross, frxBarcode, frxDCtrl, RzForms, cxPropertiesStore, cxGridDBTableView,
  cxCustomData, cxPc, cxClasses, cxGridCustomView, IniFiles, cxGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  frxChBox, frxTableObject, frxRich, frxExportBaseDialog, frxExportDOCX, frxOLE,
  frxDBSet, System.ImageList, Vcl.ImgList;

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
    cxComboBoxStyles: TcxComboBox;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDesigner1: TfrxDesigner;
    frxOLEObject1: TfrxOLEObject;
    frxDialogControls1: TfrxDialogControls;
    frxDOCXExport1: TfrxDOCXExport;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxFIBComponents1: TfrxFIBComponents;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBDataset1: TfrxDBDataset;
    ImageList: TImageList;
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
    procedure CloseWin; // (Sender: TObject);
    constructor CreateForm(Aowner: Tcomponent; AFormName: String = '');
    procedure cxComboBoxStylesPropertiesChange(Sender: TObject);
    procedure cxComboBoxStylesDblClick(Sender: TObject);

/// <summary>
///  Обработчик перетаскивания на Grid
///  </summary>
  procedure prGridOverEvent(Sender, Source: TObject; X, Y: Integer;
    State: TDragState; var Accept: Boolean);

  procedure prGridDragDropEvent(Sender, Source: TObject; X,Y: Integer);

  private
    Act: TCloseAction;
    NeedToSave: boolean;
    PrList: Tstrings;
    parentPageName: string;


    // const MyHotKey = 13;

    // procedure WMChar  (var Msg : TWMChar); message WM_CHAR;
    // procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;

    { Private declarations }
    procedure SaveState;
  protected
    GoodGridDragOverEvent : TDragOverEvent;
    GoodGridDragDropEvent : TDragDropEvent;
  public
    FormName: string;
    parentDs: TDataSet;

    procedure ShowAsChild;
    function ShowAsDialog: boolean;
    { Public declarations }
    procedure RestoreState;
  end;

var
  FrmPrototype: TFrmPrototype;

implementation

uses
  upublic, uMainFrm, cxStyles;
{$R *.dfm}

procedure TFrmPrototype.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  // close;
end;

procedure TFrmPrototype.BtnDeleteClick(Sender: TObject);
var
  cmp: Tcomponent;
begin
  cmp := self.FindComponent(DsFormName.Caption);
  if (cmp <> nil) then
  begin
    if (cmp is TDataSet) then
    begin
      if MessageDlg('Вы уверены что хотите удалить?', mtWarning, [mbYes, mbNo],
        0, mbNo) = mrYes then
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
  FindedFile: TSearchRec;
  varName: string;
  MnItem: TMenuItem;
  GrItem : TMenuItem;
  strArray : TArray<String>;
  i,j: integer;
begin
  PrList := TstringList.Create;
  if FindFirst(Prg_path + '\*.fr3', faAnyFile, FindedFile) = 0 then
  begin
    repeat
      frxReport2.LoadFromFile(Prg_path + '\' + FindedFile.Name);
      if frxReport2.Variables.IndexOf(FormName) >= 0 then
      begin
        i := PrList.Add(Prg_path + '\' + FindedFile.Name);
        MnItem := TMenuItem.Create(PrnMenu);
        varName := frxReport2.ReportOptions.Name;
        strArray := varName.split(['|'],2);
        if length(strArray)>1 then
          varName := strArray[1];
        MnItem.Caption := varName;//frxReport2.ReportOptions.Name;
        MnItem.Tag := i + 1;
        MnItem.OnClick := ActPrnForm;

        if length(strArray)>1 then
        begin
          varName := strArray[0];
          GrItem := nil;
          for j:=0 to PrnMenu.Items.count - 1 do
          begin
            if PrnMenu.Items[j].caption = varName then
            begin
              GrItem := PrnMenu.Items[j];
              break;
            end;
          end;
          if not Assigned(GrItem) then
          begin
            GrItem := TMenuItem.Create(PrnMenu);
            GrItem.caption := varName;
            PrnMenu.Items.Add(GrItem);
          end;
          GrItem.Add(MnItem);
        end
        else
          PrnMenu.Items.Add(MnItem);

      end;
    until FindNext(FindedFile) <> 0;
  end;
  FindClose(FindedFile);
end;

procedure TFrmPrototype.BtnOKClick(Sender: TObject);
begin
  PostAllDS(self, true);
  if Act = caHide then
  begin
    ModalResult := mrOk;
  end;
  { else
    close; }
  // close;
end;

procedure TFrmPrototype.BtnPrintClick(Sender: TObject);
begin
  BtnPrint.Down := true;
end;

procedure TFrmPrototype.BtnSaveClick(Sender: TObject);
begin
  PostAllDS(self, true);

end;

procedure TFrmPrototype.CloseWin; // (Sender: TObject);
begin
  self.Close;
end;

constructor TFrmPrototype.CreateForm(Aowner: Tcomponent; AFormName: String);
begin
  inherited Create(Aowner);
  if AFormName = '' then
    FormName := self.ClassName
  else
    FormName := AFormName;
  // InitPrnForms;
end;

procedure TFrmPrototype.cxComboBoxStylesDblClick(Sender: TObject);
begin
  cxComboBoxStyles.Enabled := true;
end;

procedure TFrmPrototype.cxComboBoxStylesPropertiesChange(Sender: TObject);
var
  vl_index : integer;
begin
  for vl_index := 0 to self.ComponentCount-1 do
  begin
    if self.Components[vl_index] is TcxGridDBTableView then
      TcxGridDBTableView(Components[vl_index]).Styles.StyleSheet := TcxCustomStyleSheet(cxComboBoxStyles.Properties.Items.Objects[cxComboBoxStyles.ItemIndex]);
  end;

end;

procedure TFrmPrototype.SaveState;
var
  i: integer;
  fl: TiniFile;
begin
  fl := TiniFile.Create(app_data + '\' + self.ClassName + '.ini');

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TcxGridDBTableView then
    begin
      TcxGridDBTableView(self.Components[i]).StoreToIniFile(fl.FileName, false,
        [{gsoUseFilter, gsoUseSummary}], self.Components[i].Name);
    end;
  end;
  fl.Free;
end;

procedure TFrmPrototype.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PostAllDS(self, true);
  SaveState;
  Action := Act;
end;

procedure TFrmPrototype.FormCreate(Sender: TObject);
var
  vl_index : integer;
begin
  GoodGridDragOverEvent := prGridOverEvent;
  GoodGridDragDropEvent := prGridDragDropEvent;
  for vl_index := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[vl_index] is TcxGridDBTableView then
    begin
      if (TcxGridDBTableView(self.Components[vl_index]).DataController.DataSet.FindField('F_ARTICLE') <> nil)
        or (TcxGridDBTableView(self.Components[vl_index]).DataController.DataSet.FindField('F_GOOD_ARTICLE') <> nil)
      then
      begin
        TcxGridDBTableView(self.Components[vl_index]).OnDragOver := GoodGridDragOverEvent;
        TcxGridDBTableView(self.Components[vl_index]).OnDragDrop := GoodGridDragDropEvent;
      end;
    end;
  end;
  cxComboBoxStyles.Properties.Items.Clear;
  for vl_index := 0 to (dm.cxStyleRepository1.StyleSheetCount -1) do
  begin
    if dm.cxStyleRepository1.StyleSheets[vl_index].Tag = 1 then
    begin
      cxComboBoxStyles.Properties.Items.AddObject(dm.cxStyleRepository1.StyleSheets[vl_index].Caption,dm.cxStyleRepository1.StyleSheets[vl_index]);
    end;
  end;
  cxComboBoxStyles.Height := RzToolbar.RowHeight - 2;
  RestoreState;
  InitPrnForms;


end;

procedure TFrmPrototype.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  // UnRegisterHotKey(self.Handle, MyHotKey);

  if parentDs <> nil then
    refreshDs(parentDs);
  if parentPageName <> '' then
  begin
    for i := 0 to FrmMain.PageControl1.PageCount - 1 do
      if FrmMain.PageControl1.Pages[i].Name = parentPageName then
      begin
        try
          FrmMain.PageControl1.ActivePageIndex := FrmMain.PageControl1.Pages[i]
            .PageIndex;
          break;
        except

        end;
      end;

  end;
  try
    PostAllDS(self, true, true);
    SaveState;
    PrList.Free;
  except

  end;
end;

procedure TFrmPrototype.FormShow(Sender: TObject);
var
  cmp: Tcomponent;
begin
  cmp := self.FindComponent(DsFormName.Caption);
  if (cmp <> nil) then
  begin
    if (cmp is TDataSet) then
      refreshDs((cmp as TDataSet));
  end;

end;

procedure TFrmPrototype.N5Click(Sender: TObject);
var
  i: integer;
  FVar: TfrxVariable;
  Page: TfrxReportPage;
begin
  frxReport2.Clear;
  frxReport2.ReportOptions.Name := 'NewReport';
  frxReport2.FileName := '';
  Page := TfrxReportPage.Create(frxReport2);
  Page.CreateUniqueName;
  frxReport2.Variables[FormName] := null;
  // FVar:=frxReport2.Variables.Add;
  // FVar.Name:='Descr';
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TField) then
    begin
      frxReport2.Variables[(self.Components[i] as TField).FieldName] := null;
    end;
  end;
  frxReport2.DesignReport;
end;



procedure TFrmPrototype.prGridDragDropEvent(Sender, Source: TObject; X,
  Y: Integer);
var
  vl_str : String;
begin
  if (TcxDragControlObject(Source).Control is TcxGridSite)
    and (Sender is TcxGridSite)
    then
  begin
    with TcxDragControlObject(Source) do
    begin
      if (Control is TcxGridSite) and (Control <> Sender) then
        with TcxGridSite(Control) do
        begin
          DragDropGood(TcxGridDBTableView(GridView),
            TpFIBDataSet(TcxGridDBTableView(TcxGridSite(sender).GridView).DataController.DataSet)
            );
        end;
    end;
  end;
end;

procedure TFrmPrototype.prGridOverEvent(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if Source is TcxGridDBTableView then
  begin
    if sender <> Source then
      if TcxGridDBTableView(Source).DataController.DataSet.FindField('f_article')<>nil then
      begin
        Accept:=true;
      end;
  end;
end;

procedure TFrmPrototype.RestoreState;
var
  i: integer;
  fl: TiniFile;
begin
  fl := TiniFile.Create(app_data + '\' + self.ClassName + '.ini');
  Caption := translateCapt(Caption, Language, TranslateFile);
  if FormName = '' then
    FormName := self.ClassName;
  cxPropertiesStore.StorageName := cxPropertiesStore.StorageName + '\'
    + FormName;
  cxPropertiesStore.RestoreFrom;
  // RzFormState.Section:=Self.ClassName;
  for i := 0 to self.ComponentCount - 1 do
  begin
    { if (Self.Components[i] is TcxGrid) then
      begin
      TcxGrid(Self.Components[i]).LookAndFeel.ScrollbarMode:=sbmClassic;
      end; }
    if (self.Components[i] is TcxGridDBTableView) then
    begin
      TcxGridDBTableView(self.Components[i]).RestoreFromIniFile(fl.FileName,
        false, false, [ { gsoUseFilter, gsoUseSummary } ],
        self.Components[i].Name);
      if (TcxGridDBTableView(Components[i]).DataController.DataSet.FindField
        ('f_article') <> nil) or
        (TcxGridDBTableView(Components[i]).DataController.DataSet.FindField
        ('f_article') <> nil) then
      begin
        TcxGridDBTableView(Components[i])
          .StoreToRegistry(cxPropertiesStore.StorageName, true,
          [gsoUseFilter, gsoUseSummary], Components[i].Name);
        TcxGridDBTableView(Components[i]).DragMode := dmAutomatic;
      end;
    end;
  end;
  // RegisterHotKey(self.Handle, MyHotKey, 0, VK_RETURN);
  if ((BorderStyle = bsSizeable)) then
  begin
    cxPropertiesStore.Components.Add;
    with cxPropertiesStore.Components[cxPropertiesStore.Components.Count - 1] do
    begin
      Component := self;
      // Properties.Add('Width');
      // Properties.Add('Height');
      Properties.Add('WindowState');
    end;
    cxPropertiesStore.RestoreFrom;
    // RzFormState.RestoreState;
  end;
  TranslateForm(self, Language, TranslateFile);
end;

procedure TFrmPrototype.RzFormStateRestoreState(Sender: TObject);
begin
  RzFormState.Section := self.ClassName;
end;

procedure TFrmPrototype.ActPrnForm(Sender: TObject);
var
  PrnForm, varName, dsName: string;
  i, j, k, n: integer;
  ARowIndex: integer;
  ARowInfo: TcxRowInfo;
  findval: boolean;
begin
  frxReport2.Clear;
  findval := false;
  if (Sender is Tcomponent) then
  begin
    if ((Sender as Tcomponent).Tag > 0) then
    begin
      PrnForm := PrList[(Sender as Tcomponent).Tag - 1];
      frxReport2.LoadFromFile(PrnForm);
      for i := 0 to frxReport2.Variables.Count - 1 do
      begin
        varName := frxReport2.Variables.Items[i].Name;
        for j := 0 to self.ComponentCount - 1 do
        begin
          if (self.Components[j] is TDataSet) then
          begin
            if (self.Components[j] as TDataSet).Active then
              if ((self.Components[j] as TDataSet).FindField(varName) <> nil)
              then
              begin
                dsName := self.Components[j].Name;
                frxReport2.Variables.Items[i].Value :=
                  '''' + (self.Components[j] as TDataSet).FindField(varName)
                  .AsString + '''';
              end;
          end;
        end;
      end;
      for j := 0 to self.ComponentCount - 1 do
      begin
        if (self.Components[j] is TcxGridDBTableView) then
        begin
          if (self.Components[j] as TcxGridDBTableView)
            .DataController.DataSet.Name <> dsName then
            continue;
          for k := 0 to (self.Components[j] as TcxGridDBTableView)
            .Controller.SelectedRowCount - 1 do
          begin
            ARowIndex := (self.Components[j] as TcxGridDBTableView)
              .DataController.GetSelectedRowIndex(k);
            ARowInfo := (self.Components[j] as TcxGridDBTableView)
              .DataController.GetRowInfo(ARowIndex);

            for i := 0 to frxReport2.Variables.Count - 1 do
            begin
              varName := frxReport2.Variables.Items[i].Name;
              if ((self.Components[j] as TcxGridDBTableView)
                .DataController.DataSet.FindField(varName) <> nil) then
              begin
                findval := true;
                for n := 0 to (self.Components[j] as TcxGridDBTableView)
                  .ColumnCount - 1 do
                  if (self.Components[j] as TcxGridDBTableView).Columns[n]
                    .DataBinding.FieldName = varName then
                    frxReport2.Variables.Items[i].Value :=
                      '''' + VarToStr((self.Components[j] as TcxGridDBTableView)
                      .DataController.GetRowValue(ARowInfo, n)) + '''';
              end;
            end;
            if findval then
            begin
              if k = 0 then
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
  pg_name: string;
begin
  Inc(FrmMain.CreatedMDICount);

  // Align:=alClient;
  // FrmMain.dxBarListItem.Items.AddObject(Caption, Self);
  // FormStyle:=fsMdiChild;
  // ManualDock(FrmMain.DockTabSet);
  // self.SetParent(FrmMain.PageControl1);
  BorderStyle := bsSizeable;
  self.ManualDock(FrmMain.PageControl1);
  // parentPage:=@FrmMain.PageControl1.ActivePage;
  if (FrmMain.PageControl1.ActivePage <> nil) then
    parentPageName := FrmMain.PageControl1.ActivePage.Name;
  // parentPage:=FrmMain.PageControl1.ActivePageIndex;

  FrmMain.PageControl1.ActivePageIndex := FrmMain.PageControl1.PageCount - 1;
  pg_name := 'Chld_' + IntTostr(FrmMain.CreatedMDICount);
  FrmMain.PageControl1.ActivePage.Name := pg_name;
  Act := caFree;
  // FrmMain.DockTabSet.ShowDockClient(self);
  Show;
  self.SetFocus;
  self.SetParent(FrmMain.PageControl1.ActivePage);
  if self.ActiveControl <> nil then
    self.ActiveControl.SetFocus;

end;

function TFrmPrototype.ShowAsDialog: boolean;
begin
  Act := caHide;
  dragKind := dkDrag;
  DragMode := dmManual;
  BorderStyle := bsDialog;
  if ShowModal = mrOk then
    result := true
  else
    result := false;
end;

end.
