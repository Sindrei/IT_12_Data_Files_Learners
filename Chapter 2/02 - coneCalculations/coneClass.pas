unit coneClass;

interface

uses
  System.SysUtils;

type
  TCone = class
  private
    Height: Real;
    baseDiameter: Real;
    function baseRadius: Real;
  public
    constructor create; overload;
    constructor create(Height, baseDiameter: Real); overload;
    function slantHeight: Real;
    function volume: Real;
    function surfaceArea: Real;
    function toString: String;
  end;

implementation

{ TCone }

function TCone.baseRadius: Real;
begin
  baseRadius := baseDiameter / 2;
end;

constructor TCone.create(Height, baseDiameter: Real);
begin
  self.Height := Height;
  self.baseDiameter := baseDiameter;
end;

function TCone.slantHeight: Real;
begin
  result := Sqrt(sqr(baseRadius) + sqr(Height));
end;

function TCone.surfaceArea: Real;
begin
  result := Pi * baseRadius * (baseRadius + slantHeight);
end;

function TCone.toString: String;
begin
  result := 'Slant Height: ' + FloatToStrF(slantHeight, ffFixed, 8, 2) + #10 +
    'Volume: ' + FloatToStrF(volume, ffFixed, 8, 2) + #10 + 'Surface Area: ' +
    FloatToStrF(surfaceArea, ffFixed, 8, 2);
end;

function TCone.volume: Real;
begin
  result := Pi * sqr(baseRadius) * Height / 3;
end;

constructor TCone.create;
begin

end;

end.
