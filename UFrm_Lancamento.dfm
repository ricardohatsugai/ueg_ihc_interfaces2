object Frm_Lancamento: TFrm_Lancamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amento de despesa'
  ClientHeight = 181
  ClientWidth = 652
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
  object Lbl_Data: TLabel
    Left = 16
    Top = 16
    Width = 32
    Height = 19
    Caption = 'Data'
  end
  object Lbl_Descricao: TLabel
    Left = 152
    Top = 16
    Width = 67
    Height = 19
    Caption = 'Descri'#231#227'o'
  end
  object Lbl_Valor: TLabel
    Left = 488
    Top = 16
    Width = 37
    Height = 19
    Caption = 'Valor'
  end
  object DateTimePicker_Data: TDateTimePicker
    Left = 16
    Top = 41
    Width = 121
    Height = 27
    Date = 44787.731015057870000000
    Time = 44787.731015057870000000
    TabOrder = 0
  end
  object Edit_Descricao: TEdit
    Left = 152
    Top = 41
    Width = 321
    Height = 27
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object Edit_Valor: TEdit
    Left = 488
    Top = 41
    Width = 121
    Height = 27
    TabOrder = 2
  end
  object Btn_salvar: TBitBtn
    Left = 304
    Top = 96
    Width = 137
    Height = 49
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = Btn_salvarClick
    OnKeyPress = Btn_salvarKeyPress
  end
  object Btn_Cancelar: TBitBtn
    Left = 472
    Top = 96
    Width = 137
    Height = 49
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
  end
end
