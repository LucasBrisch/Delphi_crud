object DmDatabase: TDmDatabase
  Height = 644
  Width = 838
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=Delphi_Crud'
      'User_Name=postgres'
      'Password=root'
      'DriverID=PG')
    Connected = True
    Left = 176
    Top = 88
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
  object SelectAlunos: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from alunos')
    Left = 72
    Top = 232
  end
end
