unit Service.cadastro;

interface

uses
  System.SysUtils,
  System.Classes,
  Service.conexao,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Provider.constants;

type
  TServiceCadastro = class(TDataModule)

    //-------Pessoas------------------
    QRY_pessoas: TFDQuery;
    QRY_pessoasPES_CODIGO: TIntegerField;
    QRY_pessoasPES_RAZAO: TStringField;
    QRY_pessoasPES_FANTASIA: TStringField;
    QRY_pessoasPES_TELEFONE: TStringField;
    QRY_pessoasPES_CNPJCPF: TStringField;
    QRY_pessoasPES_IERG: TStringField;
    QRY_pessoasPES_OBSERVACAO: TStringField;
    QRY_pessoasPES_TIPOPESSOA: TIntegerField;
    //--------Endereço-----------------------
    QRY_endereco: TFDQuery;
    QRY_enderecoEND_CODIGO: TIntegerField;
    QRY_enderecoEND_PESSOA: TIntegerField;
    QRY_enderecoEND_CEP: TStringField;
    QRY_enderecoEND_CIDADE: TStringField;
    QRY_enderecoEND_ENDERECO: TStringField;
    QRY_enderecoEND_BAIRRO: TStringField;
    QRY_enderecoEND_OBSERVACAO: TStringField;
    QRY_enderecoEND_NUMERO: TStringField;
    QRY_produto: TFDQuery;
    QRY_produto2: TFDQuery;
    QRY_produtoPR1_CODIGO: TIntegerField;
    QRY_produtoPR1_NOMECOMPLETO: TStringField;
    QRY_produtoPR1_NOMEPOPULAR: TStringField;
    QRY_produtoPR1_CODIGOBARRA: TStringField;
    QRY_produtoPR1_REFERENCIA: TStringField;
    QRY_produtoPR1_GRUPO: TIntegerField;
    QRY_produtoPR1_SUBGRUPO: TIntegerField;
    QRY_produto2PR2_CODIGO: TIntegerField;
    QRY_produto2PR2_CODIGOPR1: TIntegerField;
    QRY_produto2PR2_FILIAL: TIntegerField;
    QRY_produto2PR2_CUSTOINI: TFMTBCDField;
    QRY_produto2PR2_VENDAVISTA: TFMTBCDField;
    QRY_produto2PR2_VENDAPRAZO: TFMTBCDField;
    QRY_produto2PR2_SITRIBUTARIA: TIntegerField;
    QRY_produtoPR1_NCM: TStringField;
    QRY_produto2PR2_ESTOQUE: TFMTBCDField;
    procedure QRY_produtoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceCadastro.QRY_produtoAfterScroll(DataSet: TDataSet);
begin // Pegando os produtos detalhes
  GET_Produto_detalhe(ServiceCadastro.QRY_produtoPR1_CODIGO.AsInteger,iCOD_FILIAL);
end;

end.
