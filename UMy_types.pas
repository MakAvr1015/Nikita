unit UMy_types;

interface

uses
  db, SYSUtils, Forms, Windows, ComObj, Controls, uDocumentsClasses
   ,DrvFRLib_TLB, Vcl.ActnList, Vcl.ExtCtrls
    ;

type
  ///
  ///  <summary>
  ///  Планировщик
  ///  </summary>
  TPlaner = class(TObject){ TODO :
Реализовать класс планировщика
1. Загрузка
2. Сохранение
3. Выполнение }
      PlanTimer : TTimer;
    constructor Create;
    private
      procedure LoadPlan;
      procedure SavePlan;
  end;

type
  TCalcFieldsForImport = procedure(Afield: TField; AValue: string) of object;

type
  /// <summary>
  /// Класс работы с ККМ
  /// </summary>

  Tkkm = class(TObject)
    kkmType: integer;
    constructor Create(p_kkm_type: integer);
  private
    procedure GetKKMType(const Value: integer);
    function SetKKmType: integer;
    procedure printZReportAtol;
    procedure printZReportShtrih;
    procedure printXReportShtrih;
    procedure printXReportAtol;
    function printSaleAtol(p_list: TDocPositionList): string;
    function printSaleShtrih(p_list: TDocPositionList): string;
    function printBackAtol(p_list: TDocPositionList): string;
    function printBackShtrih(p_list: TDocPositionList): string;

     function InitShtrih : TDrvFR;
  published
    property kkm_type: integer read SetKKmType write GetKKMType;
  public
    kkm_number: string;
    procedure PropShtrih;
    procedure PrintZReport;
    procedure PrintXReport;
    procedure ShowProperty;
    function PrintSale(p_list: TDocPositionList): string;
    function PrintBack(p_list: TDocPositionList): string;
  end;

implementation

uses
  upublic, udm, uDlgShtrihProperty;
{ Tkkm }

constructor Tkkm.Create(p_kkm_type: integer);

begin
  kkm_type := p_kkm_type;
end;

procedure Tkkm.GetKKMType(const Value: integer);
begin
  kkmType := Value;
end;

 function Tkkm.InitShtrih: TDrvFR;
  var
  Drv: TDrvFR;
  begin
  Drv := TDrvFR.Create(nil);
  //  try
  //      drv.LoadParams;
  //    drv.LDIndex:=0;
  //    drv.EnumLD;
  //    LogMsg(IntToStr(drv.LDNumber));
  //    LogMsg(IntToStr(drv.LDIndex));
  //    drv.LDNumber:=2;
  //    drv.GetParamLD;
  //    LogMsg(drv.LDIPAddress);
  with TDlgShtrihProperty.create(Application.MainForm) do
  begin
  Drv.ConnectionType := 6; // подключение через TCP socket     Drv.ProtocolType := 0; // Стандартный протокол
  Drv.IPAddress := EdIP.text;//'192.168.137.27' // IP адрес ККТ
  Drv.UseIPAddress := True; // Используем свойство IPAddress                               // для указания адреса ККТ                               // (в противном случае будет                               // использоваться свойство                               // ComputerName)
  Drv.TCPPort := StrToInt(EdPort.text);//7778; // TCP Порт ККТ
  Drv.Timeout := StrToInt(EdTimeout.text);//5000; // Таймаут в мс
  Drv.Password := StrToInt(EdPassword.text);//30;  // Пароль системного администратора
  free;
  if Drv.Connect <> 0 then // Проверяем подключение
  raise Exception.Create(Drv.ResultCodeDescription);

  end;
  result:=drv;
  end;

function Tkkm.PrintBack(p_list: TDocPositionList): string;
var
  v_sale: string;
begin
  case kkmType of
    1:
      v_sale := printBackAtol(p_list);
    2:
      v_sale := printBackShtrih(p_list);
  end;
  result := v_sale;
end;

function Tkkm.printBackAtol(p_list: TDocPositionList): string;
begin

end;

function Tkkm.printBackShtrih(p_list: TDocPositionList): string;
begin

end;

function Tkkm.PrintSale(p_list: TDocPositionList): string;
var
  v_sale: string;
begin
  case kkmType of
    1:
      v_sale := printSaleAtol(p_list);
    2:
      v_sale := printSaleShtrih(p_list);
  end;
  result := v_sale;
end;

function Tkkm.printSaleAtol(p_list: TDocPositionList): string;
var
  i, j, errCode: integer;
  str: string;
  docNum: string;
  ECR: OleVariant;
  total_sum: currency;
begin
  for j := 0 to CheckCount - 1 do
  begin
    try
      ECR := CreateOleObject('AddIn.FprnM45');
      LogMsg('Печать чека: создаем объект');
      ECR.ApplicationHandle := Application.Handle;
      // необходимо для корректного отображения окон драйвера в контексте приложения
    except
      Application.MessageBox('Не удалось создать объект общего драйвера ККМ!',
        PChar(Application.Title), MB_ICONERROR + MB_OK);
      exit;
    end;
    ECR.DeviceEnabled := true;
    if ECR.ResultCode <> 0 then
      exit;

    // получаем состояние ККМ
    if ECR.GetStatus <> 0 then
      exit;
    if ECR.Fiscal then
    begin
      if Application.MessageBox
        ('ККМ фискализирована! Вы действительно хотите продолжить?',
        PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
        exit;
      ECR.RegisterNumber := '27';
      ECR.GetRegister;
      kkm_number := ECR.MachineNumber;
      str := 'Номер ФИСК ККМ: ' + kkm_number;
      LogMsg(str);

    end
    else
    begin
      ECR.RegisterNumber := '22';
      ECR.GetRegister;
      kkm_number := ECR.SerialNumber;
      str := 'Номер ККМ: ' + kkm_number;
      LogMsg(str);
    end;
    if ECR.CheckState <> 0 then
    begin
      LogMsg('Печать чека: Чек не закрыт');
      if ECR.CancelCheck <> 0 then
        exit;
      LogMsg('Печать чека: Отменен чек');
    end;

    if (ECR.SessionOpened <> 0) then
    begin
      // устанавливаем пароль системного администратора ККМ
      ECR.Password := '30';
      // входим в режим отчетов с гашением
      ECR.Mode := 3;
      if (ECR.SetMode = 0) then
      begin // снимаем отчет
        // ECR.ReportType := 0;
        // if ECR.Report <> 0 then
        // ECR.DeviceEnabled := 0;
      end;
    end
    else
    begin
      ECR.OpenSession;
      ECR.DeviceEnabled := 1;
    end;

    ECR.Password := '1';
    // входим в режим регистрации
    ECR.ResetMode;

    ECR.Mode := 1;

    errCode := ECR.SetMode;
    case errCode of
      - 3822:
        begin
          LogMsg('Печать чека: смена не закрыта');
          ECR.Password := '30';
          // входим в режим отчетов с гашением
          ECR.Mode := 3;
          if (ECR.SetMode = 0) then
          begin
            ECR.ReportType := 1;
            LogMsg('Печать чека: закрываем смену');
            ECR.Report;
          end;
          // ECR.OpenSession;
          // ECR.DeviceEnabled := 1;
        end;
      -11:
        begin
          // ECR.OpenSession;
          LogMsg('Печать чека: Устройство не подключено, подключаем');
          ECR.DeviceEnabled := 1;
        end;
    end;
    ECR.RegisterNumber := '19';
    ECR.GetRegister;
    docNum := ECR.CheckNumber;
    str := 'Номер чека ККМ: ' + docNum;
    LogMsg(str);

    docNum := ECR.DocNumber;
    str := 'Номер документа ККМ: ' + docNum;
    LogMsg(str);
    ECR.Password := '1';
    // входим в режим регистрации
    ECR.ResetMode;

    ECR.Mode := 1;

    errCode := ECR.SetMode;
    if errCode <> 0 then
    begin
      Application.MessageBox('Ошибка регистрации ', PChar(Application.Title),
        MB_ICONERROR + MB_OK);
      exit;
    end;
    total_sum := 0;
    for i := 0 to length(p_list) - 1 do
    begin
      ECR.Name := p_list[i].f_good.GetName;
      ECR.Price := p_list[i].f_Price;
      ECR.TextWrap := 1;
      ECR.Quantity := p_list[i].f_quant;
      ECR.Department := 2;
      ECR.DiscountType := 0;
      ECR.Discountvalue := p_list[i].f_discount_sum;
      ECR.DiscountTypeNumber := 1;

      errCode := ECR.Registration;
      if errCode <> 0 then
      begin
        str := 'ошибка регистрации товарной позиции ' + IntToStr(errCode);
        LogMsg(str);
        exit;
      end;
      total_sum := total_sum + p_list[i].f_Price * p_list[i].f_quant -
        p_list[i].f_discount_sum;
    end;
    ECR.Summ := total_sum;
    ECR.TypeClose := 0;
    LogMsg('Печать чека: Закрываем чек с оплатой');
    errCode := ECR.Delivery;
    if errCode <> 0 then
    begin
      str := IntToStr(errCode);
      LogMsg(str);
      exit;
    end;
    LogMsg('Печать чека: Чек закрыт');

    LogMsg('Печать чека: Сбрасываем моду');
    ECR.ResetMode;
    LogMsg('Печать чека: Мода сброшена. Чек отпечатан');
  end;
  result := docNum;

end;

function Tkkm.printSaleShtrih(p_list: TDocPositionList): string;
var
   Drv: TDrvFR;
  j, i: integer;
  total_sum: currency;
  check_num: string;
begin
   try
    drv:=InitShtrih;

    drv.GetECRStatus;
    case drv.ECRMode of
    3: //открытая смена предыдущего дня
    drv.PrintReportWithCleaning;
    8: //не закрытый документ
    drv.CancelCheck;
    end;


    Drv.CheckType := 1;
    Drv.Department:=1;
    j:=length(p_list);
    total_sum:=0;
    for I := 0 to j - 1 do
    begin
    drv.Quantity:=p_list[i].f_quant;
    drv.StringForPrinting:=p_list[i].f_good.Getname();
    drv.Summ1:=p_list[i].f_summ-p_list[i].f_discount_sum;
    drv.Price:=drv.Summ1/drv.Quantity;
    drv.Summ2:=0;
    drv.Summ3:=0;
    drv.Summ4:=0;
    drv.Tax1:=0;
    drv.Tax2:=0;
    drv.Tax3:=0;
    drv.Tax4:=0;
    LogMsg('Фиксация продажи: '+drv.StringForPrinting);
    total_sum:=total_sum+p_list[i].f_summ;
    if Drv.Sale <> 0 then
    raise Exception.Create(Drv.ResultCodeDescription);
    end;
    Drv.Summ1 := total_sum;
    drv.Tax1:=0;
    drv.Tax2:=0;
    Drv.Summ2 := 0;
    Drv.Summ3 := 0;
    Drv.Summ4 := 0;
    Drv.StringForPrinting := '';
    if Drv.CloseCheck<> 0 then
    raise Exception.Create(Drv.ResultCodeDescription);
    //    drv.Password:=1;
    drv.GetECRStatus;
    i:=0;
    while drv.ECRMode<>8 do
    begin
    sleep(1000);
    drv.GetECRStatus;
    inc(i);
    if i>10 then
    break;
    end;
    drv.RegisterNumber:=149;
    if drv.GetOperationReg<> 0 then
    raise Exception.Create(Drv.ResultCodeDescription);
    check_num:=IntToStr(drv.ContentsOfOperationRegister);
    LogMsg('Номер чека из регистра: '+check_num);
    finally
    drv.free;
    end;
end;

procedure Tkkm.PrintXReport;
begin
  case kkmType of
    1:
      printXReportAtol;
    2:
      printXReportShtrih;
  end;
end;

procedure Tkkm.printZReportAtol;
var
  ECR: OleVariant;
  errCode: integer;
  str: string;
begin
  ECR := CreateOleObject('AddIn.FprnM45');
  ECR.DeviceEnabled := true;
  if ECR.ResultCode <> 0 then
  begin
    errCode := ECR.SetMode;
    if errCode <> 0 then
    begin
      str := IntToStr(errCode);
      LogMsg(str);
    end;
    exit;
  end;

  // получаем состояние ККМ
  if ECR.GetStatus <> 0 then
    exit;
  if ECR.Fiscal then
    if Application.MessageBox
      ('ККМ фискализирована! Вы действительно хотите продолжить?',
      PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
      exit;
  if ECR.CheckState <> 0 then
  begin
    LogMsg('Печать чека: Чек не закрыт');
    if ECR.CancelCheck <> 0 then
      exit;
    LogMsg('Печать чека: Отменен чек');
  end;
  if (ECR.SessionOpened <> 0) then
  begin
    // устанавливаем пароль системного администратора ККМ
    ECR.Password := '30';
    // входим в режим отчетов с гашением
    ECR.Mode := 3;
    if (ECR.SetMode = 0) then
    begin // снимаем отчет
      // ECR.ReportType := 0;
      // if ECR.Report <> 0 then
      // ECR.DeviceEnabled := 0;
    end;
  end
  else
  begin
    ECR.OpenSession;
    ECR.DeviceEnabled := 1;
  end;
  ECR.Password := '29';
  // входим в режим регистрации
  ECR.Mode := 2;
  ECR.SetMode;
  ECR.ReportType := 2;

  LogMsg('Печать отчета');
  ECR.Report;
  errCode := ECR.SetMode;
  if errCode <> 0 then
  begin
    str := IntToStr(errCode);
    LogMsg(str);
  end;
  ECR.ResetMode;
end;

procedure Tkkm.printXReportShtrih;
var
   Drv: TDrvFR;
  ActiveLd: integer;
begin
   try
    drv:=InitShtrih;
    drv.Beep;
    drv.PrintReportWithCleaning;
    finally
    Drv.Free; // Освобождаем объект драйвера   end;end;
    end;

end;

procedure Tkkm.PrintZReport;
begin
  case kkmType of
    1:
      printZReportAtol;
    2:
      printZReportShtrih;
  end;
end;

procedure Tkkm.printXReportAtol;
var
  ECR: OleVariant;
  errCode: integer;
  str: string;
begin
  ECR := CreateOleObject('AddIn.FprnM45');
  ECR.DeviceEnabled := true;
  if ECR.ResultCode <> 0 then
  begin
    errCode := ECR.SetMode;
    if errCode <> 0 then
    begin
      str := IntToStr(errCode);
      LogMsg(str);
    end;
    exit;
  end;

  // получаем состояние ККМ
  if ECR.GetStatus <> 0 then
    exit;
  if ECR.Fiscal then
    if Application.MessageBox
      ('ККМ фискализирована! Вы действительно хотите продолжить?',
      PChar(Application.Title), MB_ICONEXCLAMATION + MB_YESNO) = idNo then
      exit;
  if ECR.CheckState <> 0 then
  begin
    LogMsg('Печать чека: Чек не закрыт');
    if ECR.CancelCheck <> 0 then
      exit;
    LogMsg('Печать чека: Отменен чек');
  end;
  if (ECR.SessionOpened <> 0) then
  begin
    // устанавливаем пароль системного администратора ККМ
    ECR.Password := '30';
    // входим в режим отчетов с гашением
    ECR.Mode := 3;
    if (ECR.SetMode = 0) then
    begin // снимаем отчет
      // ECR.ReportType := 0;
      // if ECR.Report <> 0 then
      // ECR.DeviceEnabled := 0;
    end;
  end
  else
  begin
    ECR.OpenSession;
    ECR.DeviceEnabled := 1;
  end;
  ECR.Password := '30';
  // входим в режим отчетов с гашением
  ECR.Mode := 3;
  ECR.ReportType := 1;
  ECR.SetMode;
  LogMsg('Печать отчета');
  ECR.Report;
  errCode := ECR.SetMode;
  if errCode <> 0 then
  begin
    str := IntToStr(errCode);
    LogMsg(str);
  end;
  ECR.ResetMode;
end;

procedure Tkkm.printZReportShtrih;
var
   Drv: TDrvFR;
  ActiveLd: integer;
begin
   try
    drv:=InitShtrih;
    drv.Beep;
    drv.PrintReportWithoutCleaning;
    finally
    Drv.Free; // Освобождаем объект драйвера   end;end;
    end;

end;

procedure Tkkm.PropShtrih;
begin
  with TDlgShtrihProperty.Create(Application.MainForm) do
  begin
    ShowModal;
  end;
end;

function Tkkm.SetKKmType: integer;
begin
  result := kkmType;
end;

procedure Tkkm.ShowProperty;
begin

end;


{ TPlaner }

constructor TPlaner.Create;
begin

end;

procedure TPlaner.LoadPlan;
begin

end;

procedure TPlaner.SavePlan;
begin

end;

end.
