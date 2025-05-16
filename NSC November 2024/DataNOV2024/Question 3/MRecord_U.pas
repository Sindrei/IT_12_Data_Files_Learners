// Enter examination number here

unit MRecord_U;

interface

type
  TMRecord = class(TObject)
  private
  var
    fMarathonName : String;
    fRecordHolder : String;
    fRecordDate   : String;
    fRecordTime   : String;
    fDistance     : real;
  public
    // Provide code
    constructor create(sMarathonName, sRecordHolder, sRecordDate,
                sRecordTime: String; rDistance: real);
    procedure setRecordHolder(sName: String);
    procedure setRecordDate(sNewDate: String);
    procedure setRecordTime(sNewRecord: String);
    function toMinutes(sTime: String): real;

    
  end;

implementation

uses
  SysUtils, Math;

{ TMRecord }

constructor TMRecord.create(sMarathonName, sRecordHolder, sRecordDate,
  sRecordTime: String; rDistance: real);
begin
  //Question 3.1.1

end;



// =============================================================================
// Provided code
// =============================================================================

procedure TMRecord.setRecordHolder(sName: String);
begin
  fRecordHolder := sName;
end;

procedure TMRecord.setRecordTime(sNewRecord: String);
begin
  fRecordTime := sNewRecord;
end;

procedure TMRecord.setRecordDate(sNewDate: String);
begin
  fRecordDate := sNewDate;
end;

function TMRecord.toMinutes(sTime: String): real;
var
  rMin: real;
begin
  rMin := strTofloat(copy(sTime, 4, 2));
  rMin := rMin + strTofloat(copy(sTime, 1, 2)) * 60;
  rMin := rMin + strTofloat(copy(sTime, 7, 2)) / 60;
  Result := rMin;
end;

end.

