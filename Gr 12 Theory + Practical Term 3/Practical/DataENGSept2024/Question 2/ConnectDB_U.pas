unit ConnectDB_U;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, Windows;

type
  TDataModule1 = class(TDataModule)
    adoC: TADOConnection;
    adoQ: TADOQuery;
    dsQry: TDataSource;
    tblUsers: TADOTable;
    tblOrders: TADOTable;
    dsUsers: TDataSource;
    dsOrders: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure execSQL(Sql: String);
    procedure execScalar(Sql: String);
    procedure restoreDb;
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  adoC.LoginPrompt := false;
  adoC.ConnectionString := 'Provider=Microsoft.JET.OLEDB.4.0; ' +
    'Data source=OrdersDB.mdb; ' + 'Persist Security Info = false';
  adoC.Connected := true;

  adoQ.Active := false;
  adoQ.Connection := adoC;
  adoQ.Sql.Clear;
//   adoQ.SQL.Add('SELECT * FROM tblOrders');
//   adoQ.Active := true;

  dsQry.DataSet := adoQ;

  tblUsers.Active := false;
  tblUsers.Connection := adoC;
  tblUsers.TableName := 'tblUsers';
  tblUsers.Active := true;

  dsUsers.DataSet := tblUsers;

  tblOrders.Active := false;
  tblOrders.Connection := adoC;
  tblOrders.TableName := 'tblOrders';
  tblOrders.Active := true;

  dsOrders.DataSet := tblOrders;
end;

procedure TDataModule1.execScalar(Sql: String);
begin
  if length(Sql) = 0 then
  begin
    MessageDlg('ERROR: No SQL provided', mtError, [mbOK], 0);
    Exit;
  end;

  try
    adoQ.Active := false;
    adoQ.Sql.Clear;
    adoQ.Sql.Add(Sql);
    adoQ.execSQL;

  except
    ShowMessage('Code could not execute');
  end;

  try
    adoQ.Active := false;
    adoQ.Sql.Clear;
    adoQ.Sql.Add('SELECT * FROM tblOrders');
    adoQ.Active := true;
  except
    ShowMessage('Code could not execute');
  end;
end;

procedure TDataModule1.execSQL(Sql: String);
begin
  if length(Sql) = 0 then
  begin
    MessageDlg('ERROR: No SQL provided', mtError, [mbOK], 0);
    Exit;
  end;

  try
    adoQ.Active := false;
    adoQ.Sql.Clear;
    adoQ.Sql.Add(Sql);
    adoQ.Active := true;
  except
    ShowMessage('Code could not execute');
  end;

end;

procedure TDataModule1.restoreDb;
begin
  adoQ.Active := false;
  tblUsers.Active := false;
  tblOrders.Active := false;
  adoC.Connected := false;

  DeleteFile('OrdersDB.mdb');
  CopyFile('OrdersDB - Copy.mdb', 'OrdersDB.mdb', false);

  DataModuleCreate(DataModule1);

  ShowMessage('The database has been restored.');
end;

end.
