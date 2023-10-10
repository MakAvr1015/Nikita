unit uDlgKKMReport;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComObj;

type
  TDlgKKMReport = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Radio_rep1: TRadioButton;
    Radio_rep2: TRadioButton;
    Radio_rep3: TRadioButton;
    RadioButton4: TRadioButton;
    Button1: TButton;
    procedure OKBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure PrintKKMSHtr();
  public
    { Public declarations }
  end;

var
  DlgKKMReport: TDlgKKMReport;

implementation

{$R *.dfm}
uses
  uDm{,DrvFRLib_TLB},upublic;


procedure TDlgKKMReport.Button1Click(Sender: TObject);
begin
  KKM.PropShtrih;
end;

procedure TDlgKKMReport.OKBtnClick(Sender: TObject);
var
  ECR: OleVariant;
  errCode : integer;
  str : string;
begin
  if Radio_rep1.Checked then
  begin
    kkm.PrintXReport;
  end;
  if Radio_rep2.Checked then
  begin
    kkm.PrintZReport;
  end;
{  ECR := CreateOleObject('AddIn.FprnM45');
  ECR.DeviceEnabled := true;
  if ECR.ResultCode <> 0 then
  begin
    errCode:=ECR.SetMode;
    if errCode<>0 then
    begin
      str:=IntTostr(errCode);
      LogMsg(str);
    end;
    Exit;
  end;

// �������� ��������� ���
  if ECR.GetStatus <> 0 then
    Exit;
  if ECR.Fiscal then
    if Application.MessageBox('��� ���������������! �� ������������� ������ ����������?', PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
      Exit;
  if ECR.CheckState <> 0 then
  begin
    LogMsg('������ ����: ��� �� ������');
    if ECR.CancelCheck <> 0 then Exit;
      LogMsg('������ ����: ������� ���');
  end;
  if (ECR.SessionOpened <> 0) then
  begin
    // ������������� ������ ���������� �������������� ���
    ECR.Password := '30';
    // ������ � ����� ������� � ��������
    ECR.Mode := 3;
    if (ECR.SetMode = 0) then
    begin // ������� �����
//      ECR.ReportType := 0;
//      if ECR.Report <> 0 then
//      ECR.DeviceEnabled := 0;
    end;
  end
  else
  begin
    ECR.OpenSession;
    ECR.DeviceEnabled := 1;
  end;
  if Radio_rep1.Checked then
  begin
    ECR.Password := '30';
  // ������ � ����� ������� � ��������
    ECR.Mode := 3;
    ECR.ReportType := 1;
    ECR.SetMode;
  end;
  if Radio_rep3.Checked then
  begin
    ECR.Password := '29';  
    ECR.Mode := 2;
    ECR.SetMode;
    ECR.ReportType := 34;
    ECR.DocNumber := 17;
  end;
  if Radio_rep2.Checked then
  begin
    ECR.Password := '29';
  // ������ � ����� �����������
    ECR.Mode := 2;
    ECR.SetMode;
    ECR.ReportType := 2;
  end;
  LogMsg('������ ������');
  ECR.Report;
  errCode:=ECR.SetMode;
  if errCode<>0 then
  begin
    str:=IntTostr(errCode);
    LogMsg(str);
  end;
  ECR.ResetMode;   }
end;

procedure TDlgKKMReport.PrintKKMSHtr;
{var
  Drv: TDrvFR;}
begin
{  Drv := TDrvFR.Create(nil);
  try
    Drv.ConnectionType := 6; // ����������� ����� TCP socket     Drv.ProtocolType := 0; // ����������� ��������
    Drv.IPAddress := '192.168.0.2'; // IP ����� ���     Drv.UseIPAddress := True; // ���������� �������� IPAddress                               // ��� �������� ������ ���                               // (� ��������� ������ �����                               // �������������� ��������                               // ComputerName)     Drv.TCPPort := 7778; // TCP ���� ���     Drv.Timeout := 5000; // ������� � ��     Drv.Password := 30;  // ������ ���������� ��������������
    if Drv.Connect <> 0 then // ��������� �����������
      raise Exception.Create(Drv.ResultCodeDescription);
  finally
    Drv.Free; // ����������� ������ ��������   end;end;
  end;}
end;
end.
