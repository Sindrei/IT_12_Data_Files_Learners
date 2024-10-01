program Question3_p;

uses
  Forms,
  Question3_u in 'Question3_u.pas' {frmQuestion3},
  clsMonitor in 'clsMonitor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion3, frmQuestion3);
  Application.Run;
end.
