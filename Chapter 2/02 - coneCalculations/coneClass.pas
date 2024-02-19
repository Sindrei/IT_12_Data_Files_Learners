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
    function getBaseDiameter: Real;
    function getHeight: Real;
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

function TCone.getBaseDiameter: Real;
begin
  result := baseDiameter;
end;

function TCone.getHeight: Real;
begin
  result := Height;
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
  { result := 'Slant Height: ' + FloatToStrF(slantHeight, ffFixed, 8, 5) + #10#10
    + 'Surface Area: ' + FloatToStrF(surfaceArea, ffFixed, 8, 5) + #10#10 +
    'Volume: ' + FloatToStrF(volume, ffFixed, 8, 5); }

  result := 'Calculations for cone' + #10#13 + 'New Cone object created:' + #13
    + 'Height: ' + FloatToStrf(getHeight, ffFixed, 8, 2) + #13 +
    'Diameter of base: ' + FloatToStrf(getBaseDiameter, ffFixed, 8, 2) + #10;
end;

function TCone.volume: Real;
begin
  result := Pi * sqr(baseRadius) * Height / 3;
end;

constructor TCone.create;
begin

end;

end.
