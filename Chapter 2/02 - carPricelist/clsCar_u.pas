unit clsCar_u;

interface

uses
  System.SysUtils;

type
  TCar = class
  private
    { Private declarations }
    fModel: String;
    fBrand: String;
    fYear: Integer;
    fRetailPrice: Real;
  public
    { Public declarations }
    // default constructor
    // constructor create();
    // parameterised constructor
    constructor create(sModel, sBrand: String; iYear: Integer;
      rRetailPrice: Real);
    function getDetailedModel: String;
    procedure setRetailPrice(rPrice: Real);
    function getRetailPrice: Real;
    function getVATPrice: Real;
    function toString: String;
  end;

implementation

{ TCar }

constructor TCar.create(sModel, sBrand: String; iYear: Integer;
  rRetailPrice: Real);
begin
  fModel := sModel;
  fBrand := sBrand;
  fYear := iYear;
  fRetailPrice := rRetailPrice;
end;

function TCar.getDetailedModel: String;
begin
  result := inttostr(fYear) + ' ' + fBrand + ' ' + fModel;
end;

function TCar.getRetailPrice: Real;
begin
  result := fRetailPrice;
end;

function TCar.getVATPrice: Real;
begin
  result := fRetailPrice * 1.15;
end;

procedure TCar.setRetailPrice(rPrice: Real);
begin
  fRetailPrice := rPrice;
end;

function TCar.toString: String;
begin
  result := 'Model: ' + fModel + #10 + 'Brand: ' + fBrand + #10 + 'Year: ' +
    inttostr(fYear) + #10 + 'Price: ' + floattostr(fRetailPrice);
end;

end.
