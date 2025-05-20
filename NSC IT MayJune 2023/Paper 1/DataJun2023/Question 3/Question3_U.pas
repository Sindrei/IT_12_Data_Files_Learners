// Enter examination number here

unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SmartSwitch_U, StdCtrls, ComCtrls, Spin, ExtCtrls;

type
  TfrmQuestion3 = class(TForm)
    redQ3: TRichEdit;
    btnQ3_2_1: TButton;
    Panel1: TPanel;
    btnQ3_2_2: TButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    rgpQ3_2_2: TRadioGroup;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    lstQ3_2_1: TListBox;
    btnQ3_2_4: TButton;
    cmbQ3_2_1: TComboBox;
    Label1: TLabel;
    edtQ3_2_4: TEdit;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    lblTime: TLabel;
    btnQ3_2_3: TButton;
    procedure btnQ3_2_1Click(Sender: TObject);
    procedure btnQ3_2_2Click(Sender: TObject);
    procedure btnQ3_2_4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnQ3_2_3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion3: TfrmQuestion3;
  objSmartSwitch: TSmartSwitch;

implementation

{$R *.dfm}

procedure TfrmQuestion3.btnQ3_2_1Click(Sender: TObject);
begin
  // Provided code
  redQ3.Lines.Clear;

  // 3.2.1 Instantiate object

end;

procedure TfrmQuestion3.btnQ3_2_2Click(Sender: TObject);
begin
  // Provided code
  redQ3.Lines.Clear;

  // 3.2.2 Change switch status

end;

procedure TfrmQuestion3.btnQ3_2_3Click(Sender: TObject);
begin
  // Provided code
  redQ3.Lines.Clear;

  // 3.2.3 Write to file

end;

procedure TfrmQuestion3.btnQ3_2_4Click(Sender: TObject);

begin
  // Provided code
  redQ3.Lines.Clear;

  // 3.2.4 Power usage

end;

// Provided code
procedure TfrmQuestion3.FormCreate(Sender: TObject);
begin
   lblTime.Caption := TimeToStr(Time);
end;
// =================================================

end.
