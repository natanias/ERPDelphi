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
  Vcl.DBCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    dsProdutos2: TDataSource;
    pnlDetalhe: TPanel;
    DBG_detalhes: TDBGrid;
    pnlTituloCadProdutos: TPanel;
    lblTitleCadCliente: TLabel;
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
    procedure FormShow(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin      //novo
  inherited;
  ServiceCadastro.QRY_produtoPR1_GRUPO.AsInteger    := 1;
  ServiceCadastro.QRY_produtoPR1_SUBGRUPO.AsInteger := 1;
end;

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  GET_Produto_detalhe(ServiceCadastro.QRY_produtoPR1_CODIGO.AsInteger);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin  //show
  inherited;
  GET_Produtos;

end;

end.
