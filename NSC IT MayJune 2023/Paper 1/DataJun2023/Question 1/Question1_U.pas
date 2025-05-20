// Enter examination number here

unit Question1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, pngimage;

type
  TfrmQuestion1 = class(TForm)
    grpQ1_1: TGroupBox;
    edtQ1_1: TEdit;
    btnQ1_1: TButton;
    grpQ1_2: TGroupBox;
    btnQ1_2: TButton;
    pnlQ1_2: TPanel;
    grpQ1_4: TGroupBox;
    redQ1_4: TRichEdit;
    Label1: TLabel;
    btn1_4: TButton;
    grpQ1_3: TGroupBox;
    grpQ1_5: TGroupBox;
    Image1: TImage;
    Label2: TLabel;
    edtQ1_3: TEdit;
    Label3: TLabel;
    btnQ1_3: TButton;
    pnlQ1_3: TPanel;
    btnQ1_5: TButton;
    redQ1_5: TRichEdit;
    edtQ1_4: TEdit;
    procedure btnQ1_1Click(Sender: TObject);
    procedure btnQ1_2Click(Sender: TObject);
    procedure btn1_4Click(Sender: TObject);
    procedure btnQ1_3Click(Sender: TObject);
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
  // 1.1 Formatting

end;

procedure TfrmQuestion1.btnQ1_2Click(Sender: TObject);
begin
  // 1.2 Random number

end;

procedure TfrmQuestion1.btnQ1_3Click(Sender: TObject);
begin
  // 1.3 Area

end;

procedure TfrmQuestion1.btn1_4Click(Sender: TObject);
var
  tFile: textfile;

begin
  // Provided code
  redQ1_4.Clear;
  AssignFile(tFile, 'Words.txt');
  Reset(tFile);

  // 1.4 Find

end;

procedure TfrmQuestion1.btnQ1_5Click(Sender: TObject);
begin
  // Provided code
  redQ1_5.Clear;
  redQ1_5.Paragraph.TabCount := 3;
  redQ1_5.Paragraph.tab[0] := 1;
  redQ1_5.Paragraph.tab[1] := 50;
  redQ1_5.Paragraph.tab[2] := 150;
  redQ1_5.Lines.Add('Seconds' + #9 + 'Fuel used' + #9 +'Fuel left');

  // 1.5 Booster rocket

end;
end.
