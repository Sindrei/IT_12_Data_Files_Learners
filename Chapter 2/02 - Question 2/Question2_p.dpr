program Question2_p;

uses
  Forms,
  Question2_u in 'Question2_u.pas' {frmQuestion2},
  ExtraItem_cls in 'ExtraItem_cls.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQuestion2, frmQuestion2);
  Application.Run;
end.
