Unit frmConeCalculations;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Buttons, coneClass, Vcl.ComCtrls;

Type
  TForm1 = Class(TForm)
    btnSlantHeight: TButton;
    btnVolume: TButton;
    btnSurfaceArea: TButton;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    sbnNewCone: TSpeedButton;
    Memo1: TRichEdit;
    cbxCone: TComboBox;
    btnDisplay: TButton;
    Procedure btnSlantHeightClick(Sender: TObject);
    Procedure btnVolumeClick(Sender: TObject);
    Procedure btnSurfaceAreaClick(Sender: TObject);
    procedure sbnNewConeClick(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
  Private
    { Private declarations }

  Public
    { Public declarations }

  End;

Var
  Form1: TForm1;
  // objCone: TCone;
  objCone: array [1 .. 10] of TCone;
  iCounter: Integer = 1;

Implementation

{$R *.dfm}

procedure TForm1.btnDisplayClick(Sender: TObject);
var
  index: Integer;
begin
  index := cbxCone.ItemIndex + 1;

  Memo1.Clear;
  Memo1.Lines.Add(objCone[cbxCone.ItemIndex + 1].toString);
  { Memo1.Lines.Add('Calculations for cone' + #10#13 + 'New Cone object created:'
    + #13 + 'Height: ' + FloatToStrf(objCone[index].getHeight, ffFixed, 8, 2) +
    #13 + 'Diameter of base: ' + FloatToStrf(objCone[index].getBaseDiameter,
    ffFixed, 8, 2) + #10); }

end;

Procedure TForm1.btnSlantHeightClick(Sender: TObject);
Begin
  Image2.Stretch := True;
  Image2.Picture.LoadFromFile('SlantHeight2.png');
  // enter code here
  Memo1.Lines.Add('Slant height: ' + #9 +
    FloatToStrf(objCone[cbxCone.ItemIndex + 1].slantHeight, ffFixed, 8,
    5) + #10);

End;

Procedure TForm1.btnVolumeClick(Sender: TObject);
Begin
  Image2.Picture.LoadFromFile('Volume.png');
  // enter code here
  Memo1.Lines.Add('Slant volume: ' + #9 +
    FloatToStrf(objCone[cbxCone.ItemIndex + 1].volume, ffFixed, 8, 5) + #10);
End;

Procedure TForm1.btnSurfaceAreaClick(Sender: TObject);
Begin
  Image2.Picture.LoadFromFile('SurfaceArea.png');
  // enter code here
  Memo1.Lines.Add('Surface area: ' + #9 +
    FloatToStrf(objCone[cbxCone.ItemIndex + 1].surfaceArea, ffFixed, 8,
    5) + #10);
End;

procedure TForm1.sbnNewConeClick(Sender: TObject);
Var
  height: Double;
  diameter: Double;
Begin
  // enter code here
  height := StrToFloat(InputBox('Height', 'Enter the Height: ', ''));
  diameter := StrToFloat(InputBox('Diameter', 'Enter the Diameter: ', ''));
  objCone[iCounter] := TCone.create(height, diameter);

  cbxCone.Items.Add('Cone' + IntToStr(iCounter));

  Inc(iCounter);
  btnSlantHeight.Enabled := True;
  btnVolume.Enabled := True;
  btnSurfaceArea.Enabled := True;
end;

End.
