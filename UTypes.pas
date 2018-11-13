unit UTypes;

interface
type TDigits = array of Integer;
type TGoodSale = record
  article : string;
  name    : string;
  quant   : integer;
  price   : currency;
  summ    : currency;
  discount_prc  : currency;
  discount_sum  : currency;
end;
type TGoodSaleList = array of TgoodSale;
implementation

end.
