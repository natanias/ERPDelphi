unit view.relatorio.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Menus;

type
  TTFrmRelatorios = class(TForm)
    pnlRodape: TPanel;
    MainMenu: TMainMenu;
    estoque1: TMenuItem;
    Vendas1: TMenuItem;
    Financeiro1: TMenuItem;
    Relatrios1: TMenuItem;
    T1: TMenuItem;
    BInventrio1: TMenuItem;
    CBalano1: TMenuItem;
    DLivrosFiscais1: TMenuItem;
    ESugestopcompras1: TMenuItem;
    pnlTop: TPanel;
    pnlText: TPanel;
    lblBemVindo: TLabel;
    lblText: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    CardPanel_Relatorio: TCardPanel;
    pnlFundo: TPanel;
    card_principal: TCard;
    btnExit: TSpeedButton;
    pnlDivisao: TPanel;
    card_TabelaPreco: TCard;
    DBG_: TDBGrid;
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
    btnVoltarPesquisa: TSpeedButton;
    imgFundo: TImage;
    procedure btnExitClick(Sender: TObject);
    procedure card_TabelaPrecoClick(Sender: TObject);
    procedure T1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFrmRelatorios: TTFrmRelatorios;

implementation

{$R *.dfm}

procedure TTFrmRelatorios.btnExitClick(Sender: TObject);
begin
  Self.Close();
end;

procedure TTFrmRelatorios.card_TabelaPrecoClick(Sender: TObject);
begin
  //CardPanel_Relatorio.ActiveCard := card_TabelaPreco;
end;

procedure TTFrmRelatorios.T1Click(Sender: TObject);
begin
  CardPanel_Relatorio.ActiveCard := card_TabelaPreco;
end;

end.
