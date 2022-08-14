object Frm_CadUsuario: TFrm_CadUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 251
  ClientWidth = 708
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
    Top = 0
    Width = 708
    Height = 251
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 706
      Height = 249
      Align = alClient
      ExplicitLeft = 2
      ExplicitTop = 2
    end
    object Lbl_Nome: TLabel
      Left = 24
      Top = 16
      Width = 42
      Height = 19
      Caption = 'Nome'
    end
    object Lbl_Cpf: TLabel
      Left = 352
      Top = 16
      Width = 27
      Height = 19
      Caption = 'CPF'
    end
    object LbL_Identidade: TLabel
      Left = 504
      Top = 16
      Width = 75
      Height = 19
      Caption = 'Identidade'
    end
    object Lbl_UserName: TLabel
      Left = 24
      Top = 88
      Width = 71
      Height = 19
      Caption = 'Username'
    end
    object Lbl_Senha: TLabel
      Left = 326
      Top = 88
      Width = 43
      Height = 19
      Caption = 'Senha'
    end
    object Lbl_RepitaSenha: TLabel
      Left = 510
      Top = 88
      Width = 103
      Height = 19
      Caption = 'Repita a senha'
    end
    object Lbl_Adminstrador: TLabel
      Left = 24
      Top = 160
      Width = 105
      Height = 19
      Caption = 'Adminstrador?'
    end
    object Edt_Nome: TEdit
      Left = 24
      Top = 41
      Width = 313
      Height = 27
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object MaskEdit_Cpf: TMaskEdit
      Left = 352
      Top = 41
      Width = 137
      Height = 27
      EditMask = '999.999.999-99;0;_'
      MaxLength = 14
      TabOrder = 1
      Text = ''
    end
    object Edit_Identidade: TEdit
      Left = 504
      Top = 41
      Width = 169
      Height = 27
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit_UserName: TEdit
      Left = 24
      Top = 113
      Width = 281
      Height = 27
      TabOrder = 3
    end
    object Edit_Senha: TEdit
      Left = 326
      Top = 113
      Width = 163
      Height = 27
      PasswordChar = '*'
      TabOrder = 4
    end
    object Edit_RepitaSenha: TEdit
      Left = 510
      Top = 113
      Width = 163
      Height = 27
      PasswordChar = '*'
      TabOrder = 5
    end
    object Btn_Ok: TBitBtn
      Left = 358
      Top = 168
      Width = 139
      Height = 49
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 6
      OnClick = Btn_OkClick
    end
    object Btn_Cancelar: TBitBtn
      Left = 534
      Top = 168
      Width = 139
      Height = 49
      Kind = bkAbort
      NumGlyphs = 2
      TabOrder = 7
    end
    object CheckBox_Adm: TCheckBox
      Left = 144
      Top = 162
      Width = 97
      Height = 17
      Caption = 'N'#227'o'
      TabOrder = 8
      OnClick = CheckBox_AdmClick
    end
  end
end
