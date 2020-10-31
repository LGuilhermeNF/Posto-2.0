object PrincipalForm: TPrincipalForm
  Left = 0
  Top = 0
  Caption = 'Posto Sistema'
  ClientHeight = 440
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 440
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 16
    object Cadastro2: TMenuItem
      Caption = '&Cadastro'
      object anque1: TMenuItem
        Caption = '&Tanque'
        OnClick = anque1Click
      end
      object Bomba1: TMenuItem
        Caption = '&Bomba'
        OnClick = Bomba1Click
      end
      object Combustvel1: TMenuItem
        Caption = 'Combust'#237'vel'
        OnClick = Combustvel1Click
      end
      object Frentista1: TMenuItem
        Caption = '&Frentista'
        OnClick = Frentista1Click
      end
    end
    object Movimento1: TMenuItem
      Caption = '&Movimento'
      object Abastecer1: TMenuItem
        Caption = '&Abastecer (Venda)'
        OnClick = Abastecer1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = '&Relat'#243'rio'
      object RelaodeAbastecimento1: TMenuItem
        Caption = 'Rela'#231#227'o de Abastecimento (Venda)'
        OnClick = RelaodeAbastecimento1Click
      end
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
