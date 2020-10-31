inherited TanquePesquisaSllForm: TTanquePesquisaSllForm
  Caption = 'Pesquisar -Tanque de Combustivel'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited edtPesquisa: TEdit
      OnExit = edtPesquisaExit
    end
  end
  inherited pnlRodape: TPanel
    inherited btnConfirmar: TSpeedButton
      OnClick = btnConfirmarClick
    end
  end
  inherited fdQueryPesquisa: TFDQuery
    SQL.Strings = (
      'select Cod_Tanque, Des_Tanque, Qtd_Volume from TANQUE')
    object fdQueryPesquisaCOD_TANQUE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryPesquisaDES_TANQUE: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES_TANQUE'
      Origin = 'DES_TANQUE'
      Required = True
    end
    object fdQueryPesquisaQTD_VOLUME: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'QTD_VOLUME'
      Origin = 'QTD_VOLUME'
      Required = True
    end
  end
end
