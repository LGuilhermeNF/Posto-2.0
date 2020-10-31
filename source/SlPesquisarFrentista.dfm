inherited PesquisaFrentistaSlForm: TPesquisaFrentistaSlForm
  Caption = 'Pesquisar - Frentista'
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
      'select Cod_Frentista, Des_Frentista from Frentista')
    object fdQueryPesquisaCOD_FRENTISTA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryPesquisaDES_FRENTISTA: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DES_FRENTISTA'
      Origin = 'DES_FRENTISTA'
      Size = 50
    end
  end
end
