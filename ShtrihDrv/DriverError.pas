unit DriverError;

interface

uses
  // VCL
  SysUtils;

type
  { EDriverError }

  EDriverError = class(Exception)
  private
   FErrorCode: Integer;
  public
    constructor Create2(Code: Integer; const Msg: string);
    property ErrorCode: Integer read FErrorCode write FErrorCode;
  end;

procedure RaiseError(Code: Integer; const Message: string);

implementation

{ EDriverError }

constructor EDriverError.Create2(Code: Integer; const Msg: string);
begin
  inherited Create(Msg);
  FErrorCode := Code;
end;

procedure RaiseError(Code: Integer; const Message: string);
begin
  raise EDriverError.Create2(Code, Message);
end;

end.
