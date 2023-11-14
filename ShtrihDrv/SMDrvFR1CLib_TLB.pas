unit SMDrvFR1CLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 29.10.2013 11:41:04 from Type Library described below.

// ************************************************************************  //
// Type Lib: I:\Projects\DrvFRTrunk\Source\SMDrvFR1C\smDrvFR1CLib.tlb (1)
// LIBID: {F71B4DED-B3CC-4A90-9EB0-5362648DDDE9}
// LCID: 0
// Helpfile: 
// HelpString: SMDrvFR1C Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SMDrvFR1CLibMajorVersion = 1;
  SMDrvFR1CLibMinorVersion = 0;

  LIBID_SMDrvFR1CLib: TGUID = '{F71B4DED-B3CC-4A90-9EB0-5362648DDDE9}';

  IID_IsmDrvFR1C: TGUID = '{FC17F072-CF8C-47EA-8C7B-8572DD59B93A}';
  CLASS_SMDrvFR1C: TGUID = '{10C59DAA-A60E-4AE1-B30F-A1B94640117F}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IsmDrvFR1C = interface;
  IsmDrvFR1CDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SMDrvFR1C = IsmDrvFR1C;


// *********************************************************************//
// Interface: IsmDrvFR1C
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC17F072-CF8C-47EA-8C7B-8572DD59B93A}
// *********************************************************************//
  IsmDrvFR1C = interface(IDispatch)
    ['{FC17F072-CF8C-47EA-8C7B-8572DD59B93A}']
    function GetVersion: WideString; safecall;
    function GetDescription(out Name: WideString; out Description: WideString; 
                            out EquipmentType: WideString; out InterfaceRevision: Integer; 
                            out IntegrationLibrary: WordBool; out MainDriverInstalled: WordBool; 
                            out GetDownloadURL: WideString): WordBool; safecall;
    function GetLastError(out ErrorDescription: WideString): Integer; safecall;
    function GetParameters(out TableParameters: WideString): WordBool; safecall;
    function SetParameter(const Name: WideString; Value: OleVariant): WordBool; safecall;
    function Open(out DeviceID: WideString): WordBool; safecall;
    function Close(const DeviceID: WideString): WordBool; safecall;
    function DeviceTest(out Description: WideString; out DemoModeIsActivated: WideString): WordBool; safecall;
    function GetAdditionalActions(out TableActions: WideString): WordBool; safecall;
    function DoAdditionalAction(const ActionName: WideString): WordBool; safecall;
    function OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                       IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                       out CheckNumber: Integer; out SessionNumber: Integer): WordBool; safecall;
    function PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                               Quantity: Double; Price: Double; Amount: Double; 
                               Department: Integer; Tax: Double): WordBool; safecall;
    function PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool; safecall;
    function PrintBarCode(const DeviceID: WideString; const BarcodeType: WideString; 
                          const BarCode: WideString): WordBool; safecall;
    function CloseCheck(const DeviceID: WideString; Cash: Double; PayByCard: Double; 
                        PayByCredit: Double; PayByCertificate: Double): WordBool; safecall;
    function CancelCheck(const DeviceID: WideString): WordBool; safecall;
    function CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool; safecall;
    function PrintXReport(const DeviceID: WideString): WordBool; safecall;
    function PrintZReport(const DeviceID: WideString): WordBool; safecall;
    function OpenCashDrawer(const DeviceID: WideString): WordBool; safecall;
    function GetLineLength(const DeviceID: WideString; out LineLength: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IsmDrvFR1CDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FC17F072-CF8C-47EA-8C7B-8572DD59B93A}
// *********************************************************************//
  IsmDrvFR1CDisp = dispinterface
    ['{FC17F072-CF8C-47EA-8C7B-8572DD59B93A}']
    function GetVersion: WideString; dispid 201;
    function GetDescription(out Name: WideString; out Description: WideString; 
                            out EquipmentType: WideString; out InterfaceRevision: Integer; 
                            out IntegrationLibrary: WordBool; out MainDriverInstalled: WordBool; 
                            out GetDownloadURL: WideString): WordBool; dispid 202;
    function GetLastError(out ErrorDescription: WideString): Integer; dispid 203;
    function GetParameters(out TableParameters: WideString): WordBool; dispid 204;
    function SetParameter(const Name: WideString; Value: OleVariant): WordBool; dispid 205;
    function Open(out DeviceID: WideString): WordBool; dispid 206;
    function Close(const DeviceID: WideString): WordBool; dispid 207;
    function DeviceTest(out Description: WideString; out DemoModeIsActivated: WideString): WordBool; dispid 208;
    function GetAdditionalActions(out TableActions: WideString): WordBool; dispid 209;
    function DoAdditionalAction(const ActionName: WideString): WordBool; dispid 210;
    function OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                       IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                       out CheckNumber: Integer; out SessionNumber: Integer): WordBool; dispid 211;
    function PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                               Quantity: Double; Price: Double; Amount: Double; 
                               Department: Integer; Tax: Double): WordBool; dispid 212;
    function PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool; dispid 213;
    function PrintBarCode(const DeviceID: WideString; const BarcodeType: WideString; 
                          const BarCode: WideString): WordBool; dispid 214;
    function CloseCheck(const DeviceID: WideString; Cash: Double; PayByCard: Double; 
                        PayByCredit: Double; PayByCertificate: Double): WordBool; dispid 215;
    function CancelCheck(const DeviceID: WideString): WordBool; dispid 216;
    function CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool; dispid 217;
    function PrintXReport(const DeviceID: WideString): WordBool; dispid 218;
    function PrintZReport(const DeviceID: WideString): WordBool; dispid 219;
    function OpenCashDrawer(const DeviceID: WideString): WordBool; dispid 220;
    function GetLineLength(const DeviceID: WideString; out LineLength: Integer): WordBool; dispid 221;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TSMDrvFR1C
// Help String      : smDrvFR1C Object
// Default Interface: IsmDrvFR1C
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TSMDrvFR1C = class(TOleControl)
  private
    FIntf: IsmDrvFR1C;
    function  GetControlInterface: IsmDrvFR1C;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function GetVersion: WideString;
    function GetDescription(out Name: WideString; out Description: WideString; 
                            out EquipmentType: WideString; out InterfaceRevision: Integer; 
                            out IntegrationLibrary: WordBool; out MainDriverInstalled: WordBool; 
                            out GetDownloadURL: WideString): WordBool;
    function GetLastError(out ErrorDescription: WideString): Integer;
    function GetParameters(out TableParameters: WideString): WordBool;
    function SetParameter(const Name: WideString; Value: OleVariant): WordBool;
    function Open(out DeviceID: WideString): WordBool;
    function Close(const DeviceID: WideString): WordBool;
    function DeviceTest(out Description: WideString; out DemoModeIsActivated: WideString): WordBool;
    function GetAdditionalActions(out TableActions: WideString): WordBool;
    function DoAdditionalAction(const ActionName: WideString): WordBool;
    function OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                       IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                       out CheckNumber: Integer; out SessionNumber: Integer): WordBool;
    function PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                               Quantity: Double; Price: Double; Amount: Double; 
                               Department: Integer; Tax: Double): WordBool;
    function PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool;
    function PrintBarCode(const DeviceID: WideString; const BarcodeType: WideString; 
                          const BarCode: WideString): WordBool;
    function CloseCheck(const DeviceID: WideString; Cash: Double; PayByCard: Double; 
                        PayByCredit: Double; PayByCertificate: Double): WordBool;
    function CancelCheck(const DeviceID: WideString): WordBool;
    function CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool;
    function PrintXReport(const DeviceID: WideString): WordBool;
    function PrintZReport(const DeviceID: WideString): WordBool;
    function OpenCashDrawer(const DeviceID: WideString): WordBool;
    function GetLineLength(const DeviceID: WideString; out LineLength: Integer): WordBool;
    property  ControlInterface: IsmDrvFR1C read GetControlInterface;
    property  DefaultInterface: IsmDrvFR1C read GetControlInterface;
  published
    property Anchors;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TSMDrvFR1C.InitControlData;
const
  CControlData: TControlData2 = (
    ClassID: '{10C59DAA-A60E-4AE1-B30F-A1B94640117F}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: nil (*HR:$00000000*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TSMDrvFR1C.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IsmDrvFR1C;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TSMDrvFR1C.GetControlInterface: IsmDrvFR1C;
begin
  CreateControl;
  Result := FIntf;
end;

function TSMDrvFR1C.GetVersion: WideString;
begin
  Result := DefaultInterface.GetVersion;
end;

function TSMDrvFR1C.GetDescription(out Name: WideString; out Description: WideString; 
                                   out EquipmentType: WideString; out InterfaceRevision: Integer; 
                                   out IntegrationLibrary: WordBool; 
                                   out MainDriverInstalled: WordBool; out GetDownloadURL: WideString): WordBool;
begin
  Result := DefaultInterface.GetDescription(Name, Description, EquipmentType, InterfaceRevision, 
                                            IntegrationLibrary, MainDriverInstalled, GetDownloadURL);
end;

function TSMDrvFR1C.GetLastError(out ErrorDescription: WideString): Integer;
begin
  Result := DefaultInterface.GetLastError(ErrorDescription);
end;

function TSMDrvFR1C.GetParameters(out TableParameters: WideString): WordBool;
begin
  Result := DefaultInterface.GetParameters(TableParameters);
end;

function TSMDrvFR1C.SetParameter(const Name: WideString; Value: OleVariant): WordBool;
begin
  Result := DefaultInterface.SetParameter(Name, Value);
end;

function TSMDrvFR1C.Open(out DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.Open(DeviceID);
end;

function TSMDrvFR1C.Close(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.Close(DeviceID);
end;

function TSMDrvFR1C.DeviceTest(out Description: WideString; out DemoModeIsActivated: WideString): WordBool;
begin
  Result := DefaultInterface.DeviceTest(Description, DemoModeIsActivated);
end;

function TSMDrvFR1C.GetAdditionalActions(out TableActions: WideString): WordBool;
begin
  Result := DefaultInterface.GetAdditionalActions(TableActions);
end;

function TSMDrvFR1C.DoAdditionalAction(const ActionName: WideString): WordBool;
begin
  Result := DefaultInterface.DoAdditionalAction(ActionName);
end;

function TSMDrvFR1C.OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                              IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                              out CheckNumber: Integer; out SessionNumber: Integer): WordBool;
begin
  Result := DefaultInterface.OpenCheck(DeviceID, IsFiscalCheck, IsReturnCheck, CancelOpenedCheck, 
                                       CheckNumber, SessionNumber);
end;

function TSMDrvFR1C.PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                                      Quantity: Double; Price: Double; Amount: Double; 
                                      Department: Integer; Tax: Double): WordBool;
begin
  Result := DefaultInterface.PrintFiscalString(DeviceID, Name, Quantity, Price, Amount, Department, 
                                               Tax);
end;

function TSMDrvFR1C.PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool;
begin
  Result := DefaultInterface.PrintNonFiscalString(DeviceID, TextString);
end;

function TSMDrvFR1C.PrintBarCode(const DeviceID: WideString; const BarcodeType: WideString; 
                                 const BarCode: WideString): WordBool;
begin
  Result := DefaultInterface.PrintBarCode(DeviceID, BarcodeType, BarCode);
end;

function TSMDrvFR1C.CloseCheck(const DeviceID: WideString; Cash: Double; PayByCard: Double; 
                               PayByCredit: Double; PayByCertificate: Double): WordBool;
begin
  Result := DefaultInterface.CloseCheck(DeviceID, Cash, PayByCard, PayByCredit, PayByCertificate);
end;

function TSMDrvFR1C.CancelCheck(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.CancelCheck(DeviceID);
end;

function TSMDrvFR1C.CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool;
begin
  Result := DefaultInterface.CashInOutcome(DeviceID, Amount);
end;

function TSMDrvFR1C.PrintXReport(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.PrintXReport(DeviceID);
end;

function TSMDrvFR1C.PrintZReport(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.PrintZReport(DeviceID);
end;

function TSMDrvFR1C.OpenCashDrawer(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.OpenCashDrawer(DeviceID);
end;

function TSMDrvFR1C.GetLineLength(const DeviceID: WideString; out LineLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetLineLength(DeviceID, LineLength);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TSMDrvFR1C]);
end;

end.
