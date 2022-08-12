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
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 576
  end
  object FDQ_Usuarios: TFDQuery
    Connection = FDConnection1
    Transaction = FDTransaction_principal
    UpdateTransaction = FDTransaction_Aux
    SQL.Strings = (
      'Select * from usuarios')
    Left = 88
    Top = 120
    object FDQ_UsuariosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_UsuariosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object FDQ_UsuariosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object FDQ_UsuariosIDENT: TStringField
      DisplayLabel = 'Identidade'
      FieldName = 'IDENT'
      Origin = 'IDENT'
      Size = 30
    end
    object FDQ_UsuariosUSERNAME: TStringField
      DisplayLabel = 'Username'
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Required = True
      Size = 30
    end
    object FDQ_UsuariosSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 50
    end
    object FDQ_UsuariosADM: TBooleanField
      FieldName = 'ADM'
      Origin = 'ADM'
    end
  end
end
