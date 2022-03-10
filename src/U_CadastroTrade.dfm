object frm_CadastroTrade: Tfrm_CadastroTrade
  Left = 0
  Top = 0
  Caption = 'Cadastro Trade'
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
  object pnl_Trade: TPanel
    Left = 0
    Top = 201
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 0
    object nav_Trade: TDBNavigator
      Left = 1
      Top = 1
      Width = 525
      Height = 39
      DataSource = DS_Trade
      Align = alClient
      TabOrder = 0
    end
  end
  object grd_Trade: TDBGrid
    Left = 0
    Top = 0
    Width = 527
    Height = 201
    Align = alClient
    DataSource = DS_Trade
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
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 150
        Visible = True
      end>
  end
  object QR_Trade: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT T.CODIGO'
      '     , T.NOME'
      '     , T.CNPJ'
      '  FROM TRADE T'
      'ORDER BY T.CODIGO')
    Left = 448
    Top = 56
    object QR_TradeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
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
      EditMask = '!99.999.999/9999-99;0;_'
      Size = 18
    end
  end
  object DS_Trade: TDataSource
    DataSet = QR_Trade
    Left = 448
    Top = 120
  end
end
