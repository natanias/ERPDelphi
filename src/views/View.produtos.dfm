inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitTop = -131
  TextHeight = 15
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Caption = 'Produtos'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 81
    end
    inherited pnlIcon: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlRodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlLinhaFundo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited CardPanel_Listas: TCardPanel
      ActiveCard = card_cadastro
      StyleElements = [seFont, seClient, seBorder]
      inherited card_pesquisa: TCard
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlTituloPesquisa: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblTituloPesquisa: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edtPesquisa: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited DBG_dados: TDBGrid
          Height = 289
          Columns = <
            item
              Expanded = False
              FieldName = 'PR1_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMECOMPLETO'
              Title.Caption = 'Nome Completo'
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMEPOPULAR'
              Title.Caption = 'Nome Popular'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_CODIGOBARRA'
              Title.Caption = 'C'#243'digo Barras'
              Width = 201
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncia'
              Width = 214
              Visible = True
            end>
        end
        object pnlDetalhe: TPanel
          Left = 0
          Top = 380
          Width = 1078
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 408
          object DBG_detalhes: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1070
            Height = 140
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsProdutos2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'PR2_FILIAL'
                Title.Caption = 'Filial'
                Width = 198
                Visible = True
              end
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'PR2_CUSTOINI'
                Title.Caption = 'Custo Ini'
                Width = 135
                Visible = True
              end
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'PR2_VENDAVISTA'
                Title.Caption = 'Venda Vista'
                Width = 134
                Visible = True
              end
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'PR2_VENDAPRAZO'
                Title.Caption = 'Venda Prazo'
                Width = 146
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_ESTOQUE'
                Title.Caption = 'Estoque'
                Visible = True
              end>
          end
        end
      end
      inherited card_cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        ExplicitTop = -3
        object lblCodigo: TLabel
          Left = 21
          Top = 111
          Width = 65
          Height = 28
          Caption = 'C'#243'digo'
          FocusControl = edtPR1_Codigo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNomeCompleti: TLabel
          Left = 134
          Top = 112
          Width = 261
          Height = 28
          Caption = 'Nome Completo do Produto'
          FocusControl = edtPR1_NomeCompleto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNomePopular: TLabel
          Left = 540
          Top = 112
          Width = 131
          Height = 28
          Caption = 'Nome Popular'
          FocusControl = edtPR1_NomePopular
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCodigoBarra: TLabel
          Left = 21
          Top = 177
          Width = 146
          Height = 28
          Caption = 'C'#243'digo de Barra'
          FocusControl = edtPR1_CodigoBarra
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblReferencia: TLabel
          Left = 190
          Top = 177
          Width = 94
          Height = 28
          Caption = 'Refer'#234'ncia'
          FocusControl = edtPR1_Referencia
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNCM: TLabel
          Left = 21
          Top = 233
          Width = 45
          Height = 28
          Caption = 'NCM'
          FocusControl = edtPR1_NCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadProdutos: TPanel
          Left = 0
          Top = 0
          Width = 1078
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          Color = 14869218
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 8
          object lblTitleCadCliente: TLabel
            Left = 21
            Top = 21
            Width = 207
            Height = 30
            Caption = 'Cadastro de Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5263440
            Font.Height = -22
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPR1_Codigo: TDBEdit
          Left = 21
          Top = 145
          Width = 107
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGO'
          DataSource = dsDados
          Enabled = False
          TabOrder = 1
        end
        object edtPR1_NomeCompleto: TDBEdit
          Left = 134
          Top = 146
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPR1_NomePopular: TDBEdit
          Left = 540
          Top = 145
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPR1_CodigoBarra: TDBEdit
          Left = 21
          Top = 205
          Width = 163
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGOBARRA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPR1_Referencia: TDBEdit
          Left = 190
          Top = 205
          Width = 344
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_REFERENCIA'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPR1_NCM: TDBEdit
          Left = 21
          Top = 260
          Width = 163
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NCM'
          DataSource = dsDados
          TabOrder = 6
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto
    OnDataChange = dsDadosDataChange
    Left = 529
    Top = 67
  end
  object dsProdutos2: TDataSource
    DataSet = ServiceCadastro.QRY_produto2
    Left = 593
    Top = 67
  end
end
