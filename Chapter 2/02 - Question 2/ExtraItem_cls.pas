unit ExtraItem_cls;

interface

uses
  System.SysUtils;

type
  TExtraItem = class
  private
    fGuestNum: Integer;
    fItemType: String;
    fPrice: Real;
  public
    constructor create(GuestNum: Integer; ItemType: String; Price: Real);
    function getGuestNum: Integer;
    function calculateProfit: Real;
    function calculatePrice: Real;
    function toString: String;
  end;

implementation

{ TExtraItem }

function TExtraItem.calculatePrice: Real;
begin
  result := fPrice + calculateProfit;
end;

function TExtraItem.calculateProfit: Real;
begin
  result := fPrice * 25 / 100;
end;

constructor TExtraItem.create(GuestNum: Integer; ItemType: String; Price: Real);
begin
  fGuestNum := GuestNum;
  fItemType := ItemType;
  fPrice := Price;
end;

function TExtraItem.getGuestNum: Integer;
begin
  result := fGuestNum;
end;

function TExtraItem.toString: String;
begin
  result := fItemType + #9 + FloatToStrF(fPrice, ffCurrency, 8, 2) + #9 +
    FloatToStrF(calculateProfit, ffCurrency, 8, 2) + #9 +
    FloatToStrF(calculatePrice, ffCurrency, 8, 2);
end;

end.
