object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 324
  Width = 484
  object adoC: TADOConnection
    Left = 24
    Top = 16
  end
  object adoQ: TADOQuery
    Parameters = <>
    Left = 152
    Top = 16
  end
  object dsQry: TDataSource
    Left = 184
    Top = 16
  end
  object tblUsers: TADOTable
    Left = 152
    Top = 72
  end
  object tblOrders: TADOTable
    Left = 152
    Top = 120
  end
  object dsUsers: TDataSource
    Left = 200
    Top = 72
  end
  object dsOrders: TDataSource
    Left = 200
    Top = 120
  end
end
