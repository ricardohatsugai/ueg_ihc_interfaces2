inherited DM_PesquisaDespesas: TDM_PesquisaDespesas
  OldCreateOrder = True
  Height = 594
  Width = 896
  inherited FDConnection1: TFDConnection
    Connected = True
  end
  inherited FDTransaction_Aux: TFDTransaction
    Left = 192
    Top = 104
  end
  object FDQ_PesqDespesasPorUsuario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from despesas '
      'where despesas.id_usuario =:usu '
      'and '
      'despesas.data between :dtini and :dtfim;')
    Left = 88
    Top = 200
    ParamData = <
      item
        Name = 'USU'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_PesqDespesasPorUsuarioid: TFDAutoIncField
      DisplayLabel = 'Id'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_PesqDespesasPorUsuariodata: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
    end
    object FDQ_PesqDespesasPorUsuariodescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 30
    end
    object FDQ_PesqDespesasPorUsuariovalor: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
    end
    object FDQ_PesqDespesasPorUsuarioid_usuario: TIntegerField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      Visible = False
    end
    object FDQ_PesqDespesasPorUsuarioUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = FDT_Usuario
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_usuario'
      Size = 30
      Lookup = True
    end
  end
  object DSPesqDespesasPorUsuario: TDataSource
    DataSet = FDQ_PesqDespesasPorUsuario
    Left = 88
    Top = 264
  end
  object FDT_Usuario: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'usuarios'
    TableName = 'usuarios'
    Left = 256
    Top = 200
    object FDT_Usuarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDT_Usuarionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object FDT_Usuariocpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 11
    end
    object FDT_Usuarioident: TWideStringField
      FieldName = 'ident'
      Origin = 'ident'
      Size = 30
    end
    object FDT_Usuariousername: TWideStringField
      FieldName = 'username'
      Origin = 'username'
      Size = 30
    end
    object FDT_Usuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object FDT_Usuarioadm: TBooleanField
      FieldName = 'adm'
      Origin = 'adm'
      Required = True
    end
  end
  object FDQ_Soma: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select SUM(despesas.valor) from despesas '
      'where despesas.id_usuario =:usu '
      'and '
      'despesas.data between :dtini and :dtfim;')
    Left = 256
    Top = 264
    ParamData = <
      item
        Name = 'USU'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_SomaExpr1000: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'Expr1000'
      Origin = 'Expr1000'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
