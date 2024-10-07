// Enter your name and surname here

unit Question2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, ConnectDb_U, Spin, DB,
  ADODB;

type
  TfrmQuestion2 = class(TForm)
    pcQuestion2: TPageControl;
    tsQ2_1: TTabSheet;
    tsQ2_2: TTabSheet;
    pnlQuestion2: TPanel;
    gbQ2_1: TGroupBox;
    dbgQ2_1: TDBGrid;
    btnQ2_1_1: TButton;
    btnQ2_1_2: TButton;
    btnQ2_1_3: TButton;
    btnQ2_1_4: TButton;
    gbQ2_Users: TGroupBox;
    dbgClients: TDBGrid;
    gbQ2_Orders: TGroupBox;
    dbgOrders: TDBGrid;
    btnQ2_2_1: TButton;
    redQ2_2: TRichEdit;
    btn_RestoreDB: TButton;
    btnQ2_1_5: TButton;
    procedure btnQ2_1_1Click(Sender: TObject);
    procedure btnQ2_1_2Click(Sender: TObject);
    procedure btnQ2_1_3Click(Sender: TObject);
    procedure btnQ2_1_4Click(Sender: TObject);
    procedure dbgClientsCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnQ2_2_1Click(Sender: TObject);
    procedure btn_RestoreDBClick(Sender: TObject);
    procedure btnQ2_1_5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion2: TfrmQuestion2;
  tblUsers, tblOrders: TAdoTable;

implementation

{$R *.dfm}

procedure TfrmQuestion2.btnQ2_1_1Click(Sender: TObject);
var
  sql1: String;
begin
  // Question 2.1.1

  sql1 := 'SELECT * FROM tblUsers ORDER BY Username';

  // Provided code, do not change, edit or delete.
  ConnectDb_U.DataModule1.execSQL(sql1);
end;

procedure TfrmQuestion2.btnQ2_1_2Click(Sender: TObject);
var
  sql2: String;
  sUserID: string;
begin
  // Provide code
  sUserID := InputBox('User ID', 'Please enter a user ID:', '1');

  // Question 2.1.2
  { Display the OrderID, OrderDate and TotalAmount of all orders that were
    placed by a user with a specific UserID (e.g., UserID = 1). }

  sql2 := 'SELECT OrderID, OrderDate, TotalAmount FROM tblOrders WHERE UserID = '
    + sUserID;

  // Provided code, do not change, edit or delete.
  ConnectDb_U.DataModule1.execSQL(sql2);
end;

procedure TfrmQuestion2.btnQ2_1_3Click(Sender: TObject);
var
  sql3: String;
begin
  // Question 2.1.3
  { Calculate and display the UserName and average order amount stored in a
    new field called Ave amount, for each customer,
    of all orders placed in June 2023. The Ave amount field must be formatted
    to currency. }
  sql3 := 'SELECT Username, FORMAT(AVG(TotalAmount), "Currency") AS [Ave amount] FROM tblUsers U, tblOrders O WHERE (Month(OrderDate) = 6 AND Year(OrderDate) = 2023) AND (O.UserID = U.UserID) GROUP BY Username';

  // Provided code, do not change, edit or delete.
  ConnectDb_U.DataModule1.execSQL(sql3);
end;

procedure TfrmQuestion2.btnQ2_1_4Click(Sender: TObject);
var
  sql4: String;
begin
  // Question 2.1.4
  { Active orders are orders that has not been completed yet. Display all the
    clients that have orders and the total number of active orders of these clients.
    Display the result in a calculated field called Active orders. }
  sql4 := 'SELECT Username, Count(*) AS [Active orders] FROM tblUsers U, tblOrders O WHERE Completed = False AND (U.UserID = O.UserID) GROUP by UserName';

  // Provided code, do not change, edit or delete.
  ConnectDb_U.DataModule1.execSQL(sql4);
end;

procedure TfrmQuestion2.btnQ2_1_5Click(Sender: TObject);
var
  sql5: String;
begin
  // Question 2.1.5

  sql5 := 'DELETE * FROM tblOrders WHERE Completed = True;';

  // Provided code, do not change, edit or delete.
  ConnectDb_U.DataModule1.execScalar(sql5);
end;

procedure TfrmQuestion2.btnQ2_2_1Click(Sender: TObject);
begin
  // Question 2.2.1
  tblUsers.First;
  while NOT tblUsers.Eof do
  begin
    redQ2_2.Lines.Add(tblUsers['Username']);
    tblOrders.First;
    while NOT tblOrders.Eof do
    begin
      if tblUsers['UserID'] = tblOrders['UserID'] then
        redQ2_2.Lines.Add(DateToStr(tblOrders['OrderDate']) + ' ' +
          FloatToStrF(tblOrders['TotalAmount'], ffCurrency, 8, 2));

      tblOrders.Next;
    end;

    tblUsers.Next;
  end;
end;

procedure TfrmQuestion2.btn_RestoreDBClick(Sender: TObject);
begin
  // GIVEN CODE, DO NOT CHANGE, EDIT OR DELETE
  ConnectDb_U.DataModule1.restoreDb;
end;

procedure TfrmQuestion2.dbgClientsCellClick(Column: TColumn);
begin
  // GIVEN CODE, DO NOT CHANGE, EDIT OR DELETE
  redQ2_2.Clear;
end;

procedure TfrmQuestion2.FormShow(Sender: TObject);
begin
  // GIVEN CODE, DO NOT CHANGE, EDIT OR DELETE
  tblUsers := ConnectDb_U.DataModule1.tblUsers;
  tblOrders := ConnectDb_U.DataModule1.tblOrders;

  redQ2_2.Paragraph.TabCount := 3;
  redQ2_2.Paragraph.Tab[0] := 0;
  redQ2_2.Paragraph.Tab[1] := 75;
  redQ2_2.Paragraph.Tab[2] := 150;
end;

end.
