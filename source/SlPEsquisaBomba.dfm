inherited BombaPesquisaSllForm: TBombaPesquisaSllForm
  Caption = 'Pesquisa - Bomba de Combust'#237'vel'
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
      'select Cod_Bomba, Des_Bomba from bomba')
    object fdQueryPesquisaCOD_BOMBA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryPesquisaDES_BOMBA: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES_BOMBA'
      Origin = 'DES_BOMBA'
    end
  end
end
