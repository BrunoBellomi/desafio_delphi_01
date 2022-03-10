object frm_CadastroProduto: Tfrm_CadastroProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro Produto'
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
  object pnl_Produto: TPanel
    Left = 0
    Top = 201
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 0
    object nav_Produto: TDBNavigator
      Left = 1
      Top = 1
      Width = 525
      Height = 39
      DataSource = DS_Produto
      Align = alClient
      TabOrder = 0
    end
  end
  object grd_Produto: TDBGrid
    Left = 0
    Top = 0
    Width = 527
    Height = 201
    Align = alClient
    DataSource = DS_Produto
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
      end>
  end
  object QR_Produto: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT P.CODIGO  '
      '     , P.DESCRICAO'
      '  FROM PRODUTO P'
      'ORDER BY P.CODIGO')
    Left = 384
    Top = 40
    object QR_ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QR_ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DS_Produto: TDataSource
    DataSet = QR_Produto
    Left = 384
    Top = 104
  end
end
