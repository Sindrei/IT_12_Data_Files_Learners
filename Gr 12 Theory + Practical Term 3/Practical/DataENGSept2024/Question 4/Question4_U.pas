// Enter your name and surname here

unit Question4_U;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ComCtrls,
  ExtCtrls, Jpeg, Math, Spin;

type
  TfrmQuestion4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    redQ4: TRichEdit;
    btnQ4_1: TButton;
    btnQ4_2: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    cmbQ4_1: TComboBox;
    memStorm: TMemo;
    gbxQ4: TGroupBox;
    spnQ4_1: TSpinEdit;
    procedure btnQ4_1Click(Sender: TObject);
    procedure btnQ4_2Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmQuestion4: TfrmQuestion4;

  arrWindSpeed: array [1 .. 5, 1 .. 2] of String = (('1', '74 to 95 mph'),
    ('2', '96 to 110 mph'), ('3', '111 to 129 mph'), ('4', '130 to 156 mph'),
    ('5', '157 mph or higher'));

implementation

{$R *.dfm}

procedure TfrmQuestion4.btnQ4_1Click(Sender: TObject);
begin
  // Question 4.1

end;

procedure TfrmQuestion4.btnQ4_2Click(Sender: TObject);
begin
  // Provided code
  redQ4.Clear;

  // Question 4.2

end;

end.
