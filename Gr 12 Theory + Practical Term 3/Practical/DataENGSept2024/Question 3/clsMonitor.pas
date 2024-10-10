// Enter your name and surname here

unit clsMonitor;

interface

uses SysUtils;

type
  TMonitor = class(TObject)
  private
    fIP: String;
    fCountryOfOrigin: String;
    fVisits: Integer;
    fDirectVisits: Integer;
    fStatus: Boolean;
  public
    // Provided code
    procedure changeStatus;
    function getStatus: Boolean;
    function getIP: String;

    // Code here
    Constructor Create(sIP, sCountryOfOrigin: String);
    procedure addVisits(iVisits: Integer; bDirect: Boolean);
    function checkValidIP: Boolean;
    function toString: String;
  end;

implementation

{ objMonitor }

function TMonitor.getStatus: Boolean; // Provided code
begin
  result := fStatus;
end;

function TMonitor.toString: String;
var
  sOut: String;
begin
  { <IP address>:<Country of origin>
    Number of visits via search engine: <Number of visits>
    Number of visits via URL: <Number of direct visits>
    Website accessibility: Active
  }
  sOut := fIP + ':' + fCountryOfOrigin + #10 +
    'Number of visits via search engine: ' + IntToStr(fVisits) + #10 +
    'Number of visits via URL: ' + IntToStr(fDirectVisits) + #10 +
    'Website accessibility : ';

  if fStatus = True then
    sOut := sOut + 'Active'
  else
    sOut := sOut + 'Inactive';

  result := sOut;
end;

constructor TMonitor.Create(sIP, sCountryOfOrigin: String);
begin
  fIP := sIP;
  fCountryOfOrigin := sCountryOfOrigin;
  fVisits := 0;
  fDirectVisits := 0;
  fStatus := False;
end;

function TMonitor.getIP: String; // Provided code
begin
  result := fIP;
end;

procedure TMonitor.addVisits(iVisits: Integer; bDirect: Boolean);
begin
  if fStatus = True then
  begin
    if bDirect = True then
      Inc(fDirectVisits, iVisits)
    else
      Inc(fVisits, iVisits);
  end;
end;

procedure TMonitor.changeStatus; // Provided code
begin
  fStatus := not fStatus;
end;

function TMonitor.checkValidIP: Boolean;
var
  sIP: String;
  iX, iCountDots, iPos, iNumber: Integer;
  bValid: Boolean;
begin
  // 192.168.5.122
  sIP := fIP;
  iCountDots := 0;
  bValid := True;

  // Check if IP adress has three dots
  for iX := 1 to Length(sIP) do
  begin
    if sIP[iX] = '.' then
      Inc(iCountDots);
  end;

  // if the dots are more or less than 3 result = False else check the numbers
  if iCountDots <> 3 then
  begin
    bValid := False;
  end
  else
  begin
    for iX := 1 to 3 do
    begin
      iPos := Pos('.', sIP);
      iNumber := StrToInt(Copy(sIP, 1, iPos - 1));
      if NOT((iNumber > 0) AND (iNumber < 255)) then
      begin
        bValid := False;
      end;
      Delete(sIP, 1, iPos);
    end;

    if bValid = True then
    begin
      iNumber := StrToInt(sIP);
      if NOT((iNumber > 0) AND (iNumber < 255)) then
      begin
        bValid := False;
      end;
    end;
  end;

  result := bValid;
end;

end.
