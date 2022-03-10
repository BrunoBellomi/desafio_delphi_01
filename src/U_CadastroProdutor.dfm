object frm_CadastroProdutor: Tfrm_CadastroProdutor
  Left = 0
  Top = 0
  Caption = 'Cadastro Produtor'
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
  object grd_Produtor: TDBGrid
    Left = 0
    Top = 0
    Width = 527
    Height = 201
    Align = alClient
    DataSource = DS_Produtor
    TabOrder = 0
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
  object pnl_Produtor: TPanel
    Left = 0
    Top = 201
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 1
    object nav_Produtor: TDBNavigator
      Left = 1
      Top = 1
      Width = 525
      Height = 39
      DataSource = DS_Produtor
      Align = alClient
      TabOrder = 0
    end
  end
  object QR_Produtor: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT P.CODIGO'
      '     , P.NOME'
      '     , P.CNPJ'
      '  FROM PRODUTOR P'
      'ORDER BY P.CODIGO')
    Left = 459
    Top = 64
    object QR_ProdutorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QR_ProdutorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QR_ProdutorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '!99.999.999/9999-99;0;_'
      Size = 18
    end
  end
  object DS_Produtor: TDataSource
    DataSet = QR_Produtor
    Left = 456
    Top = 134
  end
end
