object ModeloCdForm: TModeloCdForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 499
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 699
    Height = 458
    ActivePage = tbDados
    Align = alClient
    TabOrder = 0
    object tbPesq: TTabSheet
      Caption = 'tbPesq'
      object pnlBtnsPesq: TPanel
        Left = 0
        Top = 389
        Width = 691
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          691
          41)
        object btnNovo: TBitBtn
          Left = 450
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnDetalhar: TBitBtn
          Left = 531
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Detalhar'
          TabOrder = 1
          OnClick = btnDetalharClick
        end
        object btnExcluir: TBitBtn
          Left = 612
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Excluir'
          TabOrder = 2
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 28
        Width = 685
        Height = 358
        Align = alClient
        DataSource = dsCadastro
        DrawingStyle = gdsGradient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlTopo: TPanel
        Left = 0
        Top = 0
        Width = 691
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 2
      end
    end
    object tbDados: TTabSheet
      Caption = 'tbDados'
      ImageIndex = 1
      object pnlBtnsDados: TPanel
        Left = 0
        Top = 389
        Width = 691
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          691
          41)
        object btnGravar: TBitBtn
          Left = 530
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = btnGravarCic
        end
        object btnCancelar: TBitBtn
          Left = 612
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btnCancelarClick
        end
        object btnListar: TBitBtn
          Left = 367
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Listar'
          TabOrder = 2
          OnClick = btnListarClick
        end
        object btnAlterar: TBitBtn
          Left = 448
          Top = 9
          Width = 75
          Height = 25
          Anchors = [akTop, akRight, akBottom]
          Caption = 'Alterar'
          TabOrder = 3
          OnClick = btnAlterarClick
        end
      end
      object pnlDados: TPanel
        Left = 0
        Top = 0
        Width = 691
        Height = 389
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 458
    Width = 699
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      699
      41)
    object btnSair: TBitBtn
      Left = 616
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = DadosDm.fdCon
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    Left = 96
    Top = 248
  end
  object fdTransaction: TFDTransaction
    Connection = DadosDm.fdCon
    Left = 464
    Top = 56
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 96
    Top = 200
  end
  object fdQueryAuxiliar: TFDQuery
    Connection = DadosDm.fdCon
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    SQL.Strings = (
      '')
    Left = 192
    Top = 248
  end
  object dsAuxiliar: TDataSource
    DataSet = fdQueryAuxiliar
    Left = 192
    Top = 200
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = DadosDm.fdCon
    Left = 396
    Top = 56
  end
  object dsVenda: TDataSource
    DataSet = fdQueryVenda
    Left = 288
    Top = 201
  end
  object fdQueryVenda: TFDQuery
    Connection = DadosDm.fdCon
    Transaction = fdTransaction
    UpdateTransaction = fdTransaction
    Left = 288
    Top = 249
  end
end
