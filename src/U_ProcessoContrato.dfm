object frm_ProcessoContrato: Tfrm_ProcessoContrato
  Left = 0
  Top = 0
  Caption = 'Contrato'
  ClientHeight = 441
  ClientWidth = 591
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
  object pnl_Contrato: TPanel
    Left = 0
    Top = 400
    Width = 591
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 184
    ExplicitWidth = 185
    object nav_Contrato: TDBNavigator
      Left = 1
      Top = 1
      Width = 589
      Height = 39
      DataSource = DS_Contrato
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 240
      ExplicitTop = 24
      ExplicitWidth = 240
      ExplicitHeight = 25
    end
  end
  object pnl_Selecionar: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 400
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = -5
    ExplicitWidth = 576
    ExplicitHeight = 512
    object grd_Contrato: TDBGrid
      Left = 1
      Top = 113
      Width = 589
      Height = 286
      Align = alClient
      DataSource = DS_Contrato
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
          Title.Caption = 'Nr. Contrato'
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
          FieldName = 'Desc_Produtor'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_Produtor'
          Width = 110
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
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_Trade'
          Width = 110
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
          FieldName = 'Desc_Produto'
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
    object grb_Selecionar: TGroupBox
      Left = 1
      Top = 1
      Width = 589
      Height = 112
      Align = alTop
      TabOrder = 1
      object lbl_Produtor: TLabel
        Left = 24
        Top = 25
        Width = 70
        Height = 13
        Caption = 'CNPJ Produtor'
      end
      object lbl_Trade: TLabel
        Left = 38
        Top = 62
        Width = 56
        Height = 13
        Caption = 'CNPJ Trade'
      end
      object btn_Selecionar: TBitBtn
        Left = 100
        Top = 81
        Width = 99
        Height = 25
        Caption = 'Selecionar'
        TabOrder = 0
        OnClick = btn_SelecionarClick
      end
      object lkb_Produtor: TDBLookupComboBox
        Left = 100
        Top = 17
        Width = 453
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'CNPJ;NOME'
        ListSource = DS_Produtor
        TabOrder = 1
      end
      object lkb_Trade: TDBLookupComboBox
        Left = 100
        Top = 54
        Width = 453
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'CNPJ;NOME'
        ListSource = DS_Trade
        TabOrder = 2
      end
    end
  end
  object QR_Contrato: TFDQuery
    Active = True
    AfterPost = QR_ContratoAfterPost
    OnNewRecord = QR_ContratoNewRecord
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT C.CODIGO  '
      '     , C.DATA_CONTRATO '
      '     , C.COD_PRODUTOR '
      '     , C.COD_TRADE '
      '     , C.COD_PRODUTO '
      '     , C.QUANTIDADE '
      '  FROM CONTRATO C'
      ' WHERE (C.COD_PRODUTOR = :COD_PRODUTOR OR :COD_PRODUTOR = 0)  '
      '   AND (C.COD_TRADE    = :COD_TRADE    OR :COD_TRADE    = 0)'
      'ORDER BY C.CODIGO')
    Left = 448
    Top = 176
    ParamData = <
      item
        Name = 'COD_PRODUTOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_TRADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QR_ContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QR_ContratoDATA_CONTRATO: TDateField
      FieldName = 'DATA_CONTRATO'
      Origin = 'DATA_CONTRATO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object QR_ContratoCOD_PRODUTOR: TIntegerField
      FieldName = 'COD_PRODUTOR'
      Origin = 'COD_PRODUTOR'
      Required = True
    end
    object QR_ContratoCOD_TRADE: TIntegerField
      FieldName = 'COD_TRADE'
      Origin = 'COD_TRADE'
      Required = True
    end
    object QR_ContratoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Required = True
    end
    object QR_ContratoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object QR_ContratoDesc_Produtor: TStringField
      FieldKind = fkLookup
      FieldName = 'Desc_Produtor'
      LookupDataSet = QR_Produtor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_PRODUTOR'
      Size = 150
      Lookup = True
    end
    object QR_ContratoCNPJ_Produtor: TStringField
      FieldKind = fkLookup
      FieldName = 'CNPJ_Produtor'
      LookupDataSet = QR_Produtor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'COD_PRODUTOR'
      EditMask = '!99.999.999/9999-99;0;_'
      Size = 50
      Lookup = True
    end
    object QR_ContratoDesc_Trade: TStringField
      FieldKind = fkLookup
      FieldName = 'Desc_Trade'
      LookupDataSet = QR_Trade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_TRADE'
      Size = 200
      Lookup = True
    end
    object QR_ContratoCNPJ_Trade: TStringField
      FieldKind = fkLookup
      FieldName = 'CNPJ_Trade'
      LookupDataSet = QR_Trade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'COD_TRADE'
      EditMask = '!99.999.999/9999-99;0;_'
      Size = 100
      Lookup = True
    end
    object QR_ContratoDesc_Produto: TStringField
      FieldKind = fkLookup
      FieldName = 'Desc_Produto'
      LookupDataSet = QR_Produto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_PRODUTO'
      Size = 200
      Lookup = True
    end
  end
  object DS_Contrato: TDataSource
    DataSet = QR_Contrato
    Left = 528
    Top = 176
  end
  object QR_Produtor: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT P.CODIGO'
      '     , P.NOME'
      '     , P.CNPJ'
      '  FROM PRODUTOR P'
      'ORDER BY P.CODIGO')
    Left = 448
    Top = 224
    object QR_ProdutorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'C'#243'digo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_ProdutorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'Nome'
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
  object QR_Trade: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT T.CODIGO'
      '     , T.NOME'
      '     , T.CNPJ'
      '  FROM TRADE T'
      'ORDER BY T.CODIGO')
    Left = 448
    Top = 272
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
      EditMask = '!99.999.999/9999-99;0;_'
      Size = 18
    end
  end
  object QR_Produto: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT P.CODIGO  '
      '     , P.DESCRICAO'
      '  FROM PRODUTO P'
      'ORDER BY P.CODIGO')
    Left = 448
    Top = 328
    object QR_ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DS_Produtor: TDataSource
    DataSet = QR_Produtor
    Left = 528
    Top = 224
  end
  object DS_Trade: TDataSource
    DataSet = QR_Trade
    Left = 528
    Top = 272
  end
  object DS_Produto: TDataSource
    DataSet = QR_Produto
    Left = 528
    Top = 328
  end
end
