inherited ViewBaseListas1: TViewBaseListas1
  Caption = 'ViewBaseListas1'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Width = 966
      Height = 26
      StyleElements = [seFont, seClient, seBorder]
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
      ActiveCard = card_pesquisa
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
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'COD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 383
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDA'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRAZO'
              Width = 79
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlTituloCadastro: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblTituloCadastro: TLabel
            Height = 42
            StyleElements = [seFont, seClient, seBorder]
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = DataModule1.QRY_mercantil
    Left = 865
    Top = 51
  end
end
