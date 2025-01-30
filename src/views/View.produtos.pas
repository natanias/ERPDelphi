unit View.produtos;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.base.listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Service.cadastro, Provider.constants, Provider.conversao, Vcl.Mask,
  Vcl.DBCtrls, View.mensagens;

type
  TViewProdutos = class(TViewBaseListas)
    dsProdutos2: TDataSource;
    pnlDetalhe: TPanel;
    DBG_detalhes: TDBGrid;
    lblCodigo: TLabel;
    edtPR1_Codigo: TDBEdit;
    lblNomeCompleti: TLabel;
    edtPR1_NomeCompleto: TDBEdit;
    lblNomePopular: TLabel;
    edtPR1_NomePopular: TDBEdit;
    lblCodigoBarra: TLabel;
    edtPR1_CodigoBarra: TDBEdit;
    lblReferencia: TLabel;
    edtPR1_Referencia: TDBEdit;
    lblNCM: TLabel;
    edtPR1_NCM: TDBEdit;
    pnlTituloCadDetalhe: TPanel;
    lblTidle: TLabel;
    lblCustoINI: TLabel;
    edtPR2_CustoINI: TDBEdit;
    lblVendaVista: TLabel;
    edtPR2_VendaVista: TDBEdit;
    lblVendaPrazo: TLabel;
    edtPR2_VendaPrazo: TDBEdit;
    lblEstoque: TLabel;
    edtPR2_Estoque: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dsProdutos2.DataSet.Edit;
end;

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin      //novo
  inherited;
  ServiceCadastro.QRY_produtoPR1_GRUPO.AsInteger    := 1;
  ServiceCadastro.QRY_produtoPR1_SUBGRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto2.Open();
  ServiceCadastro.QRY_produto2.Insert;
end;

procedure TViewProdutos.btnSalvarClick(Sender: TObject);
begin     //Salvar
  inherited;

  dsDados.DataSet.Post;

  ServiceCadastro.QRY_produto2.Edit;
  ServiceCadastro.QRY_produto2PR2_CODIGOPR1.AsInteger     := ServiceCadastro.QRY_produtoPR1_CODIGO.AsInteger;
  ServiceCadastro.QRY_produto2PR2_FILIAL.AsInteger        := iCOD_FILIAL;
  ServiceCadastro.QRY_produto2PR2_SITRIBUTARIA.AsInteger  := 1;
  ServiceCadastro.QRY_produto2.Post;

  TViewMensagens.Mensagem('Produto Salvo com Sucesso.', 'Sucesso', 'I', [mbOk]);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin  //show
  inherited;
  GET_Produtos;

end;

end.
