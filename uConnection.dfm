object DmDatabase: TDmDatabase
  Height = 644
  Width = 838
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=Delphi_Crud'
      'User_Name=postgres'
      'Password=root'
      'DriverID=PG')
    Left = 232
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 
      'C:\Users\Lucas Zanlorenzi\Documents\GitHub\Delphi_crud\Delphi_cr' +
      'ud\lib\libpq.dll'
    Left = 120
    Top = 8
  end
  object insertQuery: TFDQuery
    Connection = Conexao
    Left = 40
    Top = 88
  end
  object SelectQuery: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from alunos')
    Left = 72
    Top = 232
  end
  object DeleteQuery: TFDQuery
    Connection = Conexao
    Left = 112
    Top = 88
  end
end
