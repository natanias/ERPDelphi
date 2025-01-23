inherited ViewFornecedores: TViewFornecedores
  Caption = 'Fornecedores'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Caption = 'Fornecedores'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 119
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
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Fornecedor'
              Width = 457
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 150
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        object lblTitleCodigo: TLabel
          Left = 24
          Top = 96
          Width = 65
          Height = 28
          Caption = 'C'#243'digo'
          FocusControl = edtPES_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblrAZAO: TLabel
          Left = 280
          Top = 96
          Width = 195
          Height = 28
          Caption = 'Nome do Fornecedor'
          FocusControl = edtPES_RAZAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_fantasia: TLabel
          Left = 636
          Top = 96
          Width = 134
          Height = 28
          Caption = 'Nome Fantasia'
          FocusControl = edtPES_FANTASIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_telefone: TLabel
          Left = 196
          Top = 155
          Width = 78
          Height = 28
          Caption = 'Telefone'
          FocusControl = edtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_cnpj: TLabel
          Left = 124
          Top = 96
          Width = 100
          Height = 28
          Caption = 'CNPJ / CPF'
          FocusControl = edtPES_CNPJCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_Observacao: TLabel
          Left = 24
          Top = 215
          Width = 106
          Height = 28
          Caption = 'Observa'#231#227'o'
          FocusControl = edtPES_OBSERVACAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_ierg: TLabel
          Left = 24
          Top = 155
          Width = 42
          Height = 28
          Caption = 'IERG'
          FocusControl = edtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadCliente: TPanel
          Left = 0
          Top = 0
          Width = 1078
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          Color = 14869218
          ParentBackground = False
          TabOrder = 0
          object lblTitleCadCliente: TLabel
            Left = 21
            Top = 21
            Width = 248
            Height = 30
            Caption = 'Cadastro de Fornecedores'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5263440
            Font.Height = -22
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPES_CODIGO: TDBEdit
          Left = 24
          Top = 130
          Width = 97
          Height = 23
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
        object edtPES_RAZAO: TDBEdit
          Left = 280
          Top = 130
          Width = 350
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPES_FANTASIA: TDBEdit
          Left = 636
          Top = 130
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPES_TELEFONE: TDBEdit
          Left = 196
          Top = 189
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPES_CNPJCPF: TDBEdit
          Left = 124
          Top = 130
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtPES_IERG: TDBEdit
          Left = 24
          Top = 189
          Width = 166
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPES_OBSERVACAO: TDBEdit
          Left = 24
          Top = 249
          Width = 918
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 6
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 641
    Top = 35
  end
end
