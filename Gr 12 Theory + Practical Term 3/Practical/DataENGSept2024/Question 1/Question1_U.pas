// Enter your name and surname here

unit Question1_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Spin,Math;

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
// Question 1.1

end;

procedure TfrmQuestion1.btnQ1_2Click(Sender: TObject);
begin
// Question 1.2

end;

procedure TfrmQuestion1.btnQ1_3Click(Sender: TObject);
begin
// Question 1.3

end;

procedure TfrmQuestion1.btnQ1_4Click(Sender: TObject);
begin
// Question 1.4

end;

procedure TfrmQuestion1.btnQ1_5Click(Sender: TObject);
begin
// Provided code
  lstQ1_5.Clear;

// Question 1.5

end;

end.
