program coneCalculations;

uses
  Forms,
  frmConeCalculations in 'frmConeCalculations.pas' {Form1},
  coneClass in 'coneClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
