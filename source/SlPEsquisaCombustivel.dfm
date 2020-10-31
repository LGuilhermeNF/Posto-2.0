inherited CombustivelPesquisaSllForm: TCombustivelPesquisaSllForm
  Caption = 'Pesquisar - Combust'#237'vel'
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
      'select * from combustivel')
    object fdQueryPesquisaCOD_COMBUSTIVEL: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_COMBUSTIVEL'
      Origin = 'COD_COMBUSTIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryPesquisaDES_COMBUSTIVEL: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES_COMBUSTIVEL'
      Origin = 'DES_COMBUSTIVEL'
    end
    object fdQueryPesquisaPRC_COMBUSTIVEL: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRC_COMBUSTIVEL'
      Origin = 'PRC_COMBUSTIVEL'
      Precision = 18
    end
    object fdQueryPesquisaIMPOSTO: TBCDField
      DisplayLabel = 'Imposto'
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 18
    end
  end
end
