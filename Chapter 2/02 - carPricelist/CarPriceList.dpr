program CarPriceList;

uses
  Forms,
  frmCar in 'frmCar.pas' {Form1},
  clsCar_u in 'clsCar_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
