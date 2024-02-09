unit clsQuadratic_u;

interface

uses
  System.Math, System.SysUtils;

type
  TQuadratic = class
  private
    fCoefficientA: Integer;
    fCoefficientB: Integer;
    fCoefficientC: Integer;
    function calculateDiscriminant: Double;
  public
    constructor create; overload;
    constructor create(CoefficientA, CoefficientB, CoefficientC
      : Integer); overload;
    function calculateRoots: String;
    function hasRealRoots: Boolean;
    function hasRationalRoots: Boolean;
    function toString: String;

  end;

implementation

{ TQuadratic }

function TQuadratic.calculateDiscriminant: Double;
begin
  result := sqr(fCoefficientB) - (4 * fCoefficientA * fCoefficientC);
end;

function TQuadratic.calculateRoots: String;
var
  x1, x2: Double;
begin
  x1 := ((fCoefficientB * -1) + sqrt(calculateDiscriminant)) /
    (2 * fCoefficientA);
  x2 := ((fCoefficientB * -1) - sqrt(calculateDiscriminant)) /
    (2 * fCoefficientA);
  result := 'x1 = ' + FloatToStrF(x1, ffFixed, 8, 2) + ': x2 = ' +
    FloatToStrF(x2, ffFixed, 8, 2);
end;

constructor TQuadratic.create(CoefficientA, CoefficientB,
  CoefficientC: Integer);
begin
  fCoefficientA := CoefficientA;
  fCoefficientB := CoefficientB;
  fCoefficientC := CoefficientC;
end;

constructor TQuadratic.create;
begin

end;

function TQuadratic.hasRationalRoots: Boolean;
var
  discriminantSqrt: Double;
begin
  discriminantSqrt := sqrt(calculateDiscriminant);
  if Frac(discriminantSqrt) = 0.0 then
    result := True
  else
    result := False;
end;

function TQuadratic.hasRealRoots: Boolean;
begin
  if calculateDiscriminant >= 0 then
    result := True
  else
    result := False;
end;

function TQuadratic.toString: String;
begin
  result := IntToStr(fCoefficientA) + 'x' + chr(178) + '+' +
    IntToStr(fCoefficientB) + 'x' + '+' + IntToStr(fCoefficientC) + ' = 0';
end;

end.
