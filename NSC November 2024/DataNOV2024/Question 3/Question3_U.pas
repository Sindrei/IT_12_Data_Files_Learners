// Enter examination number here

unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage, ComCtrls;

type
  TfrmQuestion3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    gbxQ3_2_1: TGroupBox;
    gbxQ3_2_2: TGroupBox;
    gbxQ3_2_3: TGroupBox;
    redQ3: TRichEdit;
    Image1: TImage;
    edtQ3_2_1_Marathon: TEdit;
    edtQ3_2_1_RecordHolder: TEdit;
    edtQ3_2_1_RecordDate: TEdit;
    edtQ3_2_1_RecordTime: TEdit;
    edtQ3_2_3_Name: TEdit;
    edtQ3_2_3_Time: TEdit;
    btnQ3_2_1: TButton;
    btnQ3_2_2: TButton;
    btnQ3_2_3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    rgpQ3_2_1: TRadioGroup;
    procedure btnQ3_2_1Click(Sender: TObject);
    procedure btnQ3_2_2Click(Sender: TObject);
    procedure btnQ3_2_3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion3: TfrmQuestion3;

implementation

{$R *.dfm}

uses
  MRecord_U;

var
  objMRecord: TMRecord;

procedure TfrmQuestion3.btnQ3_2_1Click(Sender: TObject);
var
  sMarathonName, sRecordHolder, sRecordDate, sRecordTime: String;
begin
  // Provided code
  redQ3.Clear;
  sMarathonName := edtQ3_2_1_Marathon.Text;
  sRecordHolder := edtQ3_2_1_RecordHolder.Text;
  sRecordDate := edtQ3_2_1_RecordDate.Text;
  sRecordTime := edtQ3_2_1_RecordTime.Text;


  // Question 3.2.1


end;

procedure TfrmQuestion3.btnQ3_2_2Click(Sender: TObject);
begin
  // Provided code
  redQ3.Clear;

  // Question 3.2.2


end;

procedure TfrmQuestion3.btnQ3_2_3Click(Sender: TObject);
begin
  // Provided code
  redQ3.Clear;

  // Question 3.2.3


end;

end.
