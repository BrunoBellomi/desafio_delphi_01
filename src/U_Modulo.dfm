object DataModule1: TDataModule1
  OldCreateOrder = True
  Height = 294
  Width = 450
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Rato\codigos\desafio_delphi_01\data\BANCO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 58
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_1\bin\fbclient.dll'
    Left = 58
    Top = 102
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 174
  end
end
