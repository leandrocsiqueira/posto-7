object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Posto 7'
  ClientHeight = 555
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmPrincipal
  TextHeight = 23
  object pnlEsquerdo: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 528
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 520
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 528
    Width = 1052
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 520
    ExplicitWidth = 1050
  end
  object pnlCentro: TPanel
    Left = 273
    Top = 0
    Width = 779
    Height = 528
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 777
    ExplicitHeight = 520
  end
  object alAcoesMenu: TActionList
    Left = 728
    Top = 256
    object actCombustivel: TAction
      Category = 'Cadastro'
      Caption = 'Combust'#237'vel'
    end
    object actTanque: TAction
      Category = 'Cadastro'
      Caption = 'Tanque'
    end
    object actBomba: TAction
      Category = 'Cadastro'
      Caption = 'Bomba'
    end
    object actRelAbastecimento: TAction
      Category = 'Relatorios'
      Caption = 'Abastecimento'
    end
    object actAbastecimento: TAction
      Category = 'Venda'
      Caption = 'Abastecimento'
    end
  end
  object mmPrincipal: TMainMenu
    Left = 728
    Top = 168
    object miCadastro: TMenuItem
      Caption = '&Cadastros'
      object miCadCombustivel: TMenuItem
        Action = actCombustivel
      end
      object miCadTanque: TMenuItem
        Action = actTanque
      end
      object miCadBomba: TMenuItem
        Action = actBomba
      end
    end
    object miVendas: TMenuItem
      Caption = '&Vendas'
      object miVendAbastecimento: TMenuItem
        Action = actAbastecimento
      end
    end
    object miRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
      object miRelAbastecimento: TMenuItem
        Action = actRelAbastecimento
      end
    end
  end
end
