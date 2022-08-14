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
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 568
  end
  object FDQ_ListaDespesa: TFDQuery
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
    object FDQ_ListaDespesaID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDQ_ListaDespesaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object FDQ_ListaDespesaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object FDQ_ListaDespesaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object DS_ListaDespesas: TDataSource
    DataSet = FDQ_ListaDespesa
    Left = 72
    Top = 184
  end
end
