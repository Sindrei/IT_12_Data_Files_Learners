// Enter your name and surname here

unit clsMonitor;

interface

uses SysUtils;

type
  TMonitor = class(TObject)
    private
      fIP : String;
      fCountryOfOrigin : String;
      fVisits : Integer;
      fDirectVisits : Integer;
      fStatus : Boolean;
    public
      // Provided code
      procedure changeStatus;
      function getStatus: Boolean;
      function getIP : String;

      // Code here



  end;

implementation

{ objMonitor }

function TMonitor.getStatus: Boolean; // Provided code
begin
  result := fStatus;
end;

function TMonitor.getIP: String; // Provided code
begin
  result := fIP;
end;

procedure TMonitor.changeStatus; // Provided code
begin
  fStatus := not fStatus;
end;

end.
