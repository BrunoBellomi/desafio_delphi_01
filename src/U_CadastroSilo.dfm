object frm_CadastroSilo: Tfrm_CadastroSilo
  Left = 0
  Top = 0
  Caption = 'Cadastro Silo'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Silo: TPanel
    Left = 0
    Top = 201
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 120
    ExplicitTop = 184
    ExplicitWidth = 185
    object Nav_Silo: TDBNavigator
      Left = 1
      Top = 1
      Width = 525
      Height = 39
      DataSource = DS_Silo
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 368
      ExplicitTop = 24
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object grd_Silo: TDBGrid
    Left = 0
    Top = 0
    Width = 527
    Height = 201
    Align = alClient
    DataSource = DS_Silo
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = clMedGray
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade'
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
        FieldName = 'Desc_Trade'
        Title.Caption = 'Trade'
        Width = 150
        Visible = True
      end>
  end
  object QR_Silo: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT S.CODIGO '
      '     , S.DESCRICAO '
      '     , S.QUANTIDADE '
      '     , S.COD_TRADE '
      '  FROM SILO  S'
      'ORDER BY S.CODIGO ')
    Left = 424
    Top = 48
    object QR_SiloCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QR_SiloDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object QR_SiloQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object QR_SiloCOD_TRADE: TIntegerField
      FieldName = 'COD_TRADE'
      Origin = 'COD_TRADE'
      Required = True
    end
    object QR_SiloDesc_Trade: TStringField
      FieldKind = fkLookup
      FieldName = 'Desc_Trade'
      LookupDataSet = QR_Trade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_TRADE'
      Size = 250
      Lookup = True
    end
  end
  object DS_Silo: TDataSource
    DataSet = QR_Silo
    Left = 424
    Top = 104
  end
  object QR_Trade: TFDQuery
    MasterSource = DS_Silo
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT T.*'
      '  FROM TRADE T'
      'ORDER BY T.CODIGO')
    Left = 472
    Top = 48
    object QR_TradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_TradeNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QR_TradeCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 18
    end
  end
end
