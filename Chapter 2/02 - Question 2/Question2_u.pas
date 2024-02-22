unit Question2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtraItem_cls;

type
  TfrmQuestion2 = class(TForm)
    Label1: TLabel;
    edtGuestNumber: TEdit;
    btnListItems: TButton;
    redDisplay: TRichEdit;
    procedure FormActivate(Sender: TObject);
    procedure btnListItemsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion2: TfrmQuestion2;
  arrObjItems: array of TExtraItem;
  myFile: TextFile;

implementation

{$R *.dfm}

procedure TfrmQuestion2.btnListItemsClick(Sender: TObject);
var
  iGuestNum: Integer;
  i: Integer;
begin
  iGuestNum := StrToInt(edtGuestNumber.Text);
  redDisplay.Clear;

  for i := low(arrObjItems) to high(arrObjItems) do
  begin
    if iGuestNum = arrObjItems[i].getGuestNum then
    begin
      redDisplay.Lines.Add(arrObjItems[i].toString);
    end;
  end;

  // redDisplay.Lines.Add(inttostr(arrObjItems[2].getGuestNum));
end;

procedure TfrmQuestion2.FormActivate(Sender: TObject);
var
  iCount, iPos, iGuestNum: Integer;
  sLine, sItemType: String;
  rPrice: Real;
begin
  redDisplay.Paragraph.TabCount := 3;
  redDisplay.Paragraph.Tab[0] := 80;
  redDisplay.Paragraph.Tab[1] := 140;
  redDisplay.Paragraph.Tab[2] := 200;
  // Read text file
  if NOT(FileExists('Extras.txt')) then
  begin
    showMessage('The file does not exist!');
    Application.Terminate;
  end
  else
  begin
    AssignFile(myFile, 'Extras.txt');
    Reset(myFile);

    // Determine the amount of entries in the text files
    iCount := 0;
    while not(Eof(myFile)) do
    begin
      Readln(myFile);
      iCount := iCount + 1;
    end; // while loop

    setLength(arrObjItems, iCount);
    Reset(myFile);
    iCount := 0;

    while not(Eof(myFile)) do
    begin
      Readln(myFile, sLine);
      // GuestNum
      iPos := Pos('#', sLine);
      iGuestNum := StrToInt(Copy(sLine, 1, iPos - 1));
      Delete(sLine, 1, iPos);

      iPos := Pos('#', sLine);
      Delete(sLine, 1, iPos);

      // Item type
      iPos := Pos('#', sLine);
      sItemType := Copy(sLine, 1, iPos - 1);
      Delete(sLine, 1, iPos);

      // Price
      rPrice := StrToFloat(Copy(sLine, 1, length(sLine)));

      arrObjItems[iCount] := TExtraItem.create(iGuestNum, sItemType, rPrice);
      iCount := iCount + 1;

    end;

  end;
end;

end.
