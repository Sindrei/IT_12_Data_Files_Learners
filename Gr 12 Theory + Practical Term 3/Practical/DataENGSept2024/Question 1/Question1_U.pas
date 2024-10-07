// Enter your name and surname here

unit Question1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Spin, Math;

type
  TfrmQuestion1 = class(TForm)
    grpQ1_1: TGroupBox;
    btnQ1_1: TButton;
    pnlQ1_1: TPanel;
    grpQ1_4: TGroupBox;
    btnQ1_4: TButton;
    grpQ1_2: TGroupBox;
    btnQ1_3: TButton;
    grpQ1_3: TGroupBox;
    btnQ1_5: TButton;
    lstQ1_5: TListBox;
    edtQ1_3: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cmbQ1_2: TComboBox;
    btnQ1_2: TButton;
    procedure btnQ1_1Click(Sender: TObject);
    procedure btnQ1_2Click(Sender: TObject);
    procedure btnQ1_3Click(Sender: TObject);
    procedure btnQ1_4Click(Sender: TObject);
    procedure btnQ1_5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion1: TfrmQuestion1;

implementation

{$R *.dfm}

procedure TfrmQuestion1.btnQ1_1Click(Sender: TObject);
begin
  // Question 1.1 (5)
  pnlQ1_1.Caption := 'Web design';
  pnlQ1_1.Font.Name := 'Consolas';
  pnlQ1_1.Font.Style := [fsBold, fsUnderline];
  pnlQ1_1.Font.Size := 24;
end;

procedure TfrmQuestion1.btnQ1_2Click(Sender: TObject);
begin
  // Question 1.2 (7)
  { case cmbQ1_2.ItemIndex of
    - 1:
    ShowMessage('Incorrect response');
    0:
    ShowMessage('While/Repeat Until loop');
    1:
    ShowMessage('For loop');
    end; }

  if cmbQ1_2.Text = 'Conditional' then
    ShowMessage('While/Repeat Until loop')
  else if cmbQ1_2.Text = 'Unconditional' then
    ShowMessage('For loop')
  else
    ShowMessage('Incorrect response');

end;

procedure TfrmQuestion1.btnQ1_3Click(Sender: TObject);
var
  iX, iNum, iSum: Integer;
begin
  // Question 1.3 (10)
  iSum := 0;
  for iX := 1 to 5 do
  begin
    iNum := StrToInt(InputBox('Numbers', 'Enter a number: ', ''));
    if iNum MOD 2 = 0 then
      iSum := iSum + iNum;
  end;
  edtQ1_3.Text := 'Sum: ' + IntToStr(iSum);
end;

procedure TfrmQuestion1.btnQ1_4Click(Sender: TObject);
var
  iRandomNumber, iCount, iGuess: Integer;
begin
  // Question 1.4
  iCount := 0;
  iRandomNumber := RandomRange(1, 11);
  repeat
    inc(iCount);
    iGuess := StrToInt(InputBox('Guess', 'Enter a number: ', ''));
    if iGuess > iRandomNumber then
      ShowMessage('Too High!')
    else if iGuess < iRandomNumber then
      ShowMessage('Too Low!')
    else
    begin
      ShowMessage('You Win!' + #10 + 'Number of Guesses: ' + IntToStr(iCount));
    end;
  until ((iCount = 3) OR (iGuess = iRandomNumber));

  if iGuess <> iRandomNumber then
    ShowMessage('You lost! The correct number was: ' + IntToStr(iRandomNumber));

end;

procedure TfrmQuestion1.btnQ1_5Click(Sender: TObject);
var
  iX, iNum1, iNum2, iSum: Integer;
begin
  // Provided code
  lstQ1_5.Clear;

  // Question 1.5
  iNum1 := 0;
  iNum2 := 1;

  lstQ1_5.Items.Add(IntToStr(iNum1));
  lstQ1_5.Items.Add(IntToStr(iNum2));

  for iX := 1 to 8 do
  begin
    iSum := iNum1 + iNum2;
    iNum1 := iNum2;
    iNum2 := iSum;
    lstQ1_5.Items.Add(IntToStr(iSum));
  end;
end;

end.
