inherited DM_CadUsuarios: TDM_CadUsuarios
  OldCreateOrder = True
  Height = 673
  Width = 1037
  inherited FDConnection1: TFDConnection
    Connected = True
  end
  inherited FDTransaction_Aux: TFDTransaction
    Left = 344
    Top = 32
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 512
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 648
  end
  object FDQ_ListaUsuarios: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT a.ID, a.NOME, a.CPF, a.IDENT, a.USERNAME, a.SENHA, a.ADM'
      'FROM USUARIOS a '
      'ORDER BY a.NOME;')
    Left = 112
    Top = 120
    object FDQ_ListaUsuariosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ListaUsuariosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object FDQ_ListaUsuariosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object FDQ_ListaUsuariosIDENT: TStringField
      DisplayLabel = 'Identidade'
      FieldName = 'IDENT'
      Origin = 'IDENT'
      Size = 30
    end
    object FDQ_ListaUsuariosUSERNAME: TStringField
      DisplayLabel = 'Username'
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Required = True
      Size = 30
    end
    object FDQ_ListaUsuariosSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 50
    end
    object FDQ_ListaUsuariosADM: TBooleanField
      DisplayLabel = 'Adminstrador'
      FieldName = 'ADM'
      Origin = 'ADM'
    end
  end
  object DS_ListaUsuarios: TDataSource
    DataSet = FDQ_ListaUsuarios
    Left = 112
    Top = 184
  end
end
