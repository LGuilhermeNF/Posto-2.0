object MovimentoPrForm: TMovimentoPrForm
  Left = 267
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Movimento - Abastecer (Venda)'
  ClientHeight = 214
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    400
    214)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 176
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvLowered
    BorderWidth = 4
    TabOrder = 0
    object Label2: TLabel
      Left = 106
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Data Movimento'
    end
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 11
      Top = 120
      Width = 40
      Height = 13
      Caption = 'Frentista'
    end
    object Label4: TLabel
      Left = 201
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Tanque'
    end
    object Label5: TLabel
      Left = 298
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Bomba'
    end
    object Label6: TLabel
      Left = 11
      Top = 72
      Width = 59
      Height = 13
      Caption = 'Combust'#237'vel'
    end
    object Label7: TLabel
      Left = 201
      Top = 73
      Width = 37
      Height = 13
      Caption = 'R$ Litro'
    end
    object Label8: TLabel
      Left = 298
      Top = 73
      Width = 78
      Height = 13
      Caption = 'Quantidade Litro'
    end
    object Label9: TLabel
      Left = 298
      Top = 120
      Width = 75
      Height = 13
      Caption = 'R$ Total Venda'
    end
    object DBEdit2: TDBEdit
      Left = 106
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 1
    end
    object DBComboBox1: TDBComboBox
      Left = 11
      Top = 88
      Width = 182
      Height = 21
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 201
      Top = 88
      Width = 87
      Height = 21
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 298
      Top = 88
      Width = 87
      Height = 21
      TabOrder = 4
    end
    object DBComboBox2: TDBComboBox
      Left = 199
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 5
    end
    object DBComboBox3: TDBComboBox
      Left = 298
      Top = 31
      Width = 87
      Height = 21
      TabOrder = 6
    end
    object DBComboBox4: TDBComboBox
      Left = 11
      Top = 135
      Width = 277
      Height = 21
      TabOrder = 7
    end
    object MaskEdit1: TMaskEdit
      Left = 298
      Top = 135
      Width = 78
      Height = 21
      Color = clBlue
      EditMask = '###,##0.00;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 8
      Text = ''
    end
  end
  object ProcessaBtn: TBitBtn
    Left = 99
    Top = 183
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Processa'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000008080008080
      0080800080800080807F7F7F0000000080800080800080800080800080800080
      8000808000808000808000808000808000808000808000808000808000000000
      0000008080008080008080008080008080008080008080008080008080008080
      00808000808000808000808000000000FFFF0000000080800080800080800080
      8000808000808000808000808000808000808000808000000000000000000000
      000000FFFF000000008080008080008080008080008080008080008080008080
      00808000808000000000FFFF00FFFF00FFFF00FFFF00FFFF0000000080800080
      80008080008080008080008080008080008080008080008080000000FFFFFF00
      FFFF000000000000000000000000008080008080008080008080008080008080
      00808000808000808000000000FFFF00FFFF00FFFF0000000080800080800080
      8000808000808000808000808000808000000000000000000000000000000000
      FFFFFFFFFF00FFFF000000008080008080008080008080008080008080008080
      000000FFFFFF00FFFF00FFFF00FFFFFFFFFF00FFFF00FFFF00FFFF0000000080
      80008080008080008080008080008080008080000000FFFFFF00FFFFFFFFFF00
      FFFF000000000000000000000000000000008080008080008080008080008080
      00808000000000FFFFFFFFFF00FFFFFFFFFF00FFFF0000000080800080800080
      8000808000808000808000808000808000808000808000000000FFFFFFFFFF00
      FFFFFFFFFF00FFFF000000008080008080008080008080008080008080008080
      008080008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000080
      80008080008080008080008080008080008080008080008080000000FFFFFF00
      FFFFFFFFFFFFFFFF00FFFFFFFFFF000000008080008080008080008080008080
      0080800080800080800000000000000000000000000000000000000000000000
      0000000000808000808000808000808000808000808000808000808000808000
      8080008080008080008080008080008080008080008080008080}
    Spacing = 2
    TabOrder = 1
    OnClick = ProcessaBtnClick
  end
  object FechaBtn: TBitBtn
    Left = 226
    Top = 183
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Cancel = True
    Caption = 'Fecha'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = FechaBtnClick
  end
end
