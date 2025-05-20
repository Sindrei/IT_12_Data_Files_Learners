program Question1_p;

uses
  Forms,
  Question1_u in 'Question1_U.pas' {frmQuestion1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion1, frmQuestion1);
  Application.Run;
end.
