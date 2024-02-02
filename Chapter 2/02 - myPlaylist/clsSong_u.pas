unit clsSong_u;

interface

uses
  System.SysUtils;

type
  TSong = class
  private
    fArtist: String;
    fSong: String;
    fAlbum: String;
    fTrackNumber: Integer;
    fDuration: Integer;
  public
    // Constructor
    constructor create(sArtist, sSong, sAlbum: String;
      iTrackNumber, iDuration: Integer);
    // accessor function (get)
    function getArtist: String;
    function getSong: String;
    function getAlbum: String;
    function getTrackNumber: Integer;
    function getDuration: Integer;
    // mutator methods (set)
    procedure setArtist(sArtist: String);
    procedure setSong(sSong: String);
    procedure setAlbum(sAlbum: String);
    procedure setTrackNumber(iTrackNumber: Integer);
    procedure setDuration(iDuration: Integer);
    // toString method
    function toString: String;
    function getQuickReference: String;
    function getMinuteDuration: String;
  end;

implementation

{ TSong }

constructor TSong.create(sArtist, sSong, sAlbum: String;
  iTrackNumber, iDuration: Integer);
begin
  fArtist := sArtist;
  fSong := sSong;
  fAlbum := sAlbum;
  fTrackNumber := iTrackNumber;
  fDuration := iDuration;
end;

function TSong.getAlbum: String;
begin
  result := fAlbum;
end;

function TSong.getArtist: String;
begin
  result := fArtist;
end;

function TSong.getDuration: Integer;
begin
  result := fDuration;
end;

function TSong.getMinuteDuration: String;
var
  iMin, iSec: Integer;
begin
  iMin := fDuration DIV 60;
  iSec := fDuration MOD 60;
  result := IntToStr(iMin) + ':' + IntToStr(iSec);
end;

function TSong.getQuickReference: String;
begin
  result := fSong + ',~' + fAlbum + ',~' + fArtist;
end;

function TSong.getSong: String;
begin
  result := fSong;
end;

function TSong.getTrackNumber: Integer;
begin
  result := fTrackNumber;
end;

procedure TSong.setAlbum(sAlbum: String);
begin
  fAlbum := sAlbum;
end;

procedure TSong.setArtist(sArtist: String);
begin
  fArtist := sArtist;
end;

procedure TSong.setDuration(iDuration: Integer);
begin
  fDuration := iDuration;
end;

procedure TSong.setSong(sSong: String);
begin
  fSong := sSong;
end;

procedure TSong.setTrackNumber(iTrackNumber: Integer);
begin
  fTrackNumber := iTrackNumber;
end;

function TSong.toString: String;
begin
  { fArtist: String;
    fSong: String;
    fAlbum: String;
    fTrackNumber: Integer;
    fDuration: Integer; }

  result := 'Artist: ' + fArtist + #10 + 'Song: ' + fSong + #10 + 'Album: ' +
    fAlbum + #10 + 'Track number: ' + IntToStr(fTrackNumber) + #10 +
    'fDuration: ' + IntToStr(fDuration);

end;

end.
