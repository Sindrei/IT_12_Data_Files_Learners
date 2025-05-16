// Enter examination number here
unit Question4_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, pngimage, ExtCtrls, ComCtrls;

type
  TfrmQuestion4 = class(TForm)
    pgcQ4: TPageControl;
    tshQ4_1: TTabSheet;
    tshQ4_2: TTabSheet;
    pnlQ4_1Heading: TPanel;
    Label1: TLabel;
    redQ4_1: TRichEdit;
    imgQ4_1: TImage;
    btnQ4_1: TButton;
    pnlQ4_2Heading: TPanel;
    redQ4_2: TRichEdit;
    Label2: TLabel;
    Label3: TLabel;
    cmbQ4_2: TComboBox;
    memQ4_2: TMemo;
    btnReset: TBitBtn;
    procedure display2D;
    procedure btnResetClick(Sender: TObject);
    procedure cmbQ4_2Change(Sender: TObject);
    procedure btnQ4_1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion4: TfrmQuestion4;
  iCheck: Integer = 0;
  arrMarathons: array [1 .. 10] of String = (
    'Wally Hayward',
    'Sasol',
    'Soweto',
    'Jacaranda City',
    'Sasol',
    'Durban City',
    'Soweto',
    'Soweto',
    'Wally Hayward',
    'Soweto'
  );

  arrChar: array [1 .. 14, 1 .. 14] of char =
    (('u', 'x', 'v', 'm', 's', 'a', 's', 'o', 'l', 'f', 'k', 'j', 't', 'r'),
    ('u', 'm', 'g', 'e', 'n', 'i', 'w', 'a', 't', 'e', 'r', 'd', 's', 'e'),
    ('g', 'v', 'o', 'e', 't', 'v', 'a', 'n', 'a', 'f', 'r', 'i', 'k', 'a'),
    ('e', 'p', 'o', 'y', 'i', 'l', 'c', 'k', 'h', 'j', 's', 'd', 'f', 'd'),
    ('n', 'k', 'n', 'y', 's', 'n', 'a', 'f', 'o', 'r', 'e', 's', 't', 'u'),
    ('i', 's', 'y', 'd', 'b', 'c', 'r', 'g', 'h', 'k', 'c', 's', 'a', 'r'),
    ('w', 'a', 'l', 'l', 'y', 'h', 'a', 'y', 'w', 'a', 'r', 'd', 's', 'b'),
    ('a', 's', 'q', 'r', 't', 'n', 'n', 'j', 'h', 'e', 'r', 't', 'h', 'a'),
    ('t', 'o', 'e', 'r', 'y', 'b', 'd', 'r', 'h', 'k', 'l', 'g', 'd', 'n'),
    ('e', 'j', 'a', 'c', 'a', 'r', 'a', 'n', 'd', 'a', 'c', 'i', 't', 'y'),
    ('r', 'y', 'j', 'f', 'g', 'f', 'c', 'f', 'g', 'u', 'h', 'v', 'c', 'i'),
    ('k', 'h', 'h', 'l', 'p', 'h', 'i', 'l', 'l', 'c', 'r', 'e', 's', 't'),
    ('a', 'd', 'e', 'v', 'd', 's', 'o', 'w', 'e', 't', 'o', 'm', 'k', 'y'),
    ('p', 'd', 'u', 'r', 'b', 'a', 'n', 'c', 'i', 't', 'y', 'z', 'c', 'l'));

implementation

{$R *.dfm}

procedure TfrmQuestion4.btnQ4_1Click(Sender: TObject);
begin
  // provided code
  redQ4_1.Paragraph.TabCount := 1;
  redQ4_1.Paragraph.Tab[0] := 130;
  redQ4_1.Lines.Add('Marathon name' + #9 + 'Number of times'+ #13);
  redQ4_1.Paragraph.Tab[0] := 170;

  // Question 4.1

end;

procedure TfrmQuestion4.cmbQ4_2Change(Sender: TObject);
begin
  // Question 4.2

end;

//=============================================================================
// Provided code - Do not change
//=============================================================================
{$REGION 'Provided code - Do not change'}
procedure TfrmQuestion4.display2D;
var
  iOut, iIn: Integer;
  sOut: string;
begin
  redQ4_2.Clear;
  for iOut := 1 to 14 do
  begin
    sOut := sOut + #9 + IntToStr(iOut);
  end;
  redQ4_2.Lines.Add('' + #9 + sOut + #13);
  for iOut := 1 to 14 do
  begin
    sOut := #13 + IntToStr(iOut) + #9;
    for iIn := 1 to 14 do
    begin
      if iCheck = 1 then
      Begin
        arrChar[iOut, iIn] := lowercase(arrChar[iOut, iIn] + '')[1];
        sOut := sOut + #9 + arrChar[iOut, iIn];
      End
      else
        sOut := sOut + #9 + arrChar[iOut, iIn];
    end;
    redQ4_2.Lines.Add(sOut);
  end;
  iCheck := 0;
end;

procedure TfrmQuestion4.FormCreate(Sender: TObject);
var
  iOut, iIn: Integer;
  sOut: string;
begin
   pgcQ4.ActivePageIndex := 0;
  // Q4.2
  redQ4_2.Clear;
  redQ4_2.Paragraph.TabCount := 15;
  redQ4_2.Paragraph.Tab[0] := 20;
  redQ4_2.Paragraph.Tab[1] := 40;
  redQ4_2.Paragraph.Tab[2] := 60;
  redQ4_2.Paragraph.Tab[3] := 80;
  redQ4_2.Paragraph.Tab[4] := 100;
  redQ4_2.Paragraph.Tab[5] := 120;
  redQ4_2.Paragraph.Tab[6] := 140;
  redQ4_2.Paragraph.Tab[7] := 160;
  redQ4_2.Paragraph.Tab[8] := 180;
  redQ4_2.Paragraph.Tab[9] := 200;
  redQ4_2.Paragraph.Tab[10] := 220;
  redQ4_2.Paragraph.Tab[11] := 240;
  redQ4_2.Paragraph.Tab[12] := 260;
  redQ4_2.Paragraph.Tab[13] := 280;
  redQ4_2.Paragraph.Tab[14] := 300;
  display2D;

end;

procedure TfrmQuestion4.btnResetClick(Sender: TObject);
Var
  i: Integer;
begin
  iCheck := 1;
  display2D;
end;

{$ENDREGION}
end.

