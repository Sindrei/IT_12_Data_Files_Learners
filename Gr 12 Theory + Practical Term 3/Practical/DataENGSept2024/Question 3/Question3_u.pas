// Enter your name and surname here

unit Question3_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, clsMonitor, ExtCtrls, ComCtrls;

type
  TfrmQuestion3 = class(TForm)
    gbQ3_2_1: TGroupBox;
    lblIP: TLabel;
    edtQ3_2_1: TEdit;
    cmbQ3_2_1: TComboBox;
    btnQ3_2_1: TButton;
    gbQ3_2_2: TGroupBox;
    shpQ3_2_2: TShape;
    btnQ3_2_2: TButton;
    gbQ3_2_4: TGroupBox;
    btnQ3_2_4: TButton;
    cbxQ3_2_4: TCheckBox;
    redQ3: TRichEdit;
    GroupBox1: TGroupBox;
    btnQ3_2_3: TButton;
    pnlQ3_2_3: TPanel;
    procedure btnQ3_2_1Click(Sender: TObject);
    procedure btnQ3_2_2Click(Sender: TObject);
    procedure btnQ3_2_3Click(Sender: TObject);
    procedure btnQ3_2_4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion3: TfrmQuestion3;
  objMonitor : TMonitor;

implementation

{$R *.dfm}

procedure TfrmQuestion3.btnQ3_2_1Click(Sender: TObject);
begin
  // Question 3.2.1

end;

procedure TfrmQuestion3.btnQ3_2_2Click(Sender: TObject);
begin
  // Question 3.2.2

end;

procedure TfrmQuestion3.btnQ3_2_3Click(Sender: TObject);
begin
  // Question 3.2.3

end;

procedure TfrmQuestion3.btnQ3_2_4Click(Sender: TObject);
var
  iNumOfVisits : Integer;
begin
  // Provided code
  iNumOfVisits := StrToInt(InputBox('Number of visits', 'Please enter number of website visits', '100'));

  // Question 3.2.4

end;

end.
