object F_Principal: TF_Principal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 455
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cadastro2: TMenuItem
        Caption = 'Produtor'
        OnClick = Cadastro2Click
      end
      object rade1: TMenuItem
        Caption = 'Trade'
        OnClick = rade1Click
      end
      object rade2: TMenuItem
        Caption = 'Silo'
        OnClick = rade2Click
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
    end
    object Processo1: TMenuItem
      Caption = 'Processo'
      object Contrato1: TMenuItem
        Caption = 'Contrato'
        OnClick = Contrato1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Contrato2: TMenuItem
        Caption = 'Contrato'
        OnClick = Contrato2Click
      end
    end
  end
end
