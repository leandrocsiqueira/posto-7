object FormCombustivel: TFormCombustivel
  Left = 0
  Top = 0
  Caption = 'Combust'#237'veis'
  ClientHeight = 490
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1175
    object pnlNovo: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 73
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object shNovo: TShape
        Left = 0
        Top = 0
        Width = 113
        Height = 73
        Align = alClient
        Shape = stRoundRect
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object btnNovo: TSpeedButton
        Left = 0
        Top = 0
        Width = 113
        Height = 73
        Action = actNovo
        Align = alClient
        ExplicitLeft = 2
        ExplicitTop = -6
      end
    end
    object pnlSeparadorNovoEditar: TPanel
      Left = 113
      Top = 0
      Width = 8
      Height = 73
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 119
    end
    object pnlEditar: TPanel
      Left = 121
      Top = 0
      Width = 113
      Height = 73
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object shEditar: TShape
        Left = 0
        Top = 0
        Width = 113
        Height = 73
        Align = alClient
        Shape = stRoundRect
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object btnEditar: TSpeedButton
        Left = 0
        Top = 0
        Width = 113
        Height = 73
        Action = actEditar
        Align = alClient
        ExplicitLeft = -64
      end
    end
    object pnlSeparadorEditarDeletar: TPanel
      Left = 234
      Top = 0
      Width = 8
      Height = 73
      Align = alLeft
      TabOrder = 3
    end
    object pnlDeletar: TPanel
      Left = 242
      Top = 0
      Width = 113
      Height = 73
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object shDeletar: TShape
        Left = 0
        Top = 0
        Width = 113
        Height = 73
        Align = alClient
        Shape = stRoundRect
        ExplicitLeft = 24
        ExplicitTop = 8
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object btnDeletar: TSpeedButton
        Left = 0
        Top = 0
        Width = 113
        Height = 73
        Action = actDeletar
        Align = alClient
        ExplicitLeft = -64
      end
    end
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 73
    Width = 755
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 834
    object lblCodigo: TLabel
      Left = 16
      Top = 18
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
    end
    object lblDescricao: TLabel
      Left = 71
      Top = 18
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object edtCodigo: TEdit
      Left = 16
      Top = 39
      Width = 49
      Height = 23
      TabOrder = 0
    end
    object edtDescricao: TEdit
      Left = 71
      Top = 39
      Width = 276
      Height = 23
      TabOrder = 1
    end
    object btnPesquisar: TButton
      Left = 353
      Top = 39
      Width = 75
      Height = 25
      Action = actPesquisar
      TabOrder = 2
    end
  end
  object pnlCentro: TPanel
    Left = 0
    Top = 153
    Width = 755
    Height = 337
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 336
    ExplicitTop = 248
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pgcPrincipal: TPageControl
      Left = 0
      Top = 0
      Width = 755
      Height = 337
      ActivePage = tbsEdicao
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 834
      object tbsDados: TTabSheet
        Caption = 'Dados'
        object dbgDados: TDBGrid
          Left = 0
          Top = 0
          Width = 747
          Height = 307
          Align = alClient
          DataSource = dsDados
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Id'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SIGLA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERCENTUALIMPOSTO'
              Visible = True
            end>
        end
      end
      object tbsEdicao: TTabSheet
        Caption = 'Edi'#231#227'o'
        ImageIndex = 1
        object pnlEdicao: TPanel
          Left = 0
          Top = 0
          Width = 747
          Height = 256
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 320
          ExplicitTop = 136
          ExplicitWidth = 185
          ExplicitHeight = 41
          object lblEdicaoCodigo: TLabel
            Left = 48
            Top = 34
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
          end
          object lblEdicaoDescricao: TLabel
            Left = 118
            Top = 34
            Width = 51
            Height = 15
            Caption = 'Descri'#231#227'o'
          end
          object lblEdicaoSigla: TLabel
            Left = 48
            Top = 114
            Width = 25
            Height = 15
            Caption = 'Sigla'
          end
          object lblValor: TLabel
            Left = 165
            Top = 114
            Width = 26
            Height = 15
            Caption = 'Valor'
          end
          object lblPercentImposto: TLabel
            Left = 310
            Top = 114
            Width = 57
            Height = 15
            Caption = '% Imposto'
          end
          object edtEdicaoCodigo: TEdit
            Left = 48
            Top = 55
            Width = 49
            Height = 23
            TabOrder = 0
          end
          object edtEdicaoDescricao: TEdit
            Left = 125
            Top = 55
            Width = 242
            Height = 23
            TabOrder = 1
          end
          object edtEdicaoSigla: TEdit
            Left = 48
            Top = 135
            Width = 81
            Height = 23
            TabOrder = 2
          end
          object edtValor: TEdit
            Left = 165
            Top = 135
            Width = 97
            Height = 23
            TabOrder = 3
          end
          object edtPercentImposto: TEdit
            Left = 310
            Top = 135
            Width = 57
            Height = 23
            TabOrder = 4
          end
        end
        object pnlRodape: TPanel
          Left = 0
          Top = 256
          Width = 747
          Height = 51
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object pnlRodapeSep1: TPanel
            Left = 0
            Top = 0
            Width = 366
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            ExplicitHeight = 66
          end
          object pnlSalvar: TPanel
            Left = 366
            Top = 0
            Width = 185
            Height = 51
            Align = alLeft
            ParentColor = True
            TabOrder = 1
            ExplicitHeight = 66
            object shSalvar: TShape
              Left = 1
              Top = 1
              Width = 183
              Height = 49
              Align = alClient
              Shape = stRoundRect
              ExplicitLeft = 64
              ExplicitTop = 0
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object SpeedButton1: TSpeedButton
              Left = 1
              Top = 1
              Width = 183
              Height = 49
              Action = acSalvar
              Align = alClient
              ExplicitLeft = 80
              ExplicitTop = 24
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
          object pnlRodapeSep2: TPanel
            Left = 551
            Top = 0
            Width = 8
            Height = 51
            Align = alLeft
            ParentColor = True
            TabOrder = 2
            ExplicitHeight = 66
          end
          object pnlCancelar: TPanel
            Left = 559
            Top = 0
            Width = 185
            Height = 51
            Align = alLeft
            ParentColor = True
            TabOrder = 3
            ExplicitLeft = 366
            ExplicitHeight = 66
            object shCancelar: TShape
              Left = 1
              Top = 1
              Width = 183
              Height = 49
              Align = alClient
              Shape = stRoundRect
              ExplicitLeft = 64
              ExplicitTop = 0
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object btnCancelar: TSpeedButton
              Left = 1
              Top = 1
              Width = 183
              Height = 49
              Action = acCancelar
              Align = alClient
              ExplicitLeft = 80
              ExplicitTop = 24
              ExplicitWidth = 23
              ExplicitHeight = 22
            end
          end
        end
      end
    end
  end
  object alAcoesBotoesFiltro: TActionList
    Left = 576
    Top = 40
    object actNovo: TAction
      Category = 'Botao'
      Caption = '&Novo'
    end
    object actEditar: TAction
      Category = 'Botao'
      Caption = '&Editar'
    end
    object actDeletar: TAction
      Category = 'Botao'
      Caption = '&Deletar'
    end
    object actPesquisar: TAction
      Category = 'Filtro'
      Caption = '&Pesquisar'
    end
    object acSalvar: TAction
      Category = 'Botao'
      Caption = '&Salvar'
    end
    object acCancelar: TAction
      Category = 'Botao'
      Caption = '&Cancelar'
    end
  end
  object mtDados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 576
    Top = 288
    object mtDadosId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
    end
    object mtDadosDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
    end
    object mtDadosSigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
    end
    object mtDadosValor: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object mtDadosPercentImposto: TIntegerField
      DisplayLabel = '% Imposto'
      FieldName = 'PERCENTUALIMPOSTO'
    end
  end
  object dsDados: TDataSource
    DataSet = mtDados
    Left = 576
    Top = 216
  end
end
