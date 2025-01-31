unit PhoneClass;

interface

uses
  DateUtils, SysUtils;

type
  TPhone = class
  private
    fBrand: String;
    fModel: String;
    fOwner: String;
    fPurchaseDate: TDateTime;
    fPrice: Double;
  public
    constructor create; overload;
    constructor create(sBrand, sModel, sOwner: String;
      dtPurchaseDate: TDateTime; dPrice: Double); overload;
    function getPrice(): Double;
    function getPhone(): String;

    procedure setPrice(dPrice: Double);
    function calculateAge: Integer;
    function toString: String;
  end;

implementation

{ TPhone }

function TPhone.calculateAge: Integer;
begin
  result := Now.Year - fPurchaseDate.Year;
end;

constructor TPhone.create;
begin

end;

constructor TPhone.create(sBrand, sModel, sOwner: String;
  dtPurchaseDate: TDateTime; dPrice: Double);
begin
  fBrand := sBrand;
  fModel := sModel;
  fOwner := sOwner;
  fPurchaseDate := dtPurchaseDate;
  fPrice := dPrice;
end;

function TPhone.getPhone: String;
begin
  result := fBrand + ' ' + fModel;
end;

function TPhone.getPrice: Double;
begin
  result := fPrice;
end;

procedure TPhone.setPrice(dPrice: Double);
begin
  fPrice := dPrice;
end;

function TPhone.toString: String;
begin
  result := 'Brand: ' + #9 + fBrand + #10 + 'Model: ' + #9 + fModel + #10 +
    'Owner: ' + #9 + fOwner + #10 + 'Purchase Date: ' + #9 +
    DateToStr(fPurchaseDate) + 'Price: ' + #9 + FloatToStrF(fPrice,
    ffCurrency, 8, 2);
end;

end.
