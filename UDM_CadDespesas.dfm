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
  object FDQ_ListaDespesa: TFDQuery [4]
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT a.ID, a."DATA", a.DESCRICAO, a.VALOR'
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
  end
  object DS_ListaDespesas: TDataSource [5]
    DataSet = FDQ_ListaDespesa
    Left = 72
    Top = 184
  end
end
