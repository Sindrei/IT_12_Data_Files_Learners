// Enter examination number here

unit Question4_U;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ComCtrls,
  ExtCtrls, Buttons, Spin, pngimage;

type
  TfrmQuestion4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnQ4_1: TButton;
    redQ4: TRichEdit;
    btnQ4_2: TButton;
    btnQ4_3: TButton;
    gbxQ4_3: TGroupBox;
    sedQ4_2_Row: TSpinEdit;
    sedQ4_3_Col: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    gbxQ4_1: TGroupBox;
    gbxQ4_2: TGroupBox;
    Image1: TImage;
    procedure btnQ4_1Click(Sender: TObject);
    procedure btnQ4_2Click(Sender: TObject);
    procedure btnQ4_3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmQuestion4: TfrmQuestion4;

  arrNetwork: array [1 .. 5, 1 .. 6] of char =
    (('_', 'A', '_', '_', '_', '_'), ('_', '_', '_', '_', '_', '_'),
    ('_', '_', '_', '_', 'A', '_'), ('_', '_', '_', '_', '_', '_'),
    ('_', 'A', '_', '_', '_', '_'));

implementation

{$R *.dfm}

procedure TfrmQuestion4.btnQ4_1Click(Sender: TObject);
begin
  // 4.1 Display

end;

procedure TfrmQuestion4.btnQ4_2Click(Sender: TObject);
begin
  // 4.2 Add access point

end;

procedure TfrmQuestion4.btnQ4_3Click(Sender: TObject);
begin
  // 4.3 Coverage

end;


end.
