inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  StyleElements = [seFont, seClient, seBorder]
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
        ExplicitTop = 0
        object lblCodigo: TLabel [0]
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
        object lblNomeCompleti: TLabel [1]
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
        object lblNomePopular: TLabel [2]
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
        object lblCodigoBarra: TLabel [3]
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
        object lblReferencia: TLabel [4]
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
        object lblNCM: TLabel [5]
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
        object lblCustoINI: TLabel [6]
          Left = 21
          Top = 376
          Width = 110
          Height = 28
          Caption = 'Custo Inicial'
          FocusControl = edtPR2_CustoINI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVendaVista: TLabel [7]
          Left = 162
          Top = 376
          Width = 107
          Height = 28
          Caption = 'Venda Vista'
          FocusControl = edtPR2_VendaVista
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVendaPrazo: TLabel [8]
          Left = 300
          Top = 376
          Width = 113
          Height = 28
          Caption = 'Venda Prazo'
          FocusControl = edtPR2_VendaPrazo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEstoque: TLabel [9]
          Left = 446
          Top = 376
          Width = 73
          Height = 28
          Caption = 'Estoque'
          FocusControl = edtPR2_Estoque
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlTituloCadastro: TPanel
          TabOrder = 11
          StyleElements = [seFont, seClient, seBorder]
          inherited lblTituloCadastro: TLabel
            Width = 198
            Caption = 'Cadastro de Produto'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 8
            ExplicitTop = 15
            ExplicitWidth = 198
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
          TabOrder = 0
        end
        object edtPR1_NomeCompleto: TDBEdit
          Left = 134
          Top = 146
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtPR1_NomePopular: TDBEdit
          Left = 540
          Top = 145
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPR1_CodigoBarra: TDBEdit
          Left = 21
          Top = 205
          Width = 163
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGOBARRA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPR1_Referencia: TDBEdit
          Left = 190
          Top = 205
          Width = 344
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_REFERENCIA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPR1_NCM: TDBEdit
          Left = 21
          Top = 260
          Width = 163
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NCM'
          DataSource = dsDados
          TabOrder = 5
        end
        object pnlTituloCadDetalhe: TPanel
          Left = 0
          Top = 304
          Width = 1078
          Height = 50
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Color = 14869218
          ParentBackground = False
          TabOrder = 6
          object lblTidle: TLabel
            Left = 21
            Top = 8
            Width = 187
            Height = 30
            Caption = 'Detalhe do Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5263440
            Font.Height = -22
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPR2_CustoINI: TDBEdit
          Left = 21
          Top = 405
          Width = 135
          Height = 23
          DataField = 'PR2_CUSTOINI'
          DataSource = dsProdutos2
          TabOrder = 7
        end
        object edtPR2_VendaVista: TDBEdit
          Left = 162
          Top = 405
          Width = 132
          Height = 23
          DataField = 'PR2_VENDAVISTA'
          DataSource = dsProdutos2
          TabOrder = 8
        end
        object edtPR2_VendaPrazo: TDBEdit
          Left = 300
          Top = 405
          Width = 140
          Height = 23
          DataField = 'PR2_VENDAPRAZO'
          DataSource = dsProdutos2
          TabOrder = 9
        end
        object edtPR2_Estoque: TDBEdit
          Left = 446
          Top = 405
          Width = 96
          Height = 23
          DataField = 'PR2_ESTOQUE'
          DataSource = dsProdutos2
          TabOrder = 10
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto
    Left = 665
    Top = 227
  end
  object dsProdutos2: TDataSource
    DataSet = ServiceCadastro.QRY_produto2
    Left = 713
    Top = 227
  end
end
