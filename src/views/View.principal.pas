unit View.principal;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  System.Actions,
  Vcl.ActnList,
  Provider.constants,
  View.clientes,
  View.fornecedores,
  Provider.conversao,
  View.produtos,
  RLReport,
  RLPDFFilter,
  System.IOUtils,
  view.relatorio.main;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackGround: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    imgLogo: TImage;
    pnlText: TPanel;
    lblBemVindo: TLabel;
    lblText: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUsuario: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlSair: TPanel;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnExit: TSpeedButton;
    lblLicenca: TLabel;
    imgUsuarioClaro: TImage;
    imgBackground: TImage;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    lblLicenciado: TLabel;
    pnlLicenciado: TPanel;
    pnlLicenca: TPanel;
    btn_Relatorio: TSpeedButton;


    procedure btnExitClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure imgUsuarioClaroMouseEnter(Sender: TObject);
    procedure imgUsuarioMouseEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_RelatorioClick(Sender: TObject);



  private
    procedure GET_LineMENU(Sender: TObject); // ctrl + SHit + C
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses View.relatorio, View.relatorio2;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
  //Caixa
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  //Clientes
  GET_LineMENU(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try

    ViewClientes.Top     := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewClientes.Height) / 2));
    ViewClientes.Left    := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewClientes.Width) / 2));

    ViewClientes.Tag := PessoasToInt(tpCliente);
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  //Configuração
  GET_LineMENU(Sender);

end;

procedure TViewPrincipal.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  //Fornecedor
  GET_LineMENU(Sender);
  ViewFornecedores := TViewFornecedores.Create(Self);
  try

    ViewFornecedores.Top    := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewFornecedores.Height) / 2));
    ViewFornecedores.Left    := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewFornecedores.Width) / 2));

    ViewFornecedores.Tag := PessoasToInt(tpFornecedores);
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  //Produtos
  GET_LineMENU(Sender);
  ViewProdutos := TViewProdutos.Create(Self);
  try
    //Centraliza Menu
    ViewProdutos.Top    := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewProdutos.Height) / 2));
    ViewProdutos.Left    := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewProdutos.Width) / 2));

    ViewProdutos.sTELA := TelasToStr(tpProdutos);
    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
  
end;





procedure TViewPrincipal.btn_RelatorioClick(Sender: TObject);
  //relatório
begin
  GET_LineMENU(Sender);
  // Chama a tela de relatórios
  TFrmRelatorios := TTFrmRelatorios.Create(Self);
  try
     // Exibe a tela de relatórios de forma modal

    TFrmRelatorios.Top     := Round(pnlTopo.Height + ((pnlConteudo.Height - TFrmRelatorios.Height) / 2));
    TFrmRelatorios.Left    := Round(pnlMenu.Width + ((pnlConteudo.Width - TFrmRelatorios.Width) / 2));

    TFrmRelatorios.ShowModal;
  finally
    FreeAndNil(TFrmRelatorios); // Libera a memória após fechar a tela
  end;


end;



procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  lblLicenciado.Caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left    := 0;
  ShapeMenu.Top    := 33;
  ShapeMenu.Height  := TSpeedButton(Sender).Height;
  ShapeMenu.Top     := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;

end;



procedure TViewPrincipal.imgUsuarioClaroMouseEnter(Sender: TObject);
begin
  imgUsuario.Visible := True;
  imgUsuarioClaro.Visible := False;
end;

procedure TViewPrincipal.imgUsuarioMouseEnter(Sender: TObject);
begin
  imgUsuario.Visible := False;
  imgUsuarioClaro.Visible := True;
end;

end.
