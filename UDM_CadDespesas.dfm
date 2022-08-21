inherited DM_CadDespesas: TDM_CadDespesas
  OldCreateOrder = True
  Height = 697
  Width = 1055
  inherited FDConnection1: TFDConnection
    Connected = True
  end
  inherited FDTransaction_Aux: TFDTransaction
    Left = 312
    Top = 32
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 432
  end
  object FDQ_ListaDespesa: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT a.ID, a."DATA", a.DESCRICAO, a.VALOR, a.ID_USUARIO'
      'FROM DESPESAS a '
      'WHERE a."DATA" BETWEEN :dtini AND :dtfim '
      'ORDER BY A."DATA";')
    Left = 72
    Top = 112
    ParamData = <
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end>
    object FDQ_ListaDespesaID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ListaDespesaDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'data'
    end
    object FDQ_ListaDespesaDESCRICAO: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'descricao'
      Size = 30
    end
    object FDQ_ListaDespesaVALOR: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'valor'
    end
    object FDQ_ListaDespesaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'id_usuario'
    end
    object FDQ_ListaDespesaUSUARIO_LOOK: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldKind = fkLookup
      FieldName = 'USUARIO_LOOK'
      LookupDataSet = FDTable_Usuario
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'ID_USUARIO'
      Size = 30
      Lookup = True
    end
  end
  object DS_ListaDespesas: TDataSource
    DataSet = FDQ_ListaDespesa
    Left = 72
    Top = 184
  end
  object FDTable_Usuario: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'usuarios'
    TableName = 'usuarios'
    Left = 240
    Top = 112
    object FDTable_Usuarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable_Usuarionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object FDTable_Usuariocpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 11
    end
    object FDTable_Usuarioident: TWideStringField
      FieldName = 'ident'
      Origin = 'ident'
      Size = 30
    end
    object FDTable_Usuariousername: TWideStringField
      FieldName = 'username'
      Origin = 'username'
      Size = 30
    end
    object FDTable_Usuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object FDTable_Usuarioadm: TBooleanField
      FieldName = 'adm'
      Origin = 'adm'
      Required = True
    end
  end
end
