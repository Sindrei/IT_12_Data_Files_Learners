unit frmSellMyPhone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, clsPhone_u, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    sgrPhones: TStringGrid;
    cbxBrand: TComboBox;
    edtModel: TEdit;
    edtOwner: TEdit;
    edtPrice: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnSave: TButton;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  objPhone: TPhone;
  iRow: Integer = 0;

implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
var
  sBrand, sModel, sOwner: String;
  dtPurchaseDate, dtListDate: TDateTime;
  rPrice: Real;
begin
  // add test code here
  sBrand := cbxBrand.Text;
  sModel := edtModel.Text;
  sOwner := edtOwner.Text;
  dtPurchaseDate := DateTimePicker1.DateTime;
  rPrice := StrToFloat(edtPrice.Text);
  dtListDate := Now;

  objPhone := TPhone.Create(sBrand, sModel, sOwner, dtPurchaseDate,
    dtListDate, rPrice);

  inc(iRow);
  sgrPhones.Cells[0, iRow] := objPhone.getName;
  sgrPhones.Cells[1, iRow] := inttostr(objPhone.calculateAge);
  sgrPhones.Cells[2, iRow] := FloatToStrF(objPhone.getPrice, ffCurrency, 8, 2);
end;

// given code do not remove
procedure TForm1.FormShow(Sender: TObject);
begin
  sgrPhones.Cells[0, 0] := 'Cell Phone';
  sgrPhones.Cells[1, 0] := 'Age';
  sgrPhones.Cells[2, 0] := 'Price';
end;

end.
