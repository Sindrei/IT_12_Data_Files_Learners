program MyPlaylist;

uses
  Forms,
  frmPlayList in 'frmPlayList.pas' {frmSong},
  clsSong_u in 'clsSong_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSong, frmSong);
  Application.Run;
end.
