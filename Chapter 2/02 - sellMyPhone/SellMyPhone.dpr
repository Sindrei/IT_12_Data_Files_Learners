program SellMyPhone;

uses
  Forms,
  frmSellMyPhone in 'frmSellMyPhone.pas' {Form1},
  clsPhone_u in 'clsPhone_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
