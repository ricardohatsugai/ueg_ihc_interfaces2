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
    Left = 664
    Top = 24
  end
  inherited FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 496
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
    object FDQ_ListaUsuariosID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ListaUsuariosNOME: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'nome'
      Size = 30
    end
    object FDQ_ListaUsuariosCPF: TWideStringField
      FieldName = 'CPF'
      Origin = 'cpf'
      Size = 11
    end
    object FDQ_ListaUsuariosIDENT: TWideStringField
      DisplayLabel = 'Identidade'
      FieldName = 'IDENT'
      Origin = 'ident'
      Size = 30
    end
    object FDQ_ListaUsuariosUSERNAME: TWideStringField
      DisplayLabel = 'Username'
      FieldName = 'USERNAME'
      Origin = 'username'
      Size = 30
    end
    object FDQ_ListaUsuariosSENHA: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'senha'
      Size = 50
    end
    object FDQ_ListaUsuariosADM: TBooleanField
      FieldName = 'ADM'
      Origin = 'adm'
      Required = True
    end
  end
  object DS_ListaUsuarios: TDataSource
    DataSet = FDQ_ListaUsuarios
    Left = 112
    Top = 184
  end
end
