object DadosDm: TDadosDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object fdCon: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Port=3050'
      'CharacterSet=WIN1256'
      'Database=C:\Guilherme\db\POSTOSISTEMA_DB.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 48
  end
end
