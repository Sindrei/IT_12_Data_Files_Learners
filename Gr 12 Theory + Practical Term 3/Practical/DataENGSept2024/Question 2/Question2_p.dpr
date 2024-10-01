program Question2_p;

uses
  Forms,
  Question2_u in 'Question2_u.pas' {frmQuestion2},
  ConnectDB_U in 'ConnectDB_U.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion2, frmQuestion2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
