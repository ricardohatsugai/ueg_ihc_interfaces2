object Frm_PesqDespesasPorDatasEUsuario: TFrm_PesqDespesasPorDatasEUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de despesas por usu'#225'rio e entre datas'
  ClientHeight = 645
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 96
    Width = 1078
    Height = 549
    Align = alBottom
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 1076
      Height = 547
      Align = alClient
      ExplicitLeft = 288
      ExplicitTop = 144
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1076
      Height = 547
      Align = alClient
      DataSource = DM_PesquisaDespesas.DSPesqDespesasPorUsuario
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 352
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_usuario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1078
    Height = 96
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 384
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 1076
      Height = 94
      Align = alClient
      ExplicitLeft = 144
      ExplicitTop = 32
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 60
      Height = 19
      Caption = 'Usu'#225'rio:'
    end
    object Label2: TLabel
      Left = 368
      Top = 16
      Width = 83
      Height = 19
      Caption = 'Data inicial:'
    end
    object Label3: TLabel
      Left = 616
      Top = 16
      Width = 73
      Height = 19
      Caption = 'Data final:'
    end
    object Label4: TLabel
      Left = 24
      Top = 56
      Width = 119
      Height = 19
      Caption = 'Despesas totais: '
    end
    object ComboBox1: TComboBox
      Left = 90
      Top = 13
      Width = 231
      Height = 27
      Style = csDropDownList
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 457
      Top = 13
      Width = 128
      Height = 27
      Date = 44794.005868067130000000
      Time = 44794.005868067130000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 705
      Top = 13
      Width = 128
      Height = 27
      Date = 44794.005868067130000000
      Time = 44794.005868067130000000
      TabOrder = 2
    end
    object btn_Pesquisar: TBitBtn
      Left = 864
      Top = 6
      Width = 137
      Height = 41
      Caption = '&Pesquisar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btn_PesquisarClick
    end
    object Edit1: TEdit
      Left = 149
      Top = 53
      Width = 196
      Height = 27
      ReadOnly = True
      TabOrder = 4
    end
  end
end
