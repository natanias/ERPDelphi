object ServiceCadastro: TServiceCadastro
  Height = 376
  Width = 371
  PixelsPerInch = 120
  object QRY_pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      '    select * from pessoas where pes_codigo = :codigo')
    Left = 33
    Top = 51
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_pessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_pessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_pessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_pessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object QRY_pessoasPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object QRY_pessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 50
    end
    object QRY_pessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
    object QRY_pessoasPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object QRY_endereco: TFDQuery
    ChangeAlertName = 'QRY_endereco'
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from endereco where end_codigo = :codigo')
    Left = 33
    Top = 115
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_enderecoEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_enderecoEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object QRY_enderecoEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
    end
    object QRY_enderecoEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 100
    end
    object QRY_enderecoEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 100
    end
    object QRY_enderecoEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 100
    end
    object QRY_enderecoEND_OBSERVACAO: TStringField
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 200
    end
    object QRY_enderecoEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
    end
  end
  object QRY_produto: TFDQuery
    AfterScroll = QRY_produtoAfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto where pr1_codigo =:codigo')
    Left = 128
    Top = 51
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produtoPR1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produtoPR1_NOMECOMPLETO: TStringField
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produtoPR1_NOMEPOPULAR: TStringField
      FieldName = 'PR1_NOMEPOPULAR'
      Origin = 'PR1_NOMEPOPULAR'
      Size = 100
    end
    object QRY_produtoPR1_CODIGOBARRA: TStringField
      FieldName = 'PR1_CODIGOBARRA'
      Origin = 'PR1_CODIGOBARRA'
      Size = 50
    end
    object QRY_produtoPR1_REFERENCIA: TStringField
      FieldName = 'PR1_REFERENCIA'
      Origin = 'PR1_REFERENCIA'
      Size = 50
    end
    object QRY_produtoPR1_GRUPO: TIntegerField
      FieldName = 'PR1_GRUPO'
      Origin = 'PR1_GRUPO'
    end
    object QRY_produtoPR1_SUBGRUPO: TIntegerField
      FieldName = 'PR1_SUBGRUPO'
      Origin = 'PR1_SUBGRUPO'
    end
    object QRY_produtoPR1_NCM: TStringField
      FieldName = 'PR1_NCM'
      Origin = 'PR1_NCM'
      Size = 10
    end
  end
  object QRY_produto2: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto2 where pr2_codigo =:codigo')
    Left = 128
    Top = 115
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto2PR2_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR2_CODIGO'
      Origin = 'PR2_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto2PR2_CODIGOPR1: TIntegerField
      FieldName = 'PR2_CODIGOPR1'
      Origin = 'PR2_CODIGOPR1'
    end
    object QRY_produto2PR2_FILIAL: TIntegerField
      FieldName = 'PR2_FILIAL'
      Origin = 'PR2_FILIAL'
    end
    object QRY_produto2PR2_CUSTOINI: TFMTBCDField
      FieldName = 'PR2_CUSTOINI'
      Origin = 'PR2_CUSTOINI'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAVISTA: TFMTBCDField
      FieldName = 'PR2_VENDAVISTA'
      Origin = 'PR2_VENDAVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAPRAZO: TFMTBCDField
      FieldName = 'PR2_VENDAPRAZO'
      Origin = 'PR2_VENDAPRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_SITRIBUTARIA: TIntegerField
      FieldName = 'PR2_SITRIBUTARIA'
      Origin = 'PR2_SITRIBUTARIA'
    end
    object QRY_produto2PR2_ESTOQUE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PR2_ESTOQUE'
      Origin = 'PR2_ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
end
