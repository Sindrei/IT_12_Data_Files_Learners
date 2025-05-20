program Question4_P;

uses
  Forms,
  Question4_U in 'Question4_U.pas' {frmQuestion4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion4, frmQuestion4);
  Application.Run;
end.
