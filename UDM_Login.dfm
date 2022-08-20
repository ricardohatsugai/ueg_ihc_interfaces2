inherited DM_Login: TDM_Login
  OldCreateOrder = True
  Height = 639
  Width = 997
  inherited FDConnection1: TFDConnection
    Connected = True
  end
  inherited FDTransaction_Aux: TFDTransaction
    Left = 312
    Top = 32
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 440
  end
  object FDQ_Usuarios: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction_principal
    UpdateTransaction = FDTransaction_Aux
    SQL.Strings = (
      'Select * from usuarios')
    Left = 88
    Top = 120
    object FDQ_Usuariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Usuariosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object FDQ_Usuarioscpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 11
    end
    object FDQ_Usuariosident: TWideStringField
      FieldName = 'ident'
      Origin = 'ident'
      Size = 30
    end
    object FDQ_Usuariosusername: TWideStringField
      FieldName = 'username'
      Origin = 'username'
      Size = 30
    end
    object FDQ_Usuariossenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object FDQ_Usuariosadm: TBooleanField
      FieldName = 'adm'
      Origin = 'adm'
      Required = True
    end
  end
end
