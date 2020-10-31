inherited FrentistaCdForm: TFrentistaCdForm
  Caption = 'Cadastro - Frentisita'
  ClientHeight = 385
  ClientWidth = 695
  ExplicitWidth = 701
  ExplicitHeight = 414
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 695
    Height = 344
    ExplicitWidth = 695
    ExplicitHeight = 344
    inherited tbPesq: TTabSheet
      ExplicitWidth = 687
      ExplicitHeight = 316
      inherited pnlBtnsPesq: TPanel
        Top = 275
        Width = 687
        ExplicitTop = 275
        ExplicitWidth = 687
        inherited btnNovo: TBitBtn
          Left = 446
          ExplicitLeft = 446
        end
        inherited btnDetalhar: TBitBtn
          Left = 527
          ExplicitLeft = 527
        end
        inherited btnExcluir: TBitBtn
          Left = 608
          OnClick = btnExcluirClick
          ExplicitLeft = 608
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 681
        Height = 244
      end
      inherited pnlTopo: TPanel
        Width = 687
        ExplicitWidth = 687
      end
    end
    inherited tbDados: TTabSheet
      ExplicitWidth = 687
      ExplicitHeight = 316
      inherited pnlBtnsDados: TPanel
        Top = 275
        Width = 687
        ExplicitTop = 275
        ExplicitWidth = 687
        inherited btnGravar: TBitBtn
          Left = 526
          ExplicitLeft = 526
        end
        inherited btnCancelar: TBitBtn
          Left = 608
          ExplicitLeft = 608
        end
        inherited btnListar: TBitBtn
          Left = 363
          ExplicitLeft = 363
        end
        inherited btnAlterar: TBitBtn
          Left = 444
          ExplicitLeft = 444
        end
      end
      inherited pnlDados: TPanel
        Width = 687
        Height = 275
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 687
        ExplicitHeight = 275
        object lblCodigo: TLabel
          Left = 9
          Top = 10
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblDescricao: TLabel
          Left = 103
          Top = 10
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtCodigo: TDBEdit
          Left = 9
          Top = 29
          Width = 83
          Height = 21
          CharCase = ecLowerCase
          DataField = 'COD_FRENTISTA'
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
          DataField = 'DES_FRENTISTA'
          DataSource = dsCadastro
          TabOrder = 1
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 344
    Width = 695
    ExplicitTop = 344
    ExplicitWidth = 695
    inherited btnSair: TBitBtn
      Left = 612
      ExplicitLeft = 612
    end
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FRENTISTA_ID'
    UpdateOptions.AutoIncFields = 'COD_FRENTISTA'
    SQL.Strings = (
      'SELECT * FROM FRENTISTA')
    Left = 248
    ParamData = <
      item
        Name = 'Dat_Exclusao'
        DataType = ftDateTime
      end>
    object fdQryCadastroCOD_FRENTISTA: TFDAutoIncField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDES_FRENTISTA: TStringField
      FieldName = 'DES_FRENTISTA'
      Origin = 'DES_FRENTISTA'
      Size = 50
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 408
  end
  inherited dsCadastro: TDataSource
    Left = 248
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 360
  end
  inherited dsVenda: TDataSource
    Left = 392
    Top = 193
  end
  inherited fdQueryVenda: TFDQuery
    Left = 392
    Top = 241
  end
end
