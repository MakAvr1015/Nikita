unit UFrmImport;

interface

uses
  UMy_types,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPrototype, RzButton, RzPanel, ExtCtrls, StdCtrls, RzLstBox, db,
  RzCmboBx, ADODB, Grids, ValEdit, Buttons, Menus, RzStatus, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxCross,
  frxBarcode, frxDCtrl, frxDesgn, frxFIBComponents, RzForms, cxPropertiesStore,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, System.ImageList, Vcl.ImgList, frxDBSet, frxChBox,
  frxTableObject, frxRich, frxExportBaseDialog, frxExportDOCX, frxOLE;

type
  TFrmImport = class(TFrmPrototype)
    XLSList: TRzListBox;
    EdFIeldList: TRzListBox;
    ComboSheetList: TRzComboBox;
    OpenDialog: TOpenDialog;
    ADOConnection: TADOConnection;
    ADOTable: TADOTable;
    ValueListEditor: TValueListEditor;
    BitBtn: TBitBtn;
    StaticText: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BtnOpenClick(Sender: TObject);
    procedure ComboSheetListChange(Sender: TObject);
    procedure BitBtnClick(Sender: TObject);
    procedure BtnExecuteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    DataSet : pointer;
    CalcFields : TCalcFieldsForImport;
    procedure StartImport;
    procedure ImportFromCsv;

  public
    { Public declarations }
    constructor CreateImp( Ds : pointer; p_calcFields : TCalcFieldsForImport = nil);
  end;

var
  FrmImport: TFrmImport;

implementation



{$R *.dfm}

{ TFrmImport }

procedure TFrmImport.BitBtn1Click(Sender: TObject);
var
  vl_list : TStrings;
  vl_idx  : integer;
  vl_field_name : string;
begin
  if OpenDialog.Execute then
  begin
    vl_list := TstringList.Create;
    vl_list.LoadFromFile(OpenDialog.FileName);
    for vl_idx := 0 to vl_list.Count - 1 do
      begin
        vl_field_name := vl_list.ValueFromIndex[vl_idx];
        if EdFIeldList.FindItem(vl_field_name) then
        begin
          ValueListEditor.Strings.AddObject(vl_list.Strings[vl_idx],
            EdFIeldList.Items.Objects[EdFIeldList.IndexOf(vl_field_name)]);
        end;

      end;
    vl_list.Free;
  end;
end;

procedure TFrmImport.BitBtn2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    ValueListEditor.Strings.SaveToFile(SaveDialog1.FileName);
end;

procedure TFrmImport.BitBtnClick(Sender: TObject);
begin
//  ValueListEditor.InsertRow(XLSList.SelectedItem,EdFIeldList.SelectedItem,true);
  ValueListEditor.Strings.AddObject(XLSList.SelectedItem+'='+EdFIeldList.SelectedItem,EdFIeldList.Items.Objects[EdFIeldList.ItemIndex]);
end;

procedure TFrmImport.BtnExecuteClick(Sender: TObject);
begin
  inherited;
  StartImport;
end;

procedure TFrmImport.BtnOpenClick(Sender: TObject);
const
  ConStr =
    'Provider=Microsoft.ACE.OLEDB.12.0;'+
    'Data Source=%s;' +
    'Extended Properties="Excel 12.0; HDR=YES; IMEX=1;"';
    {'Provider=Microsoft.Jet.OLEDB.4.0;' +
    'Data Source=%s;' +
    'Extended Properties="Excel 8.0;HDR=Yes;";';}
var
  ImpFile : TextFile;
  ImpStr  : String;
  ImpRow  : TstringList;
  i,j     : integer;
begin
  inherited;
  if OpenDialog.Execute(self.Handle) then
  begin
    case OpenDialog.FilterIndex of
    1:
      Begin
        ADOConnection.ConnectionString := Format(ConStr, [ExpandFileName(OpenDialog.fileName)]);
        ADOConnection.Connected:=true;
        ADOConnection.GetTableNames(ComboSheetList.items);
        ComboSheetList.Enabled:=true;
      End;
    2:
      begin
        ComboSheetList.Enabled:=false;
        AssignFile(ImpFile,OpenDialog.fileName);
        reset(ImpFile);
        ImpRow:=TstringList.Create;
        ImpRow.Delimiter:=';';
        ReadLn(ImpFile,ImpStr);
        ImpRow.DelimitedText:=ImpStr;
//        StringGridSample.ColCount:=ImpRow.Count;
        XLSList.Items.Clear;
        for I := 0 to ImpRow.Count - 1 do
        begin
          XLSList.Items.Add(IntToStr(i));
//          StringGridSample.Rows[0].Strings[i]:=IntToStr(i);
        end;
        for I := 1 to 4 do
        begin
          ReadLn(ImpFile,ImpStr);
          ImpRow.DelimitedText:=ImpStr;
{          for j := 0 to StringGridSample.ColCount-1 do
          begin
            StringGridSample.Rows[i].Strings[j]:=ImpRow[j];
          end;}
        end;
        ImpRow.Free;
        closeFile(ImpFile);
      end;
    end;
    StaticText.Caption:=OpenDialog.fileName;
//StringGridSample
  end;
end;

procedure TFrmImport.ComboSheetListChange(Sender: TObject);
var
  i,j : integer;
begin
  inherited;
  ADOTable.TableName:='['+ComboSheetList.Text+']';
  ADOTable.GetFieldNames(XLSList.Items);
  //StringGridSample.ColCount:=ADOTable.FieldCount;
//  StringGridSample.Rows[1]:=XLSList.Items;
  AdoTable.Active:=true;
{  ADOTable.First;
  for I := 1 to 4 do
  begin
    for j := 0 to ADOTable.FieldCount - 1 do
      StringGridSample.Rows[1].Strings[j]:=ADOTable.Fields[i].AsString;
    ADOTable.Next;
  end;
  ADOTable.First;}
end;

constructor TFrmImport.CreateImp(Ds: pointer;p_calcFields : TCalcFieldsForImport = nil);
var
  i : integer;
begin
  Create(Application.MainForm);
  DataSet:=Ds;
  if (TComponent(DataSet^) is TdataSet)  then
  begin
    with TDataSet(DataSet^) do
    begin
      for I := 0 to Fields.Count - 1 do
      begin
        EdFIeldList.items.AddObject(Fields[i].DisplayLabel,Fields[i]);
        //.Add(Fields[i].DisplayLabel);
      end;
    end;
  end;
  if @p_calcFields<>nil then
    CalcFields:=p_calcFields;
end;

procedure TFrmImport.ImportFromCsv;
var
  ImpFile : TextFile;
  ImpStr  : String;
  ImpRow  : TstringList;
  i,j     : integer;
begin
  AssignFile(ImpFile,OpenDialog.fileName);
  reset(ImpFile);
  ImpRow:=TstringList.Create;
  while not EOF(ImpFile) do
  begin
    ReadLn(ImpFile,ImpStr);
    ImpRow.Delimiter:=';';
    ImpRow.DelimitedText:=ImpStr;
    TDataSet(DataSet^).Insert;
    TDataSet(DataSet^).edit;
    for I := 0 to ValueListEditor.Strings.Count - 1 do
    begin
      TField(ValueListEditor.Strings.Objects[i]).Value:=
        ImpRow.Strings[StrToInt(ValueListEditor.Keys[i+1])];
    end;
  end;
  ImpRow.Free;
  closeFile(ImpFile);
end;

procedure TFrmImport.StartImport;
var
  ValArray  : variant;
  i         : integer;
  rec_isEmpty : boolean;
begin
  AdoTable.Active:=true;
  AdoTable.First;
  while not AdoTable.Eof do
  begin
    TDataSet(DataSet^).Insert;
    TDataSet(DataSet^).edit;
    rec_isEmpty := true;
    for I := 0 to ValueListEditor.Strings.Count - 1 do
    begin
      if not TField(ValueListEditor.Strings.Objects[i]).Calculated then
      begin
        try
          if not AdoTable.FieldByName(ValueListEditor.Keys[i+1]).IsNull then
          begin
            TField(ValueListEditor.Strings.Objects[i]).Value:=Variant(
              AdoTable.FieldByName(ValueListEditor.Keys[i+1]).AsString);
            rec_isEmpty := false;
          end;
        except
          on E: Exception do MessageDlg('Ошибка импорта поля '+
            TField(ValueListEditor.Strings.Objects[i]).Name + ': '+
            E.Message, mtInformation, [mbOk],E.HelpContext);
        end;
      end
      else
        if @CalcFields<>nil then
        begin
          CalcFields(TField(ValueListEditor.Strings.Objects[i]),AdoTable.FieldByName(ValueListEditor.Keys[i+1]).AsString);
        end;
//        AdoTable.FieldValues[ValueListEditor.Keys[i+1]]);
    end;
    if not rec_isEmpty then
      TDataSet(DataSet^).post
    else
      TDataSet(DataSet^).Delete;
    AdoTable.Next;
  end;
end;

end.
