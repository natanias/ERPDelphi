program ERPOne;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal},
  Service.conexao in 'src\services\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in 'src\services\Service.cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.constants in 'src\providers\Provider.constants.pas',
  View.base in 'src\views\View.base.pas' {ViewBase},
  View.base.listas in 'src\views\View.base.listas.pas' {ViewBaseListas},
  View.relatorio in 'src\views\View.relatorio.pas' {relatorio},
  View.relatorio2 in 'src\views\View.relatorio2.pas' {relatorio2},
  View.clientes in 'src\views\View.clientes.pas' {ViewClientes},
  View.fornecedores in 'src\views\View.fornecedores.pas' {ViewFornecedores},
  Provider.conversao in 'src\providers\Provider.conversao.pas',
  View.produtos in 'src\views\View.produtos.pas' {ViewProdutos},
  View.mensagens in 'src\views\View.mensagens.pas' {ViewMensagens},
  View.fundo in 'src\views\View.fundo.pas' {ViewFundo},
  Service.vcred in 'src\services\Service.vcred.pas' {DataModule1: TDataModule},
  View.tabelaPrecos in 'src\views\View.tabelaPrecos.pas' {Form1},
  View.vcred in 'src\views\View.vcred.pas' {ViewBaseListas1},
  view.relatorio.main in 'src\views\relatorios\view.relatorio.main.pas' {TFrmRelatorios};

// Substitu� a v�rgula por ponto e v�rgula

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(Trelatorio, relatorio);
  Application.CreateForm(Trelatorio2, relatorio2);
  Application.CreateForm(TViewClientes, ViewClientes);
  Application.CreateForm(TViewFornecedores, ViewFornecedores);
  Application.CreateForm(TViewProdutos, ViewProdutos);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TViewBaseListas1, ViewBaseListas1);
  Application.CreateForm(TTFrmRelatorios, TFrmRelatorios);
  Application.Run;
end.

