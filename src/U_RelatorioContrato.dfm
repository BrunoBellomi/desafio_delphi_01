object frm_RelatorioContrato: Tfrm_RelatorioContrato
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Contrato'
  ClientHeight = 242
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grd_Contrato: TDBGrid
    Left = 0
    Top = 67
    Width = 516
    Height = 175
    Align = alClient
    DataSource = DS_Relatorio
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Nr Contrato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CONTRATO'
        Title.Caption = 'Data Contrato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_PRODUTOR'
        Title.Caption = 'C'#243'd. Produtor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_PRODUTOR'
        Title.Caption = 'Produtor'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_TRADE'
        Title.Caption = 'C'#243'd. Trade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_TRADE'
        Title.Caption = 'Trade'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Title.Caption = 'C'#243'd. Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_PRODUTO'
        Title.Caption = 'Produto'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
  object grb_Filtro: TGroupBox
    Left = 0
    Top = 0
    Width = 516
    Height = 67
    Align = alTop
    TabOrder = 1
    ExplicitTop = -6
    ExplicitWidth = 527
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Contrato'
    end
    object Label2: TLabel
      Left = 125
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Data In'#237'cio'
    end
    object Label3: TLabel
      Left = 264
      Top = 8
      Width = 64
      Height = 13
      Caption = 'Data T'#233'rmino'
    end
    object Label4: TLabel
      Left = 252
      Top = 30
      Width = 6
      Height = 13
      Caption = #224
    end
    object btn_Selecionar: TBitBtn
      Left = 409
      Top = 25
      Width = 99
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 1
      OnClick = btn_SelecionarClick
    end
    object edt_Contrato: TEdit
      Left = 11
      Top = 27
      Width = 78
      Height = 21
      TabOrder = 0
    end
    object Edt_DataInicio: TDateTimePicker
      Left = 125
      Top = 27
      Width = 121
      Height = 21
      Date = 44626.000000000000000000
      Time = 0.842545983796299000
      TabOrder = 2
    end
    object Edt_DataTermino: TDateTimePicker
      Left = 264
      Top = 27
      Width = 121
      Height = 21
      Date = 44626.000000000000000000
      Time = 0.842545983796299000
      TabOrder = 3
    end
  end
  object QR_Relatorio: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT CONTRATO.CODIGO         CODIGO'
      '     , CONTRATO.DATA_CONTRATO  DATA_CONTRATO'
      '     , CONTRATO.COD_PRODUTOR   COD_PRODUTOR'
      '     , PRODUTOR.NOME           DESC_PRODUTOR'
      '     , CONTRATO.COD_TRADE      COD_TRADE '
      '     , TRADE.NOME              DESC_TRADE '
      '     , CONTRATO.COD_PRODUTO    COD_PRODUTO'
      '     , PRODUTO.DESCRICAO       DESC_PRODUTO '
      '     , CONTRATO.QUANTIDADE     QUANTIDADE'
      '  FROM CONTRATO  CONTRATO'
      '     , PRODUTOR  PRODUTOR'
      '     , TRADE     TRADE'
      '     , PRODUTO   PRODUTO '
      ' WHERE PRODUTO.CODIGO   = CONTRATO.COD_PRODUTO '
      '   '
      '   AND TRADE.CODIGO     = CONTRATO.COD_TRADE '
      '   '
      '   AND PRODUTOR.CODIGO  = CONTRATO.COD_PRODUTOR '
      '   '
      '   AND (CONTRATO.CODIGO  = :CODIGO OR :CODIGO = 0)'
      '   AND CONTRATO.DATA_CONTRATO BETWEEN :DATAINI AND :DATAFIM'
      'ORDER BY CONTRATO.CODIGO ')
    Left = 408
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QR_RelatorioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_RelatorioDATA_CONTRATO: TDateField
      FieldName = 'DATA_CONTRATO'
      Origin = 'DATA_CONTRATO'
      Required = True
    end
    object QR_RelatorioCOD_PRODUTOR: TIntegerField
      FieldName = 'COD_PRODUTOR'
      Origin = 'COD_PRODUTOR'
      Required = True
    end
    object QR_RelatorioDESC_PRODUTOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_PRODUTOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QR_RelatorioCOD_TRADE: TIntegerField
      FieldName = 'COD_TRADE'
      Origin = 'COD_TRADE'
      Required = True
    end
    object QR_RelatorioDESC_TRADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_TRADE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QR_RelatorioCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Required = True
    end
    object QR_RelatorioDESC_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QR_RelatorioQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
  end
  object DS_Relatorio: TDataSource
    DataSet = QR_Relatorio
    Left = 480
    Top = 104
  end
end
