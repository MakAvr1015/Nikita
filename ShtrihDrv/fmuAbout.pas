unit fmuAbout;

interface

uses
  // VCL
  Windows, Forms, ExtCtrls, StdCtrls, Controls, Classes, ShellAPI, Graphics,
  // Tnt
  TntStdCtrls, TntExtCtrls, 
  // This
  BaseForm;

type
  { TfmAbout }

  TfmAbout = class(TBaseForm)
    lblAddress: TTntLabel;
    btnOK: TTntButton;
    lblURL: TTntLabel;
    lblWebSite: TTntLabel;
    lblSupport: TTntLabel;
    lblSupportMail: TTntLabel;
    NameLabel: TTntLabel;
    lbVersion: TTntListBox;
    bvlInfo: TTntBevel;
    lblFirmName: TTntLabel;
    Image: TTntImage;
    Shape1: TTntShape;
    Bevel2: TTntBevel;
    procedure lblURLClick(Sender: TObject);
    procedure lblSupportMailClick(Sender: TObject);
  end;

procedure ShowAboutBox(ParentWnd: HWND; const ACaption: string;
  Info: array of string);

implementation

{$R *.DFM}

procedure ShowAboutBox(ParentWnd: HWND; const ACaption: string;
  Info: array of string);
var
  i: Integer;
  fm: TFmAbout;
begin
  fm := TfmAbout.Create(nil);
  try
    with fm do
    begin
      SetWindowLong(Handle, GWL_HWNDPARENT, ParentWnd);
      NameLabel.Caption := ACaption;
      for i:= Low(Info) to High(Info) do lbVersion.Items.Add(Info[i]);
      ShowModal;
    end;
  finally
    fm.Free;
  end;
end;

{ TfmAbout }

procedure TfmAbout.lblURLClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow(),'open','http://www.shtrih-m.ru',
    nil, nil, SW_SHOWNORMAL);
end;

procedure TfmAbout.lblSupportMailClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow(),'open','mailto:support@shtrih-m.ru',
    nil, nil, SW_SHOWNORMAL);
end;

end.
