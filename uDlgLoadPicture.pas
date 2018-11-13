unit uDlgLoadPicture;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, ShlObj, cxShellCommon, dxSkinsCore,
  dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxShellComboBox, FIBQuery, pFIBQuery,
  pFIBStoredProc;

type
  TDlgLoadPicture = class(TForm)
    btnLoad: TButton;
    Bevel1: TBevel;
    cxShellComboBox: TcxShellComboBox;
    Label1: TLabel;
    memoLog: TMemo;
    spImportPictures: TpFIBStoredProc;
    procedure btnLoadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgLoadPicture: TDlgLoadPicture;

implementation
uses
  udm;

{$R *.dfm}

procedure TDlgLoadPicture.btnLoadClick(Sender: TObject);
var
  SearchRec         : TSearchRec;
  dir,f_name        : string;

begin
    dir:=cxShellComboBox.Text;
    memoLog.Lines.Clear;
    if FindFirst(dir+'\*.jpg', faAnyFile, SearchRec)=0 then
    begin
      f_name:=ExtractFileName(SearchRec.Name);
      memoLog.Lines.Add(f_name);
      dm.spImportPictures.ParamByName('F_article').Value:=copy(f_name,0,pos('.',f_name)-1);
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      dm.spImportPictures.ParamByName('F_article').Value:=
        StringReplace(copy(f_name,0,pos('.',f_name)-1),'_',' ',[rfReplaceAll]);//+'.jpg';
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      application.ProcessMessages;

    end;
    while FindNext(SearchRec) = 0 do
    begin
      f_name:=ExtractFileName(SearchRec.Name);
      memoLog.Lines.Add(f_name);
      dm.spImportPictures.ParamByName('F_article').Value:=copy(f_name,0,pos('.',f_name)-1);
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      application.ProcessMessages;
      dm.spImportPictures.ParamByName('F_article').Value:=
        StringReplace(copy(f_name,0,pos('.',f_name)-1),'_',' ',[rfReplaceAll]);//+'.jpg';
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      application.ProcessMessages;
    end;
    FindClose(SearchRec);

    if FindFirst(dir+'\*.jpeg', faAnyFile, SearchRec)=0 then
    begin
      f_name:=ExtractFileName(SearchRec.Name);
      memoLog.Lines.Add(f_name);
      dm.spImportPictures.ParamByName('F_article').Value:=copy(f_name,0,pos('.',f_name)-1);
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      application.ProcessMessages;
      dm.spImportPictures.ParamByName('F_article').Value:=
        StringReplace(copy(f_name,0,pos('.',f_name)-1),'_',' ',[rfReplaceAll]);//+'.jpeg';
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      application.ProcessMessages;
    end;
    while FindNext(SearchRec) = 0 do
    begin
      f_name:=ExtractFileName(SearchRec.Name);
      memoLog.Lines.Add(f_name);
      dm.spImportPictures.ParamByName('F_article').Value:=copy(f_name,0,pos('.',f_name)-1);
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      application.ProcessMessages;
      dm.spImportPictures.ParamByName('F_article').Value:=
        StringReplace(copy(f_name,0,pos('.',f_name)-1),'_',' ',[rfReplaceAll]);//+'.jpeg';
      dm.spImportPictures.ParamByName('F_mmedia').LoadFromFile(dir+'\'+SearchRec.Name);
      dm.spImportPictures.ExecProc;
      dm.spImportPictures.Transaction.CommitRetaining;
      application.ProcessMessages;
    end;
    FindClose(SearchRec);

end;

end.
