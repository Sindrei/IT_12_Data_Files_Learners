program frmQuestion2_p;

uses
  Forms,
  Question2_U in 'Question2_U.pas' {frmQuestion2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion2, frmQuestion2);
  Application.Run;
end.
