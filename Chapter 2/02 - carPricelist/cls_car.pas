unit cls_car;

interface

uses
  SysUtils;

type
  TCar = class
  private
    fModel: String;
    fBrand: String;
    fYear: Integer;
    fRetailPrice: Real;
  public
    Constructor Create; overload;
    Constructor Create(sModel, sBrand: String; iYear: Integer;
      rRetailPrice: Real); overload;
    function getDetailedModel: String;
    procedure setRetailPrice(rPrice: Real);
    function getRetailPrice: Real;
    function toString: String;
    function getVATPrice: Real;
  end;

implementation

{ TCar }

constructor TCar.Create(sModel, sBrand: String; iYear: Integer;
  rRetailPrice: Real);
begin
  fModel := sModel;
  fBrand := sBrand;
  fYear := iYear;
  fRetailPrice := rRetailPrice;
end;

function TCar.getDetailedModel: String;
begin
  Result := IntToStr(fYear) + ' ' + fBrand + ' ' + fModel;
end;

function TCar.getRetailPrice: Real;
begin
  Result := fRetailPrice;
end;

function TCar.getVATPrice: Real;
begin
  Result := fRetailPrice * 1.15;
end;

procedure TCar.setRetailPrice(rPrice: Real);
begin
  fRetailPrice := rPrice;
end;

function TCar.toString: String;
begin
  Result := 'Model: ' + fModel + #10 + 'Brand: ' + fBrand + #10 + 'Year: ' +
    IntToStr(fYear) + #10 + 'Retail Price: ' + FloatToStr(fRetailPrice);
end;

constructor TCar.Create;
begin

end;

end.
