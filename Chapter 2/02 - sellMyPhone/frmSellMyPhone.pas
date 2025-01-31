unit frmSellMyPhone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, PhoneClass, DateUtils;

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
    edtDate: TEdit;
    Label6: TLabel;
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
  iCount: Integer = 1;

implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
var
  sBrand, sModel, sOwner: String;
  dtPurhaseDate: TDateTime;
  dPrice: Double;
begin
  // add test code here
  sBrand := cbxBrand.Text;
  sModel := edtModel.Text;
  sOwner := edtOwner.Text;
  dtPurhaseDate := StrToDate(edtDate.Text);
  dPrice := StrToFloat(edtPrice.Text);

  objPhone := TPhone.create(sBrand, sModel, sOwner, dtPurhaseDate, dPrice);

  sgrPhones.Cells[0, iCount] := objPhone.getPhone;
  sgrPhones.Cells[1, iCount] := IntToStr(objPhone.calculateAge);
  sgrPhones.Cells[2, iCount] := FloatToStrF(objPhone.getPrice,
    ffCurrency, 8, 2);

  inc(iCount);

end;

// given code do not remove
procedure TForm1.FormShow(Sender: TObject);
begin
  sgrPhones.Cells[0, 0] := 'Cell Phone';
  sgrPhones.Cells[1, 0] := 'Age';
  sgrPhones.Cells[2, 0] := 'Price';
end;

end.
