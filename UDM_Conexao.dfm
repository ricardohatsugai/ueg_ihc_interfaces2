object DM_Conexao: TDM_Conexao
  OldCreateOrder = False
  Height = 463
  Width = 731
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\ueg_ihc_interfaces2\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FDTransaction_principal
    UpdateTransaction = FDTransaction_Aux
    Left = 72
    Top = 32
  end
  object FDTransaction_principal: TFDTransaction
    Connection = FDConnection1
    Left = 184
    Top = 32
  end
  object FDTransaction_Aux: TFDTransaction
    Connection = FDConnection1
    Left = 184
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\ueg_ihc_interfaces2\fbclient.dll'
    Left = 456
    Top = 32
  end
end
