inherited TanqueCdForm: TTanqueCdForm
  Caption = 'Cadastro - Tanque de Combust'#237'vel'
  ClientHeight = 431
  ClientWidth = 693
  ExplicitWidth = 699
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 693
    Height = 390
    ExplicitWidth = 693
    ExplicitHeight = 390
    inherited tbPesq: TTabSheet
      ExplicitWidth = 685
      ExplicitHeight = 362
      inherited pnlBtnsPesq: TPanel
        Top = 321
        Width = 685
        ExplicitTop = 321
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
        Height = 290
      end
      inherited pnlTopo: TPanel
        Width = 685
        ExplicitWidth = 685
      end
    end
    inherited tbDados: TTabSheet
      ExplicitWidth = 685
      ExplicitHeight = 362
      inherited pnlBtnsDados: TPanel
        Top = 321
        Width = 685
        ExplicitTop = 321
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
        Height = 321
        ExplicitWidth = 685
        ExplicitHeight = 321
        object lblVolume: TLabel
          Left = 17
          Top = 82
          Width = 71
          Height = 13
          Caption = 'Volume (Litros)'
        end
        object lblCodigo: TLabel
          Left = 17
          Top = 26
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object lblDescricao: TLabel
          Left = 111
          Top = 26
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtCodigo: TDBEdit
          Left = 17
          Top = 45
          Width = 83
          Height = 21
          DataField = 'COD_TANQUE'
          DataSource = dsCadastro
          Enabled = False
          TabOrder = 0
        end
        object edtDescricao: TDBEdit
          Left = 106
          Top = 45
          Width = 353
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DES_TANQUE'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object edtVolume: TDBEdit
          Left = 17
          Top = 101
          Width = 121
          Height = 21
          DataField = 'QTD_VOLUME'
          DataSource = dsCadastro
          TabOrder = 2
        end
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 390
    Width = 693
    ExplicitTop = 390
    ExplicitWidth = 693
    inherited btnSair: TBitBtn
      Left = 610
      ExplicitLeft = 610
    end
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_TANQUE_ID'
    UpdateOptions.AutoIncFields = 'COD_TANQUE'
    SQL.Strings = (
      'SELECT * FROM TANQUE')
    Left = 289
    Top = 190
    ParamData = <
      item
        Name = 'Dat_Exclusao'
        DataType = ftDateTime
      end>
    object fdQryCadastroCOD_TANQUE: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryCadastroDES_TANQUE: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES_TANQUE'
      Origin = 'DES_TANQUE'
      Required = True
    end
    object fdQryCadastroQTD_VOLUME: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'QTD_VOLUME'
      Origin = 'QTD_VOLUME'
      Required = True
    end
  end
  inherited fdTransaction: TFDTransaction
    Left = 449
    Top = 190
  end
  inherited dsCadastro: TDataSource
    Left = 216
    Top = 192
  end
  inherited dsAuxiliar: TDataSource
    Left = 160
    Top = 192
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TANQUE'
      '(COD_TANQUE, DES_TANQUE, QTD_VOLUME)'
      'VALUES (:NEW_COD_TANQUE, :NEW_DES_TANQUE, :NEW_QTD_VOLUME)')
    ModifySQL.Strings = (
      'UPDATE TANQUE'
      'SET COD_TANQUE = :NEW_COD_TANQUE, DES_TANQUE = :NEW_DES_TANQUE, '
      '  QTD_VOLUME = :NEW_QTD_VOLUME'
      'WHERE COD_TANQUE = :OLD_COD_TANQUE')
    DeleteSQL.Strings = (
      'DELETE FROM TANQUE'
      'WHERE COD_TANQUE = :OLD_COD_TANQUE')
    FetchRowSQL.Strings = (
      'SELECT COD_TANQUE, DES_TANQUE, QTD_VOLUME'
      'FROM TANQUE'
      'WHERE COD_TANQUE = :COD_TANQUE')
    Left = 369
    Top = 190
  end
  inherited dsVenda: TDataSource
    Left = 368
    Top = 249
  end
end
