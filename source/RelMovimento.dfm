object MovimentoRelForm: TMovimentoRelForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Abastecimento (Venda)'
  ClientHeight = 507
  ClientWidth = 1227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 1123
    Height = 794
    DataSource = dsQryAux
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 67
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object lblCodVenda: TRLLabel
        Left = 4
        Top = 42
        Width = 66
        Height = 14
        Caption = 'Cod. Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTanque: TRLLabel
        Left = 337
        Top = 39
        Width = 44
        Height = 14
        Caption = 'Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBomba: TRLLabel
        Left = 412
        Top = 39
        Width = 41
        Height = 14
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCombustivel: TRLLabel
        Left = 495
        Top = 39
        Width = 73
        Height = 14
        Caption = 'Combust'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVolume: TRLLabel
        Left = 636
        Top = 39
        Width = 46
        Height = 14
        Alignment = taRightJustify
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrcLitro: TRLLabel
        Left = 709
        Top = 39
        Width = 45
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ Litro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblImposto: TRLLabel
        Left = 790
        Top = 42
        Width = 39
        Height = 14
        Alignment = taRightJustify
        Caption = '% Imp.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblValorVenda: TRLLabel
        Left = 988
        Top = 42
        Width = 54
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFrentista: TRLLabel
        Left = 173
        Top = 39
        Width = 52
        Height = 14
        Caption = 'Frentista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 944
        Top = 6
        Width = 29
        Height = 14
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBTextData: TRLDBText
        Left = 979
        Top = 6
        Width = 61
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object lblValImposto: TRLLabel
        Left = 864
        Top = 42
        Width = 65
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ Imposto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rliDivisao: TRLDraw
        Left = 0
        Top = 59
        Width = 1047
        Height = 8
        Align = faBottom
        DrawKind = dkLine
        HoldStyle = hsHorizontally
        Pen.Style = psDot
      end
      object RLDBTextInfo: TRLDBText
        Left = 4
        Top = 6
        Width = 69
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object lblDatVenda: TRLLabel
        Left = 79
        Top = 42
        Width = 26
        Height = 14
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 205
      Width = 1047
      Height = 52
      BandType = btSummary
      object RLLabel12: TRLLabel
        Left = 3
        Top = 33
        Width = 30
        Height = 14
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 550
        Top = 33
        Width = 92
        Height = 14
        Alignment = taRightJustify
        DataField = 'QTD_LITRO'
        DataSource = dsQryAux
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 771
        Top = 33
        Width = 118
        Height = 14
        Alignment = taRightJustify
        DataField = 'VAL_IMPOSTO'
        DataSource = dsQryAux
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 895
        Top = 33
        Width = 138
        Height = 14
        Alignment = taRightJustify
        DataField = 'VAL_VENDA'
        DataSource = dsQryAux
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 23
        Width = 1047
        Height = 8
        DrawKind = dkLine
        HoldStyle = hsHorizontally
        Pen.Style = psDot
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 105
      Width = 1047
      Height = 100
      AllowedBands = [btSummary]
      DataFields = 'Dat_Movimento;Cod_Tanque;Cod_Bomba;Val_Venda'
      object RLBand2: TRLBand
        Left = 0
        Top = 20
        Width = 1047
        Height = 33
        object txtCodVenda: TRLDBText
          Left = -22
          Top = 3
          Width = 92
          Height = 14
          Alignment = taRightJustify
          DataField = 'COD_MOVIMENTO'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblCodVenda
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 173
          Top = 3
          Width = 84
          Height = 14
          DataField = 'DES_FRENTISTA'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblFrentista
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 495
          Top = 3
          Width = 101
          Height = 14
          DataField = 'DES_COMBUSTIVEL'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblCombustivel
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 623
          Top = 3
          Width = 59
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTD_LITRO'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblVolume
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 696
          Top = 3
          Width = 58
          Height = 14
          Alignment = taRightJustify
          DataField = 'PRC_LITRO'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblPrcLitro
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 781
          Top = 3
          Width = 48
          Height = 14
          Alignment = taRightJustify
          DataField = 'IMPOSTO'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblImposto
          ParentFont = False
          Text = ''
        end
        object RLDBText1: TRLDBText
          Left = 853
          Top = 3
          Width = 76
          Height = 14
          Alignment = taRightJustify
          DataField = 'VAL_IMPOSTO'
          DataSource = dsQryAux
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblValImposto
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 975
          Top = 3
          Width = 67
          Height = 14
          Alignment = taRightJustify
          DataField = 'VAL_VENDA'
          DataSource = dsQryAux
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblValorVenda
          ParentFont = False
          Text = ''
        end
        object txtDatVenda: TRLDBText
          Left = 79
          Top = 3
          Width = 91
          Height = 14
          DataField = 'DAT_MOVIMENTO'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblDatVenda
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 322
          Top = 3
          Width = 74
          Height = 14
          Alignment = taCenter
          DataField = 'COD_TANQUE'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblTanque
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 402
          Top = 3
          Width = 62
          Height = 14
          Alignment = taCenter
          DataField = 'Cod_Bomba'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = lblBomba
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 20
        BandType = btColumnHeader
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 53
        Width = 1047
        Height = 20
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBResult4: TRLDBResult
          Left = 79
          Top = 2
          Width = 125
          Height = 14
          DataField = 'DAT_MOVIMENTO'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
          Text = 'Total por data: '
        end
        object RLDBResult5: TRLDBResult
          Left = 252
          Top = 2
          Width = 140
          Height = 14
          DataField = 'COD_TANQUE'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
          Text = 'Total por tanque: '
        end
        object RLDBResult6: TRLDBResult
          Left = 412
          Top = 2
          Width = 140
          Height = 14
          DataField = 'COD_BOMBA'
          DataSource = dsQryAux
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
          Text = 'Total por bomba: '
        end
        object RLDBResult7: TRLDBResult
          Left = 906
          Top = 2
          Width = 175
          Height = 14
          DataField = 'VAL_VENDA'
          DataSource = dsQryAux
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
          Text = 'Total Venda: '
        end
      end
    end
  end
  object fdTransaction: TFDTransaction
    Connection = DadosDm.fdCon
    Left = 144
    Top = 256
  end
  object dsQryAux: TDataSource
    DataSet = fdQryAux
    Left = 208
    Top = 257
  end
  object fdQryAux: TFDQuery
    Connection = DadosDm.fdCon
    UpdateTransaction = fdTransaction
    Left = 264
    Top = 255
    object fdQryAuxCOD_MOVIMENTO: TIntegerField
      FieldName = 'COD_MOVIMENTO'
      Origin = 'COD_MOVIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryAuxDAT_MOVIMENTO: TSQLTimeStampField
      FieldName = 'DAT_MOVIMENTO'
      Origin = 'DAT_MOVIMENTO'
    end
    object fdQryAuxCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
    end
    object fdQryAuxCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
    end
    object fdQryAuxCOD_COMBUSTIVEL: TIntegerField
      FieldName = 'COD_COMBUSTIVEL'
      Origin = 'COD_COMBUSTIVEL'
    end
    object fdQryAuxQTD_LITRO: TIntegerField
      FieldName = 'QTD_LITRO'
      Origin = 'QTD_LITRO'
    end
    object fdQryAuxPRC_LITRO: TBCDField
      FieldName = 'PRC_LITRO'
      Origin = 'PRC_LITRO'
      Precision = 18
    end
    object fdQryAuxVAL_VENDA: TBCDField
      FieldName = 'VAL_VENDA'
      Origin = 'VAL_VENDA'
      Precision = 18
    end
    object fdQryAuxCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object fdQryAuxIMPOSTO: TBCDField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 18
    end
    object fdQryAuxDAT_EXCLUSAO: TSQLTimeStampField
      FieldName = 'DAT_EXCLUSAO'
      Origin = 'DAT_EXCLUSAO'
    end
    object fdQryAuxDES_TANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_TANQUE'
      Origin = 'DES_TANQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryAuxDES_BOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_BOMBA'
      Origin = 'DES_BOMBA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryAuxDES_COMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_COMBUSTIVEL'
      Origin = 'DES_COMBUSTIVEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryAuxDES_FRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_FRENTISTA'
      Origin = 'DES_FRENTISTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object fdQryAuxVAL_IMPOSTO: TBCDField
      FieldName = 'VAL_IMPOSTO'
      Origin = 'VAL_IMPOSTO'
      Precision = 18
    end
  end
end
