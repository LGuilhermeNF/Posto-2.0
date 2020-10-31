inherited frmAbastecimento: TfrmAbastecimento
  Caption = 'Movimento - Abastecer'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ExplicitLeft = -40
    ExplicitTop = 240
    inherited tbPesq: TTabSheet
      ExplicitWidth = 691
      ExplicitHeight = 430
      inherited pnlBtnsPesq: TPanel
        ExplicitTop = 389
        ExplicitWidth = 691
      end
    end
    inherited tbDados: TTabSheet
      ExplicitLeft = 468
      ExplicitTop = 200
      ExplicitWidth = 691
      ExplicitHeight = 430
      inherited Panel2: TPanel
        ExplicitTop = 389
        ExplicitWidth = 691
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 272
        Top = 88
        Width = 145
        Height = 21
        DataField = 'COD_MOVIMENTO'
        DataSource = dsCadastro
        KeyField = 'COD_TANQUE'
        ListField = 'DES_TANQUE'
        ListSource = dsAuxiliar
        TabOrder = 1
      end
    end
  end
  inherited pnlCadastro: TPanel
    ExplicitTop = 458
    ExplicitWidth = 699
    inherited btnSair: TBitBtn
      ExplicitLeft = 616
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 600
    Top = 368
  end
  inherited fdQryCadastro: TFDQuery
    SQL.Strings = (
      'select * from venda')
  end
  inherited fdTransaction: TFDTransaction
    Left = 648
    Top = 368
  end
  inherited fdQueryAuxiliar: TFDQuery
    DetailFields = 'COD_TANQUE;DES_TANQUE'
    SQL.Strings = (
      'select * from tanque')
    Left = 372
    Top = 256
  end
end
