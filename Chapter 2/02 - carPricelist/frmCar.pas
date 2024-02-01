unit frmCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Spin, pngimage, Vcl.Mask, clsCar_u;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    sgrCars: TStringGrid;
    edtModel: TLabeledEdit;
    edtPrice: TLabeledEdit;
    sedYear: TSpinEdit;
    cbxBrand: TComboBox;
    Label2: TLabel;
    btnSave: TButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  objCar: TCar;
  iRow: Integer;

implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
var
  sModel, sBrand: String;
  iYear: Integer;
  rRetailPrice: Real;
begin
  // inputs
  sModel := edtModel.Text;
  sBrand := cbxBrand.Text;
  iYear := sedYear.Value;
  rRetailPrice := StrToFloat(edtPrice.Text);
  // create object
  objCar := TCar.create(sModel, sBrand, iYear, rRetailPrice);
  // call object methods and display ingrid
  sgrCars.Cells[0, iRow] := objCar.getDetailedModel;
  sgrCars.Cells[1, iRow] := FloatToStrF(objCar.getVATPrice, ffCurrency, 10, 2);
  inc(iRow);
end;

// given code do not remove
procedure TForm1.FormShow(Sender: TObject);
begin
  sgrCars.Cells[0, 0] := 'Description';
  sgrCars.Cells[1, 0] := 'Price+VAT';
  sedYear.MaxValue := StrToInt(Formatdatetime('YYYY', now));
  iRow := 1;
end;

end.
