unit Provider.constants;

interface

procedure GET_Pessoas(iTIPO: integer);
procedure GET_Produtos;
procedure GET_Produto_detalhe(iCOD_PRODUTO: integer); overload;
procedure GET_Produto_detalhe(iCOD_PRODUTO, iCOD_FILIAL: integer); overload;

var
  iCOD_FILIAL: integer;
  sRAZAO_FILIAL: string;

implementation

uses
  Service.cadastro;

//procedure para buscar clientes, funcionarios e fornecedor
procedure GET_Pessoas(iTIPO: integer);
begin
  ServiceCadastro.QRY_pessoas.Close;
  ServiceCadastro.QRY_pessoas.SQL.Clear;
  ServiceCadastro.QRY_pessoas.SQL.Add('select * from pessoas where pes_tipopessoa = :tipopessoa');
  ServiceCadastro.QRY_pessoas.SQL.Add('order by pes_codigo');
  ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTIPO;
  ServiceCadastro.QRY_pessoas.Open();
end;

procedure GET_Produtos;
begin //busca todos os produtos
  ServiceCadastro.QRY_produto.Close;
  ServiceCadastro.QRY_produto.SQL.Clear;
  ServiceCadastro.QRY_produto.SQL.Add('select * from produto order by pr1_codigo');
  ServiceCadastro.QRY_produto.Open();
end;

procedure GET_Produto_detalhe(iCOD_PRODUTO: integer);
begin //busca apenas o detalhe de um produto (todos)

  ServiceCadastro.QRY_produto2.Close;
  ServiceCadastro.QRY_produto2.SQL.Clear;
  ServiceCadastro.QRY_produto2.SQL.Add('select * from produto2 where pr2_codigopr1 = :codigo');
  ServiceCadastro.QRY_produto2.Params[0].AsInteger := iCOD_PRODUTO;
  ServiceCadastro.QRY_produto2.Open();

  end;

procedure GET_Produto_detalhe(iCOD_PRODUTO, iCOD_FILIAL: integer);
begin //busca apenas o detalhe de um produto (por filial)

  ServiceCadastro.QRY_produto2.Close;
  ServiceCadastro.QRY_produto2.SQL.Clear;
  ServiceCadastro.QRY_produto2.SQL.Add('select * from produto2 where pr2_codigopr1 = :codigo');
  ServiceCadastro.QRY_produto2.SQL.Add('and pr2_filial = :filial');
  ServiceCadastro.QRY_produto2.Params[0].AsInteger := iCOD_PRODUTO;
  ServiceCadastro.QRY_produto2.Params[1].AsInteger := iCOD_FILIAL;
  ServiceCadastro.QRY_produto2.Open();

end;

end.
