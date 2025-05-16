// Enter examination number here
unit Question1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, pngimage, ExtCtrls, Spin, math, jpeg;

type
  TfrmQuestion1 = class(TForm)
    grpQ1_1: TGroupBox;
    grpQ1_2: TGroupBox;
    grpQ1_3: TGroupBox;
    grpQ1_4: TGroupBox;
    grpQ1_5: TGroupBox;
    btnQ1_1_1: TButton;
    btnQ1_1_2: TButton;
    edtQ1_1_1: TEdit;
    spnQ1_1_2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtQ1_2_r: TEdit;
    edtQ1_2_h: TEdit;
    btnQ1_2: TButton;
    btnQ1_3: TButton;
    redQ1_3: TRichEdit;
    Label3: TLabel;
    chbQ1_4: TCheckBox;
    btnQ1_4: TButton;
    Label4: TLabel;
    Label5: TLabel;
    redQ1_4_P: TRichEdit;
    redQ1_4_NP: TRichEdit;
    btnQ1_5: TButton;
    cmbQ1_4: TComboBox;
    edtQ1_5: TEdit;
    lblQ1_2: TLabel;
    Image1: TImage;
    memQ1_5: TMemo;
    procedure btnQ1_1_1Click(Sender: TObject);
    procedure btnQ1_1_2Click(Sender: TObject);
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

procedure TfrmQuestion1.btnQ1_1_1Click(Sender: TObject);
begin
  // Question 1.1.1

end;

procedure TfrmQuestion1.btnQ1_1_2Click(Sender: TObject);
const
  NUMBER = 5.23247;
begin
  // Question 1.1.2

end;

procedure TfrmQuestion1.btnQ1_2Click(Sender: TObject);
begin
  // Question 1.2

end;

procedure TfrmQuestion1.btnQ1_3Click(Sender: TObject);
var
  tFile: textfile;
begin
  // Question 1.3

end;

procedure TfrmQuestion1.btnQ1_4Click(Sender: TObject);
begin
  // Question 1.4

end;

procedure TfrmQuestion1.btnQ1_5Click(Sender: TObject);
var
  sNameSurname, sCharacters: string;
begin
  // Provided code
  sNameSurname := edtQ1_5.Text;
  sCharacters := '@#$%^&';

  // Question 1.5

end;

end.
