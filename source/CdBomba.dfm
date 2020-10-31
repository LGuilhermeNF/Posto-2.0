inherited BombaCdForm: TBombaCdForm
  Caption = 'Cadastro - Bomba de Combust'#237'vel'
  ClientHeight = 429
  ClientWidth = 483
  ExplicitWidth = 489
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 483
    Height = 388
    ExplicitWidth = 483
    ExplicitHeight = 388
    inherited tbPesq: TTabSheet
      ExplicitWidth = 475
      ExplicitHeight = 360
      inherited pnlBtnsPesq: TPanel
        Top = 319
        Width = 475
        ExplicitTop = 319
        ExplicitWidth = 475
        inherited btnNovo: TBitBtn
          Left = 234
          ExplicitLeft = 234
        end
        inherited btnDetalhar: TBitBtn
          Left = 315
          ExplicitLeft = 315
        end
        inherited btnExcluir: TBitBtn
          Left = 396
          OnClick = btnExcluirClick
          ExplicitLeft = 396
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 469
        Height = 288
      end
      inherited pnlTopo: TPanel
        Width = 475
        ExplicitWidth = 475
      end
    end
    inherited tbDados: TTabSheet
      ExplicitWidth = 475
      ExplicitHeight = 360
      inherited pnlBtnsDados: TPanel
        Top = 319
        Width = 475
        ExplicitTop = 319
        ExplicitWidth = 475
        inherited btnGravar: TBitBtn
          Left = 307
          Top = 8
          ExplicitLeft = 307
          ExplicitTop = 8
        end
        inherited btnCancelar: TBitBtn
          Left = 392
          Top = 8
          ExplicitLeft = 392
          ExplicitTop = 8
        end
        inherited btnListar: TBitBtn
          Left = 139
          Top = 8
          ExplicitLeft = 139
          ExplicitTop = 8
        end
        inherited btnAlterar: TBitBtn
          Left = 223
          Top = 8
          ExplicitLeft = 223
          ExplicitTop = 8
        end
      end
      inherited pnlDados: TPanel
        Width = 475
        Height = 319
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 475
        ExplicitHeight = 319
        object lblDescricao: TLabel
          Left = 103
          Top = 10
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object lblCodigo: TLabel
          Left = 9
          Top = 10
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object edtCodigo: TDBEdit
          Left = 9
          Top = 29
          Width = 83
          Height = 21
          DataField = 'COD_BOMBA'
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 0
        end
        object edtDescricao: TDBEdit
          Left = 98
          Top = 29
          Width = 353
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DES_BOMBA'
          DataSource = dsCadastro
          TabOrder = 1
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 388
    Width = 483
    ExplicitTop = 388
    ExplicitWidth = 483
    inherited btnSair: TBitBtn
      Left = 396
      Top = 6
      ExplicitLeft = 396
      ExplicitTop = 6
    end
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_BOMBA_ID'
    UpdateOptions.AutoIncFields = 'COD_BOMBA'
    SQL.Strings = (
      'SELECT * FROM BOMBA')
    Left = 288
    ParamData = <
      item
        DataType = ftDateTime
      end>
    object fdQryCadastroCOD_BOMBA: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDES_BOMBA: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES_BOMBA'
      Origin = 'DES_BOMBA'
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 352
    Top = 104
  end
  inherited dsCadastro: TDataSource
    Left = 224
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 224
    Top = 120
  end
end
