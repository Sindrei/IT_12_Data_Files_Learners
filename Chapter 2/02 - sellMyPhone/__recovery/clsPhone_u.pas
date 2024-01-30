unit clsPhone_u;

interface

uses
  System.DateUtils, SysUtils;

type
  TPhone = class(TObject)
  private
    { Private declarations }
    fBrand: String;
    fModel: String;
    fOwner: String;
    fPurchaseDate: TDateTime;
    fPrice: Double;
  public
    { Public declarations }
    constructor create(sBrand: String; sModel: String; sOwner: String;
      dtPurchaseDate: TDateTime; dtListDate: TDateTime; rPrice: Real);
    function getPrice(): Real;
    procedure setPrice(rPrice: Real);
    function calculateAge: Integer;
    function toString: String;
    function getName: String;
  end;

implementation

{ TPhone }

function TPhone.calculateAge: Integer;
var
  NumDays: Integer;
begin
  NumDays := round(now - fPurchaseDate);
  result := NumDays DIV 365;

  // NumDays := Now.Year - fPurchaseDate.Year;
end;

// Constructor
constructor TPhone.create(sBrand, sModel, sOwner: String;
  dtPurchaseDate, dtListDate: TDateTime; rPrice: Real);
begin
  fBrand := sBrand;
  fModel := sModel;
  fOwner := sOwner;
  fPurchaseDate := dtPurchaseDate;
  fPrice := rPrice;
end;

function TPhone.getName: String;
begin
result := fBrand + ' ' + fModel;
end;

function TPhone.getPrice: Real;
begin
  result := fPrice;
end;

procedure TPhone.setPrice(rPrice: Real);
begin
  fPrice := rPrice;
end;

function TPhone.toString: String;
begin
  result := 'Brand: ' + fBrand + #10 + 'Model: ' + fModel + #10 + 'Owner: ' +
    fOwner + #10 + 'Purchase Date: ' + #10 + formatDateTime('dd/mm/yyyy',
    fPurchaseDate) + #10 + floattostrf(fPrice, ffCurrency, 8, 2);
end;

end.
