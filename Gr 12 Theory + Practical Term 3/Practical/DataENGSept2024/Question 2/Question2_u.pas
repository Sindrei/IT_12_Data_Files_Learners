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
  tblUsers, tblOrders : TAdoTable;

implementation

{$R *.dfm}

procedure TfrmQuestion2.btnQ2_1_1Click(Sender: TObject);
var
  sql1 : String;
begin
  // Question 2.1.1

  sql1 := '';

  // Provided code, do not change, edit or delete.
  ConnectDB_U.DataModule1.execSQL(sql1);
end;

procedure TfrmQuestion2.btnQ2_1_2Click(Sender: TObject);
var
  sql2 : String;
  sUserID : string;
begin
  // Provide code
  sUserID := InputBox('User ID', 'Please enter a user ID:', '1');

  // Question 2.1.2

  sql2 := '';

  // Provided code, do not change, edit or delete.
  ConnectDB_U.DataModule1.execSQL(sql2);
end;

procedure TfrmQuestion2.btnQ2_1_3Click(Sender: TObject);
var
  sql3 : String;
begin
  // Question 2.1.3

  sql3 := '';

  // Provided code, do not change, edit or delete.
  ConnectDB_U.DataModule1.execSQL(sql3);
end;

procedure TfrmQuestion2.btnQ2_1_4Click(Sender: TObject);
var
  sql4 : String;
begin
  // Question 2.1.4

  sql4 := '';

  // Provided code, do not change, edit or delete.
  ConnectDB_U.DataModule1.execSQL(sql4);
end;

procedure TfrmQuestion2.btnQ2_1_5Click(Sender: TObject);
var
  sql5 : String;
begin
  // Question 2.1.5

  sql5 := '';

  // Provided code, do not change, edit or delete.
  ConnectDB_U.DataModule1.execScalar(sql5);
end;

procedure TfrmQuestion2.btnQ2_2_1Click(Sender: TObject);
begin
  // Question 2.2.1

end;

procedure TfrmQuestion2.btn_RestoreDBClick(Sender: TObject);
begin
  // GIVEN CODE, DO NOT CHANGE, EDIT OR DELETE
  ConnectDB_U.DataModule1.restoreDb;
end;

procedure TfrmQuestion2.dbgClientsCellClick(Column: TColumn);
begin
  // GIVEN CODE, DO NOT CHANGE, EDIT OR DELETE
  redQ2_2.Clear;
end;

procedure TfrmQuestion2.FormShow(Sender: TObject);
begin
  // GIVEN CODE, DO NOT CHANGE, EDIT OR DELETE
  tblUsers := ConnectDB_U.DataModule1.tblUsers;
  tblOrders := ConnectDB_U.DataModule1.tblOrders;

  redQ2_2.Paragraph.TabCount := 3;
  redQ2_2.Paragraph.Tab[0] := 0;
  redQ2_2.Paragraph.Tab[1] := 75;
  redQ2_2.Paragraph.Tab[2] := 150;
end;

end.
