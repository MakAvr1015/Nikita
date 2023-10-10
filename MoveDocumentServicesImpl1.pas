// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.8.1.30:8080/WebApplicationTima/MoveDocumentServicesImpl?wsdl
//  >Import : http://10.8.1.30:8080/WebApplicationTima/MoveDocumentServicesImpl?wsdl>0
//  >Import : http://10.8.1.30:8080/WebApplicationTima/MoveDocumentServicesImpl?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (13.04.2020 20:34:15 - - $Rev: 90173 $)
// ************************************************************************ //

unit MoveDocumentServicesImpl1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:float           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  price                = class;                 { "http://services.tima.com/"[GblCplx] }
  documentPos          = class;                 { "http://services.tima.com/"[GblCplx] }
  good                 = class;                 { "http://services.tima.com/"[GblCplx] }
  nsiClass             = class;                 { "http://services.tima.com/"[GblCplx] }
  sklad                = class;                 { "http://services.tima.com/"[GblCplx] }
  partner              = class;                 { "http://services.tima.com/"[GblCplx] }
  goodDocument         = class;                 { "http://services.tima.com/"[GblCplx] }
  moveDocument         = class;                 { "http://services.tima.com/"[GblCplx] }
  sCheckInfo           = class;                 { "http://services.tima.com/"[GblCplx] }
  serviceResult        = class;                 { "http://services.tima.com/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://services.tima.com/"[GblSmpl] }
  sState = (EMPTY, READY, SENDED, GETED, COMPLETE, ERROR, DELETED);

  { "http://services.tima.com/"[GblSmpl] }
  sResult = (OK, ERROR);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : price, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  price = class(TRemotable)
  private
    Ff_code: string;
    Ff_code_Specified: boolean;
    Ff_name: string;
    Ff_name_Specified: boolean;
    procedure Setf_code(Index: Integer; const Astring: string);
    function  f_code_Specified(Index: Integer): boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
  published
    property f_code: string  Index (IS_OPTN or IS_UNQL) read Ff_code write Setf_code stored f_code_Specified;
    property f_name: string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
  end;

  Array_Of_documentPos = array of documentPos;   { "http://services.tima.com/"[GblUbnd] }
  Array_Of_sCheckInfo = array of sCheckInfo;    { "http://services.tima.com/"[GblUbnd] }
  GetListDocResponse = array of string;         { "http://services.tima.com/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : documentPos, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  documentPos = class(TRemotable)
  private
    Ff_good: good;
    Ff_good_Specified: boolean;
    Ff_id: Integer;
    Ff_pos: Integer;
    Ff_price: Single;
    Ff_price_val: Single;
    Ff_quant: Single;
    procedure Setf_good(Index: Integer; const Agood: good);
    function  f_good_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property f_good:      good     Index (IS_OPTN or IS_UNQL) read Ff_good write Setf_good stored f_good_Specified;
    property f_id:        Integer  Index (IS_UNQL) read Ff_id write Ff_id;
    property f_pos:       Integer  Index (IS_UNQL) read Ff_pos write Ff_pos;
    property f_price:     Single   Index (IS_UNQL) read Ff_price write Ff_price;
    property f_price_val: Single   Index (IS_UNQL) read Ff_price_val write Ff_price_val;
    property f_quant:     Single   Index (IS_UNQL) read Ff_quant write Ff_quant;
  end;



  // ************************************************************************ //
  // XML       : good, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  good = class(TRemotable)
  private
    Ff_article: string;
    Ff_article_Specified: boolean;
    Ff_barter: Boolean;
    Ff_dopInfo: string;
    Ff_dopInfo_Specified: boolean;
    Ff_good_type: Integer;
    Ff_id: Integer;
    Ff_name: string;
    Ff_name_Specified: boolean;
    Ff_partner: partner;
    Ff_partner_Specified: boolean;
    Ff_scancodes: GetListDocResponse;
    Ff_scancodes_Specified: boolean;
    procedure Setf_article(Index: Integer; const Astring: string);
    function  f_article_Specified(Index: Integer): boolean;
    procedure Setf_dopInfo(Index: Integer; const Astring: string);
    function  f_dopInfo_Specified(Index: Integer): boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
    procedure Setf_partner(Index: Integer; const Apartner: partner);
    function  f_partner_Specified(Index: Integer): boolean;
    procedure Setf_scancodes(Index: Integer; const AGetListDocResponse: GetListDocResponse);
    function  f_scancodes_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property f_article:   string              Index (IS_OPTN or IS_UNQL) read Ff_article write Setf_article stored f_article_Specified;
    property f_barter:    Boolean             Index (IS_UNQL) read Ff_barter write Ff_barter;
    property f_dopInfo:   string              Index (IS_OPTN or IS_UNQL) read Ff_dopInfo write Setf_dopInfo stored f_dopInfo_Specified;
    property f_good_type: Integer             Index (IS_UNQL) read Ff_good_type write Ff_good_type;
    property f_id:        Integer             Index (IS_UNQL) read Ff_id write Ff_id;
    property f_name:      string              Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
    property f_partner:   partner             Index (IS_OPTN or IS_UNQL) read Ff_partner write Setf_partner stored f_partner_Specified;
    property f_scancodes: GetListDocResponse  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ff_scancodes write Setf_scancodes stored f_scancodes_Specified;
  end;



  // ************************************************************************ //
  // XML       : nsiClass, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  nsiClass = class(TRemotable)
  private
    Ff_id: Integer;
    Ff_ident: string;
    Ff_ident_Specified: boolean;
    procedure Setf_ident(Index: Integer; const Astring: string);
    function  f_ident_Specified(Index: Integer): boolean;
  published
    property f_id:    Integer  Index (IS_UNQL) read Ff_id write Ff_id;
    property f_ident: string   Index (IS_OPTN or IS_UNQL) read Ff_ident write Setf_ident stored f_ident_Specified;
  end;



  // ************************************************************************ //
  // XML       : sklad, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  sklad = class(TRemotable)
  private
    Ff_name: string;
    Ff_name_Specified: boolean;
    Ff_prefix: string;
    Ff_prefix_Specified: boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
    procedure Setf_prefix(Index: Integer; const Astring: string);
    function  f_prefix_Specified(Index: Integer): boolean;
  published
    property f_name:   string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
    property f_prefix: string  Index (IS_OPTN or IS_UNQL) read Ff_prefix write Setf_prefix stored f_prefix_Specified;
  end;



  // ************************************************************************ //
  // XML       : partner, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  partner = class(nsiClass)
  private
    Ff_address: string;
    Ff_address_Specified: boolean;
    Ff_inn: string;
    Ff_inn_Specified: boolean;
    Ff_kpp: string;
    Ff_kpp_Specified: boolean;
    Ff_name: string;
    Ff_name_Specified: boolean;
    procedure Setf_address(Index: Integer; const Astring: string);
    function  f_address_Specified(Index: Integer): boolean;
    procedure Setf_inn(Index: Integer; const Astring: string);
    function  f_inn_Specified(Index: Integer): boolean;
    procedure Setf_kpp(Index: Integer; const Astring: string);
    function  f_kpp_Specified(Index: Integer): boolean;
    procedure Setf_name(Index: Integer; const Astring: string);
    function  f_name_Specified(Index: Integer): boolean;
  published
    property f_address: string  Index (IS_OPTN or IS_UNQL) read Ff_address write Setf_address stored f_address_Specified;
    property f_inn:     string  Index (IS_OPTN or IS_UNQL) read Ff_inn write Setf_inn stored f_inn_Specified;
    property f_kpp:     string  Index (IS_OPTN or IS_UNQL) read Ff_kpp write Setf_kpp stored f_kpp_Specified;
    property f_name:    string  Index (IS_OPTN or IS_UNQL) read Ff_name write Setf_name stored f_name_Specified;
  end;



  // ************************************************************************ //
  // XML       : goodDocument, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  goodDocument = class(TRemotable)
  private
    Ff_date: string;
    Ff_date_Specified: boolean;
    Ff_descr: string;
    Ff_descr_Specified: boolean;
    Ff_guid: string;
    Ff_guid_Specified: boolean;
    Ff_id: Integer;
    Ff_number: string;
    Ff_number_Specified: boolean;
    Ff_positions: Array_Of_documentPos;
    Ff_positions_Specified: boolean;
    Ff_price_in: price;
    Ff_price_in_Specified: boolean;
    Ff_price_out: price;
    Ff_price_out_Specified: boolean;
    Ff_recipient: partner;
    Ff_recipient_Specified: boolean;
    Ff_sender: partner;
    Ff_sender_Specified: boolean;
    Ff_sklad_from: sklad;
    Ff_sklad_from_Specified: boolean;
    Ff_sklad_to: sklad;
    Ff_sklad_to_Specified: boolean;
    Ff_state: Integer;
    Ff_state_name: sState;
    Ff_state_name_Specified: boolean;
    Ff_type: Integer;
    Ff_user: string;
    Ff_user_Specified: boolean;
    procedure Setf_date(Index: Integer; const Astring: string);
    function  f_date_Specified(Index: Integer): boolean;
    procedure Setf_descr(Index: Integer; const Astring: string);
    function  f_descr_Specified(Index: Integer): boolean;
    procedure Setf_guid(Index: Integer; const Astring: string);
    function  f_guid_Specified(Index: Integer): boolean;
    procedure Setf_number(Index: Integer; const Astring: string);
    function  f_number_Specified(Index: Integer): boolean;
    procedure Setf_positions(Index: Integer; const AArray_Of_documentPos: Array_Of_documentPos);
    function  f_positions_Specified(Index: Integer): boolean;
    procedure Setf_price_in(Index: Integer; const Aprice: price);
    function  f_price_in_Specified(Index: Integer): boolean;
    procedure Setf_price_out(Index: Integer; const Aprice: price);
    function  f_price_out_Specified(Index: Integer): boolean;
    procedure Setf_recipient(Index: Integer; const Apartner: partner);
    function  f_recipient_Specified(Index: Integer): boolean;
    procedure Setf_sender(Index: Integer; const Apartner: partner);
    function  f_sender_Specified(Index: Integer): boolean;
    procedure Setf_sklad_from(Index: Integer; const Asklad: sklad);
    function  f_sklad_from_Specified(Index: Integer): boolean;
    procedure Setf_sklad_to(Index: Integer; const Asklad: sklad);
    function  f_sklad_to_Specified(Index: Integer): boolean;
    procedure Setf_state_name(Index: Integer; const AsState: sState);
    function  f_state_name_Specified(Index: Integer): boolean;
    procedure Setf_user(Index: Integer; const Astring: string);
    function  f_user_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property f_date:       string                Index (IS_OPTN or IS_UNQL) read Ff_date write Setf_date stored f_date_Specified;
    property f_descr:      string                Index (IS_OPTN or IS_UNQL) read Ff_descr write Setf_descr stored f_descr_Specified;
    property f_guid:       string                Index (IS_OPTN or IS_UNQL) read Ff_guid write Setf_guid stored f_guid_Specified;
    property f_id:         Integer               Index (IS_UNQL) read Ff_id write Ff_id;
    property f_number:     string                Index (IS_OPTN or IS_UNQL) read Ff_number write Setf_number stored f_number_Specified;
    property f_positions:  Array_Of_documentPos  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ff_positions write Setf_positions stored f_positions_Specified;
    property f_price_in:   price                 Index (IS_OPTN or IS_UNQL) read Ff_price_in write Setf_price_in stored f_price_in_Specified;
    property f_price_out:  price                 Index (IS_OPTN or IS_UNQL) read Ff_price_out write Setf_price_out stored f_price_out_Specified;
    property f_recipient:  partner               Index (IS_OPTN or IS_UNQL) read Ff_recipient write Setf_recipient stored f_recipient_Specified;
    property f_sender:     partner               Index (IS_OPTN or IS_UNQL) read Ff_sender write Setf_sender stored f_sender_Specified;
    property f_sklad_from: sklad                 Index (IS_OPTN or IS_UNQL) read Ff_sklad_from write Setf_sklad_from stored f_sklad_from_Specified;
    property f_sklad_to:   sklad                 Index (IS_OPTN or IS_UNQL) read Ff_sklad_to write Setf_sklad_to stored f_sklad_to_Specified;
    property f_state:      Integer               Index (IS_UNQL) read Ff_state write Ff_state;
    property f_state_name: sState                Index (IS_OPTN or IS_UNQL) read Ff_state_name write Setf_state_name stored f_state_name_Specified;
    property f_type:       Integer               Index (IS_UNQL) read Ff_type write Ff_type;
    property f_user:       string                Index (IS_OPTN or IS_UNQL) read Ff_user write Setf_user stored f_user_Specified;
  end;



  // ************************************************************************ //
  // XML       : moveDocument, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  moveDocument = class(goodDocument)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : sCheckInfo, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  sCheckInfo = class(TRemotable)
  private
    FinfoName: string;
    FinfoName_Specified: boolean;
    FinfoValue: string;
    FinfoValue_Specified: boolean;
    procedure SetinfoName(Index: Integer; const Astring: string);
    function  infoName_Specified(Index: Integer): boolean;
    procedure SetinfoValue(Index: Integer; const Astring: string);
    function  infoValue_Specified(Index: Integer): boolean;
  published
    property infoName:  string  Index (IS_OPTN or IS_UNQL) read FinfoName write SetinfoName stored infoName_Specified;
    property infoValue: string  Index (IS_OPTN or IS_UNQL) read FinfoValue write SetinfoValue stored infoValue_Specified;
  end;



  // ************************************************************************ //
  // XML       : serviceResult, global, <complexType>
  // Namespace : http://services.tima.com/
  // ************************************************************************ //
  serviceResult = class(TRemotable)
  private
    FcheckInfo: Array_Of_sCheckInfo;
    FcheckInfo_Specified: boolean;
    Fmeaasge: string;
    Fmeaasge_Specified: boolean;
    Fresult: sResult;
    Fresult_Specified: boolean;
    procedure SetcheckInfo(Index: Integer; const AArray_Of_sCheckInfo: Array_Of_sCheckInfo);
    function  checkInfo_Specified(Index: Integer): boolean;
    procedure Setmeaasge(Index: Integer; const Astring: string);
    function  meaasge_Specified(Index: Integer): boolean;
    procedure Setresult(Index: Integer; const AsResult: sResult);
    function  result_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property checkInfo: Array_Of_sCheckInfo  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcheckInfo write SetcheckInfo stored checkInfo_Specified;
    property meaasge:   string               Index (IS_OPTN or IS_UNQL) read Fmeaasge write Setmeaasge stored meaasge_Specified;
    property result:    sResult              Index (IS_OPTN or IS_UNQL) read Fresult write Setresult stored result_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://services.tima.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : MoveDocumentServicesImplPortBinding
  // service   : DocMoveWebService
  // port      : MoveDocumentServicesImplPort
  // URL       : http://10.8.1.30:8080/WebApplicationTima/MoveDocumentServicesImpl
  // ************************************************************************ //
  MoveDocumentServicesImpl = interface(IInvokable)
  ['{C35BDAC8-B82F-2DEB-A5A6-774CFE3EFBF7}']
    function  SetDocument(const p_document: moveDocument): serviceResult; stdcall;
    function  GetListDoc(const p_recipient_prefix: string): GetListDocResponse; stdcall;
    function  GetDoc(const p_GUID: string): moveDocument; stdcall;
    function  SetStateDoc(const p_GUID: string; const p_state: sState): serviceResult; stdcall;
  end;

function GetMoveDocumentServicesImpl(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): MoveDocumentServicesImpl;


implementation
  uses System.SysUtils;

function GetMoveDocumentServicesImpl(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): MoveDocumentServicesImpl;
const
  defWSDL = 'http://10.8.1.30:8080/WebApplicationTima/MoveDocumentServicesImpl?wsdl';
  defURL  = 'http://10.8.1.30:8080/WebApplicationTima/MoveDocumentServicesImpl';
  defSvc  = 'DocMoveWebService';
  defPrt  = 'MoveDocumentServicesImplPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as MoveDocumentServicesImpl);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure price.Setf_code(Index: Integer; const Astring: string);
begin
  Ff_code := Astring;
  Ff_code_Specified := True;
end;

function price.f_code_Specified(Index: Integer): boolean;
begin
  Result := Ff_code_Specified;
end;

procedure price.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function price.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

destructor documentPos.Destroy;
begin
  System.SysUtils.FreeAndNil(Ff_good);
  inherited Destroy;
end;

procedure documentPos.Setf_good(Index: Integer; const Agood: good);
begin
  Ff_good := Agood;
  Ff_good_Specified := True;
end;

function documentPos.f_good_Specified(Index: Integer): boolean;
begin
  Result := Ff_good_Specified;
end;

destructor good.Destroy;
begin
  System.SysUtils.FreeAndNil(Ff_partner);
  inherited Destroy;
end;

procedure good.Setf_article(Index: Integer; const Astring: string);
begin
  Ff_article := Astring;
  Ff_article_Specified := True;
end;

function good.f_article_Specified(Index: Integer): boolean;
begin
  Result := Ff_article_Specified;
end;

procedure good.Setf_dopInfo(Index: Integer; const Astring: string);
begin
  Ff_dopInfo := Astring;
  Ff_dopInfo_Specified := True;
end;

function good.f_dopInfo_Specified(Index: Integer): boolean;
begin
  Result := Ff_dopInfo_Specified;
end;

procedure good.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function good.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

procedure good.Setf_partner(Index: Integer; const Apartner: partner);
begin
  Ff_partner := Apartner;
  Ff_partner_Specified := True;
end;

function good.f_partner_Specified(Index: Integer): boolean;
begin
  Result := Ff_partner_Specified;
end;

procedure good.Setf_scancodes(Index: Integer; const AGetListDocResponse: GetListDocResponse);
begin
  Ff_scancodes := AGetListDocResponse;
  Ff_scancodes_Specified := True;
end;

function good.f_scancodes_Specified(Index: Integer): boolean;
begin
  Result := Ff_scancodes_Specified;
end;

procedure nsiClass.Setf_ident(Index: Integer; const Astring: string);
begin
  Ff_ident := Astring;
  Ff_ident_Specified := True;
end;

function nsiClass.f_ident_Specified(Index: Integer): boolean;
begin
  Result := Ff_ident_Specified;
end;

procedure sklad.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function sklad.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

procedure sklad.Setf_prefix(Index: Integer; const Astring: string);
begin
  Ff_prefix := Astring;
  Ff_prefix_Specified := True;
end;

function sklad.f_prefix_Specified(Index: Integer): boolean;
begin
  Result := Ff_prefix_Specified;
end;

procedure partner.Setf_address(Index: Integer; const Astring: string);
begin
  Ff_address := Astring;
  Ff_address_Specified := True;
end;

function partner.f_address_Specified(Index: Integer): boolean;
begin
  Result := Ff_address_Specified;
end;

procedure partner.Setf_inn(Index: Integer; const Astring: string);
begin
  Ff_inn := Astring;
  Ff_inn_Specified := True;
end;

function partner.f_inn_Specified(Index: Integer): boolean;
begin
  Result := Ff_inn_Specified;
end;

procedure partner.Setf_kpp(Index: Integer; const Astring: string);
begin
  Ff_kpp := Astring;
  Ff_kpp_Specified := True;
end;

function partner.f_kpp_Specified(Index: Integer): boolean;
begin
  Result := Ff_kpp_Specified;
end;

procedure partner.Setf_name(Index: Integer; const Astring: string);
begin
  Ff_name := Astring;
  Ff_name_Specified := True;
end;

function partner.f_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_name_Specified;
end;

destructor goodDocument.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ff_positions)-1 do
    System.SysUtils.FreeAndNil(Ff_positions[I]);
  System.SetLength(Ff_positions, 0);
  System.SysUtils.FreeAndNil(Ff_price_in);
  System.SysUtils.FreeAndNil(Ff_price_out);
  System.SysUtils.FreeAndNil(Ff_recipient);
  System.SysUtils.FreeAndNil(Ff_sender);
  System.SysUtils.FreeAndNil(Ff_sklad_from);
  System.SysUtils.FreeAndNil(Ff_sklad_to);
  inherited Destroy;
end;

procedure goodDocument.Setf_date(Index: Integer; const Astring: string);
begin
  Ff_date := Astring;
  Ff_date_Specified := True;
end;

function goodDocument.f_date_Specified(Index: Integer): boolean;
begin
  Result := Ff_date_Specified;
end;

procedure goodDocument.Setf_descr(Index: Integer; const Astring: string);
begin
  Ff_descr := Astring;
  Ff_descr_Specified := True;
end;

function goodDocument.f_descr_Specified(Index: Integer): boolean;
begin
  Result := Ff_descr_Specified;
end;

procedure goodDocument.Setf_guid(Index: Integer; const Astring: string);
begin
  Ff_guid := Astring;
  Ff_guid_Specified := True;
end;

function goodDocument.f_guid_Specified(Index: Integer): boolean;
begin
  Result := Ff_guid_Specified;
end;

procedure goodDocument.Setf_number(Index: Integer; const Astring: string);
begin
  Ff_number := Astring;
  Ff_number_Specified := True;
end;

function goodDocument.f_number_Specified(Index: Integer): boolean;
begin
  Result := Ff_number_Specified;
end;

procedure goodDocument.Setf_positions(Index: Integer; const AArray_Of_documentPos: Array_Of_documentPos);
begin
  Ff_positions := AArray_Of_documentPos;
  Ff_positions_Specified := True;
end;

function goodDocument.f_positions_Specified(Index: Integer): boolean;
begin
  Result := Ff_positions_Specified;
end;

procedure goodDocument.Setf_price_in(Index: Integer; const Aprice: price);
begin
  Ff_price_in := Aprice;
  Ff_price_in_Specified := True;
end;

function goodDocument.f_price_in_Specified(Index: Integer): boolean;
begin
  Result := Ff_price_in_Specified;
end;

procedure goodDocument.Setf_price_out(Index: Integer; const Aprice: price);
begin
  Ff_price_out := Aprice;
  Ff_price_out_Specified := True;
end;

function goodDocument.f_price_out_Specified(Index: Integer): boolean;
begin
  Result := Ff_price_out_Specified;
end;

procedure goodDocument.Setf_recipient(Index: Integer; const Apartner: partner);
begin
  Ff_recipient := Apartner;
  Ff_recipient_Specified := True;
end;

function goodDocument.f_recipient_Specified(Index: Integer): boolean;
begin
  Result := Ff_recipient_Specified;
end;

procedure goodDocument.Setf_sender(Index: Integer; const Apartner: partner);
begin
  Ff_sender := Apartner;
  Ff_sender_Specified := True;
end;

function goodDocument.f_sender_Specified(Index: Integer): boolean;
begin
  Result := Ff_sender_Specified;
end;

procedure goodDocument.Setf_sklad_from(Index: Integer; const Asklad: sklad);
begin
  Ff_sklad_from := Asklad;
  Ff_sklad_from_Specified := True;
end;

function goodDocument.f_sklad_from_Specified(Index: Integer): boolean;
begin
  Result := Ff_sklad_from_Specified;
end;

procedure goodDocument.Setf_sklad_to(Index: Integer; const Asklad: sklad);
begin
  Ff_sklad_to := Asklad;
  Ff_sklad_to_Specified := True;
end;

function goodDocument.f_sklad_to_Specified(Index: Integer): boolean;
begin
  Result := Ff_sklad_to_Specified;
end;

procedure goodDocument.Setf_state_name(Index: Integer; const AsState: sState);
begin
  Ff_state_name := AsState;
  Ff_state_name_Specified := True;
end;

function goodDocument.f_state_name_Specified(Index: Integer): boolean;
begin
  Result := Ff_state_name_Specified;
end;

procedure goodDocument.Setf_user(Index: Integer; const Astring: string);
begin
  Ff_user := Astring;
  Ff_user_Specified := True;
end;

function goodDocument.f_user_Specified(Index: Integer): boolean;
begin
  Result := Ff_user_Specified;
end;

procedure sCheckInfo.SetinfoName(Index: Integer; const Astring: string);
begin
  FinfoName := Astring;
  FinfoName_Specified := True;
end;

function sCheckInfo.infoName_Specified(Index: Integer): boolean;
begin
  Result := FinfoName_Specified;
end;

procedure sCheckInfo.SetinfoValue(Index: Integer; const Astring: string);
begin
  FinfoValue := Astring;
  FinfoValue_Specified := True;
end;

function sCheckInfo.infoValue_Specified(Index: Integer): boolean;
begin
  Result := FinfoValue_Specified;
end;

destructor serviceResult.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FcheckInfo)-1 do
    System.SysUtils.FreeAndNil(FcheckInfo[I]);
  System.SetLength(FcheckInfo, 0);
  inherited Destroy;
end;

procedure serviceResult.SetcheckInfo(Index: Integer; const AArray_Of_sCheckInfo: Array_Of_sCheckInfo);
begin
  FcheckInfo := AArray_Of_sCheckInfo;
  FcheckInfo_Specified := True;
end;

function serviceResult.checkInfo_Specified(Index: Integer): boolean;
begin
  Result := FcheckInfo_Specified;
end;

procedure serviceResult.Setmeaasge(Index: Integer; const Astring: string);
begin
  Fmeaasge := Astring;
  Fmeaasge_Specified := True;
end;

function serviceResult.meaasge_Specified(Index: Integer): boolean;
begin
  Result := Fmeaasge_Specified;
end;

procedure serviceResult.Setresult(Index: Integer; const AsResult: sResult);
begin
  Fresult := AsResult;
  Fresult_Specified := True;
end;

function serviceResult.result_Specified(Index: Integer): boolean;
begin
  Result := Fresult_Specified;
end;

initialization
  { MoveDocumentServicesImpl }
  InvRegistry.RegisterInterface(TypeInfo(MoveDocumentServicesImpl), 'http://services.tima.com/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(MoveDocumentServicesImpl), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(MoveDocumentServicesImpl), ioDocument);
  { MoveDocumentServicesImpl.SetDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(MoveDocumentServicesImpl), 'SetDocument', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'SetDocument', 'p_document', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'SetDocument', 'return', '',
                                '', IS_UNQL);
  { MoveDocumentServicesImpl.GetListDoc }
  InvRegistry.RegisterMethodInfo(TypeInfo(MoveDocumentServicesImpl), 'GetListDoc', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'GetListDoc', 'p_recipient_prefix', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'GetListDoc', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { MoveDocumentServicesImpl.GetDoc }
  InvRegistry.RegisterMethodInfo(TypeInfo(MoveDocumentServicesImpl), 'GetDoc', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'GetDoc', 'p_GUID', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'GetDoc', 'return', '',
                                '', IS_UNQL);
  { MoveDocumentServicesImpl.SetStateDoc }
  InvRegistry.RegisterMethodInfo(TypeInfo(MoveDocumentServicesImpl), 'SetStateDoc', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'SetStateDoc', 'p_GUID', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'SetStateDoc', 'p_state', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(MoveDocumentServicesImpl), 'SetStateDoc', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSClass(price, 'http://services.tima.com/', 'price');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_documentPos), 'http://services.tima.com/', 'Array_Of_documentPos');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_sCheckInfo), 'http://services.tima.com/', 'Array_Of_sCheckInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetListDocResponse), 'http://services.tima.com/', 'GetListDocResponse');
  RemClassRegistry.RegisterXSClass(documentPos, 'http://services.tima.com/', 'documentPos');
  RemClassRegistry.RegisterXSClass(good, 'http://services.tima.com/', 'good');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(good), 'f_scancodes', '[ArrayItemName="return"]');
  RemClassRegistry.RegisterXSClass(nsiClass, 'http://services.tima.com/', 'nsiClass');
  RemClassRegistry.RegisterXSClass(sklad, 'http://services.tima.com/', 'sklad');
  RemClassRegistry.RegisterXSClass(partner, 'http://services.tima.com/', 'partner');
  RemClassRegistry.RegisterXSInfo(TypeInfo(sState), 'http://services.tima.com/', 'sState');
  RemClassRegistry.RegisterXSClass(goodDocument, 'http://services.tima.com/', 'goodDocument');
  RemClassRegistry.RegisterXSClass(moveDocument, 'http://services.tima.com/', 'moveDocument');
  RemClassRegistry.RegisterXSClass(sCheckInfo, 'http://services.tima.com/', 'sCheckInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(sResult), 'http://services.tima.com/', 'sResult');
  RemClassRegistry.RegisterXSClass(serviceResult, 'http://services.tima.com/', 'serviceResult');

end.