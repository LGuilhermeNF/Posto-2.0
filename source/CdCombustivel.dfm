inherited CombustivelCdForm: TCombustivelCdForm
  Caption = 'Cadastro - Combust'#237'vel'
  ClientHeight = 378
  ClientWidth = 693
  ExplicitWidth = 699
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 693
    Height = 337
    ExplicitWidth = 693
    ExplicitHeight = 337
    inherited tbPesq: TTabSheet
      ExplicitWidth = 685
      ExplicitHeight = 309
      inherited pnlBtnsPesq: TPanel
        Top = 268
        Width = 685
        ExplicitTop = 268
        ExplicitWidth = 685
        inherited btnNovo: TBitBtn
          Left = 444
          ExplicitLeft = 444
        end
        inherited btnDetalhar: TBitBtn
          Left = 525
          ExplicitLeft = 525
        end
        inherited btnExcluir: TBitBtn
          Left = 606
          OnClick = btnExcluirClick
          ExplicitLeft = 606
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 679
        Height = 237
      end
      inherited pnlTopo: TPanel
        Width = 685
        ExplicitWidth = 685
      end
    end
    inherited tbDados: TTabSheet
      ExplicitWidth = 685
      ExplicitHeight = 309
      inherited pnlBtnsDados: TPanel
        Top = 268
        Width = 685
        ExplicitTop = 268
        ExplicitWidth = 685
        inherited btnGravar: TBitBtn
          Left = 524
          ExplicitLeft = 524
        end
        inherited btnCancelar: TBitBtn
          Left = 606
          ExplicitLeft = 606
        end
        inherited btnListar: TBitBtn
          Left = 361
          ExplicitLeft = 361
        end
        inherited btnAlterar: TBitBtn
          Left = 442
          ExplicitLeft = 442
        end
      end
      inherited pnlDados: TPanel
        Width = 685
        Height = 268
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 685
        ExplicitHeight = 268
        object lblPrecoLitro: TLabel
          Left = 9
          Top = 66
          Width = 37
          Height = 13
          Caption = 'R$ Litro'
        end
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
        object lblImposto: TLabel
          Left = 91
          Top = 66
          Width = 61
          Height = 13
          Caption = '(%) Imposto'
        end
        object edtCodigo: TDBEdit
          Left = 9
          Top = 29
          Width = 83
          Height = 21
          DataField = 'COD_COMBUSTIVEL'
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
          DataField = 'DES_COMBUSTIVEL'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object edtImposto: TDBEdit
          Left = 91
          Top = 81
          Width = 83
          Height = 21
          DataField = 'IMPOSTO'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object edtPrecoLitro: TDBEdit
          Left = 9
          Top = 81
          Width = 76
          Height = 21
          DataField = 'PRC_COMBUSTIVEL'
          DataSource = dsCadastro
          TabOrder = 3
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 337
    Width = 693
    ExplicitTop = 337
    ExplicitWidth = 693
    inherited btnSair: TBitBtn
      Left = 610
      ExplicitLeft = 610
    end
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_COMBUSTIVEL_ID'
    UpdateOptions.AutoIncFields = 'COD_COMBUSTIVEL'
    SQL.Strings = (
      'SELECT * FROM COMBUSTIVEL')
    Left = 304
    ParamData = <
      item
        Name = 'Dat_Exclusao'
        DataType = ftDateTime
      end>
    object fdQryCadastroCOD_COMBUSTIVEL: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_COMBUSTIVEL'
      Origin = 'COD_COMBUSTIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroDES_COMBUSTIVEL: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES_COMBUSTIVEL'
      Origin = 'DES_COMBUSTIVEL'
    end
    object fdQryCadastroPRC_COMBUSTIVEL: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRC_COMBUSTIVEL'
      Origin = 'PRC_COMBUSTIVEL'
      Precision = 18
    end
    object fdQryCadastroIMPOSTO: TBCDField
      DisplayLabel = 'Imposto'
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 18
    end
  end
  inherited dsCadastro: TDataSource
    Left = 248
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 360
  end
end
