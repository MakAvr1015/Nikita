unit DriverTypes;

interface

uses
  // VCL
  Windows, SysUtils,
  // This
  GlobalConst;

const
  /////////////////////////////////////////////////////////////////////////////
  // ModelID constants

  MODEL_SHTRIH_MINI_FRK_KAZ = 12;


resourcestring
  SDriverName = 'Драйвер ' + DeviceName;
  SServerVersionUnknown = 'недоступна';
  SDefaultDeviceName = 'Устройство №';


type
  { TECRDateTime }

  TECRDateTime = record
    Day: Byte;
    Month: Byte;
    Year: Byte;
    Hour: Byte;
    Min: Byte;
    Sec: Byte;
  end;

  { TECRDate }

  TECRDate = record
    Day: Byte;
    Month: Byte;
    Year: Byte;
  end;

  { TECRTime }

  TECRTime = record
    Hour: Byte;
    Min: Byte;
    Sec: Byte;
  end;

  { TLicInfoRec }

  TLicInfoRec = record
    ResultCode: Integer;        // Результат
    ResultDesc: string;         // Описание результата
    CashControl: Boolean;       // Разрешено использование CashControl
    RemoteLaunch: Boolean;      // Разрешен удаленный запуск
    KeyCount: Integer;          // Количество ключей
    LicCount: Integer;          // Количество лицензий
  end;

  { TDeviceModel }

  TDeviceModel = (
    dmUnknown, 					  // Неизвестная модель
    dmShtrihFRF3,				  // ШТРИХ-ФР-Ф (версия 3)
    dmShtrihFRF4,				  // ШТРИХ-ФР-Ф (версия 4)
    dmShtrihFRFKaz,   	  // ШТРИХ-ФР-Ф (Казахстан)
    dmElvesMiniFRF,			  // ЭЛВЕС-МИНИ-ФР-Ф
    dmFelixRF, 					  // ФЕЛИКС-Р Ф
    dmShtrihFRK,				  // ШТРИХ-ФР-К
    dmShtrih950K,				  // ШТРИХ-950К версия 1
    dmShtrih950Kv2,			  // Штрих950K версия 2
    dmElvesFRK, 				  // ЭЛВЕС-ФР-К
    dmShtrihMiniFRK, 		  // ШТРИХ-МИНИ-ФР-К
    dmShtrihMiniFRK2, 	  // ШТРИХ-МИНИ-ФР-К 2
    dmShtrihFRFBel, 		  // ШТРИХ-ФР-Ф (Белоруссия)
    dmShtrihComboFRKv1,   // ШТРИХ-КОМБО-ФР-К версии 1
    dmShtrihComboFRKv2,   // ШТРИХ-КОМБО-ФР-К версии 2
    dmShtrihPOSF,				  // Фискальный блок Штрих-POS-Ф
    dmShtrih500,					// ШТРИХ-500
    dmShtrihMFRK,         // ШТРИХ-М-ФР-К
    dmShtrihLightFRK ,    // ШТРИХ-LIGHT-ФР-К
    dmYARUS01K,           // ЯРУС-01К
    dmYARUS02K            // ЯРУС-02К
    );

  { TInt64Rec }

  TInt64Rec = record
    Value: Int64;
    IsEmpty: Boolean;
  end;

  { TFRFieldRec }

  TFRFieldRec = record
    FieldSize: Byte;
    FieldName: string;
    IsString: Boolean;
    StrValue: string;
    IntValue: Integer;
    MinValue: Integer;
    MaxValue: Integer;
  end;

  TBanknotes = array[0..23] of Integer;

const
  // имя файла с настройками драйвера
  DriverIniFileName = 'DrvFRIni.xml';

  // SaveSettingsType
  stRegLocalMachine = 0;
  stRegCurrentUser = 1;

  // ConnectionType
  CT_LOCAL              =  0;
  CT_TCP                =  1;
  CT_DCOM               =  2;
  CT_ESCAPE             =  3;
  CT_PACKETDRV          =  4;
  CT_EMULATOR           =  5;

  REGSTR_KEY_DRIVER      = '\SOFTWARE\ShtrihM\DrvFR';
  REGSTR_KEY_PARAMS      = REGSTR_KEY_DRIVER + '\Param';
  REGSTR_KEY_TABLEDEFS   = REGSTR_KEY_DRIVER + '\TableDefs';
  REGSTR_KEY_DEVICES     = REGSTR_KEY_DRIVER + '\Logical Devices';
  REGSTR_KEY_COMMANDS    = REGSTR_KEY_DRIVER + '\Timeouts';
  REGSTR_KEY_PARAMS1C    = REGSTR_KEY_DRIVER + '\Params1C';
  REGSTR_KEY_TABLEPARAMS = REGSTR_KEY_DRIVER + '\TableParams';
  // параметры устройства
  REGSTR_VAL_TIMEOUT            = 'Timeout';
  REGSTR_VAL_CONNECTIONTIMEOUT  = 'ConnectionTimeout';
  REGSTR_VAL_BAUDRATE           = 'BaudRate';
  REGSTR_VAL_COMNUMBER          = 'ComNumber';
  REGSTR_VAL_CURRENTDEVICE      = 'CurrentDevice';
  REGSTR_VAL_COMPUTERNAME       = 'ComputerName';
  REGSTR_VAL_TCPPORT            = 'TCPPort';
  REGSTR_VAL_IPADDRESS          = 'IPAddress';
  REGSTR_VAL_USEIPADDRESS       = 'UseIPAddress';
  REGSTR_VAL_CONNECTIONTYPE     = 'ConnectionType';
  REGSTR_VAL_ESCAPEIP           = 'EscapeIP';
  REGSTR_VAL_ESCAPEPORT         = 'EscapePort';
  REGSTR_VAL_ESCAPETIMEOUT      = 'EscapeTimeout';

  REGSTR_VAL_RECOVERERROR165    = 'RecoverError165';
  REGSTR_VAL_SYSADMINPASSWORD   = 'SysAdminPassword';

  //License Trial TimeStamp
  REGSTR_VAL_TRIALSTAMP       = 'LCTStamp';

  // описание таблицы
  REGSTR_VAL_ROWCOUNT           = 'RowCount';
  REGSTR_VAL_TABLENAME          = 'TableName';
  REGSTR_VAL_FIELDCOUNT         = 'FieldCount';
  REGSTR_VAL_TABLENUMBER        = 'TableNumber';
  // описание полей таблицы
  REGSTR_VAL_FIELDNAME          = 'Name';
  REGSTR_VAL_FIELDSIZE          = 'Size';
  REGSTR_VAL_FIELDTYPE          = 'Type';
  REGSTR_VAL_FIELDNUMBER        = 'Number';
  REGSTR_VAL_FIELDMINVALUE      = 'MinValue';
  REGSTR_VAL_FIELDMAXVALUE      = 'MaxValue';
  // свойства логиского устройства
  REGSTR_VAL_DEVICENAME         = 'Name';
  REGSTR_VAL_DEVICENUMBER       = 'Number';
  REGSTR_VAL_DEVICETIMEOUT      = 'Timeout';
  REGSTR_VAL_DEVICEBAUDRATE     = 'Baudrate';
  REGSTR_VAL_DEVICECOMNUMBER    = 'ComNumber';
  REGSTR_VAL_LOCKTIMEOUT        = 'LockTimeout';
  // свойства команды
  REGSTR_VAL_COMMAND_CODE       = 'Code';
  REGSTR_VAL_COMMAND_NAME       = 'Name';
  REGSTR_VAL_COMMAND_TIMEOUT    = 'Timeout';
  REGSTR_VAL_COMMAND_DEFTIMEOUT = 'DefTimeout';
  // Положение и размер окна таблицы
  REGSTR_VAL_TABLE_LEFT         = 'Left';
  REGSTR_VAL_TABLE_TOP          = 'Top';
  REGSTR_VAL_TABLE_WIDTH        = 'Width';
  REGSTR_VAL_TABLE_HEIGHT       = 'Heigth';

  DefTimeout          = 100;              // Таймаут по умолчанию
  DefConnectionTimeout = 0;               // Таймаут подключения по умолчанию
  DefBaudRate         = 1;                // Скорость по умолчанию 4800
  DefComNumber        = 1;                // Номер COM порта
  DefTCPPort          = 211;              // Порт сервера печати по умолчанию
  DefIPAddress        = '127.0.0.1';      // IP адрес сервера печати по умолчанию
  DefConnectionType   = CT_LOCAL;         // Тип подключения по умолчанию
  DefEscapeIP         = '127.0.0.1';      // IP адрес Escape по умолчанию
  DefEscapePort       = 1000;             // UDP порт Escape по умолчанию
  DefEscapeTimeout    = 1000;             // Таймаут Escape по умолчанию, мс
  DefSysAdminPassword = 30;
  QuantityFactor: Integer = 1000;
  BoolToInt: array [Boolean] of Byte = (0,1);
  BoolToStr: array [Boolean] of string = ('0', '1');

  MODE_CHECK_OPENED     = 8;

  //
  MaxRepeatCount = 3;

  // PrintBarcodeType
  pbNone = 0;
  pbDown = 1;
  pbUp = 2;
  pbUpDown = 3;
  DefMaxAnsCount = 5;
  DefCommandRetryCount = 1;

  DefLogMaxFileSize = 10;
  DefLogMaxFileCount = 10;
  DefSaveSettingsType = stRegLocalMachine;


function GetDllFileName: string;
function ECRDateTimeToDateTime(const Value: TECRDateTime): TDateTime;

function GetDefaultLogFileName: string;

function SaveSettingsTypeToRegRootKey(SaveSettingsType: Integer): HKEY;

implementation

function SaveSettingsTypeToRegRootKey(SaveSettingsType: Integer): HKEY;
begin
  if SaveSettingsType = stRegLocalMachine then
    Result := HKEY_LOCAL_MACHINE
  else
    Result := HKEY_CURRENT_USER;
end;

function ECRDateTimeToDateTime(const Value: TECRDateTime): TDateTime;
begin
  try
    Result := EncodeDate(Value.Year + 2000, Value.Month, Value.Day) +
      EncodeTime(Value.Hour, Value.Min, Value.Sec, 0);
  except
    Result := 0;
  end;
end;

function GetDllFileName: string;
var
  Buffer: array[0..261] of Char;
begin
  SetString(Result, Buffer, Windows.GetModuleFileName(HInstance,
    Buffer, SizeOf(Buffer)));
end;

function GetDefaultLogFileName: string;
var
  DllFileName: string;
begin
  DllFileName := GetDllFileName;
  Result :=
    IncludeTrailingPathDelimiter(ExtractFilePath(DllFileName)) + 'Logs\' +
    ChangeFileExt(ExtractFileName(DllFileName), '.log');
end;


end.
