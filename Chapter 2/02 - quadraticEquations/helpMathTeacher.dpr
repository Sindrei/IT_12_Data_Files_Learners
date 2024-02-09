program helpMathTeacher;

uses
  Forms,
  frmQuadraticEqn in 'frmQuadraticEqn.pas' {Form1},
  clsQuadratic_u in 'clsQuadratic_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
