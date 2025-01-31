program SellMyPhone;

uses
  Forms,
  frmSellMyPhone in 'frmSellMyPhone.pas' {Form1},
  PhoneClass in 'PhoneClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
