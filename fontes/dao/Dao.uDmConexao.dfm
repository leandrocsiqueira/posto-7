object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 437
  Width = 874
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
    Left = 104
    Top = 176
  end
  object fdCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 104
    Top = 272
  end
end
