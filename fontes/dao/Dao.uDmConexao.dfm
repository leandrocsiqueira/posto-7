object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 217
  Width = 500
  PixelsPerInch = 120
  object fdConexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'Database=C:\Projetos\posto-7\fontes\db\POSTO7DB.FDB'
      'Port=3050'
      'Server=localhost'
      'DriverID=FB')
    Left = 104
    Top = 80
  end
  object fdLink: TFDPhysFBDriverLink
    Left = 216
    Top = 80
  end
  object fdCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 80
  end
end
