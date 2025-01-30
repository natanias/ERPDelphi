unit View.base.listas;

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
  View.base,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons,
  Vcl.WinXPanels,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXCtrls,
  Service.conexao,
  Provider.constants,
  Provider.conversao,
  View.mensagens, frxClass;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcon: TPanel;
    imgIcon: TImage;
    pnlFechar: TPanel;
    btnExit: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    CardPanel_Listas: TCardPanel;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
    btnVoltarPesquisa: TSpeedButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnExitMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanel_ListasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
      sTELA: string;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

uses Service.cadastro;

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin //cancelar
  inherited;
  if dsDados.DataSet.State in dsEditModes then
    dsDados.DataSet.Cancel;
  CardPanel_Listas.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin //Editar
  inherited;
  CardPanel_Listas.ActiveCard := card_cadastro;
  dsDados.DataSet.Edit;

end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin //excluir
  inherited;
  if dsDados.DataSet.RecordCount > 0 then
  begin



    if Self.Tag > 0 then
    begin

      case Self.Tag of
        1: begin
          if TViewMensagens.Mensagem('Deseja mesmo excluir esse Cliente ?', 'Exclusão', 'D',[mbSim,mbNao]) then
            begin
              dsDados.DataSet.Delete;
              TViewMensagens.Mensagem('Cliente excluido com sucesso.', 'Sucesso', 'I', [mbOk]);
            end;

        end;
        2: begin
          if TViewMensagens.Mensagem('Deseja mesmo excluir esse Fornecedor ?', 'Exclusão', 'D',[mbSim,mbNao]) then
            begin
              dsDados.DataSet.Delete;
              TViewMensagens.Mensagem('Fornecedor excluido com sucesso.', 'Sucesso', 'I', [mbOk]);
            end;
        end;
        3: begin
          if TViewMensagens.Mensagem('Deseja mesmo excluir esse Funcionário ?', 'Exclusão', 'D',[mbSim,mbNao]) then
            begin
              dsDados.DataSet.Delete;
              TViewMensagens.Mensagem('Funcionário excluido com sucesso.', 'Sucesso', 'I', [mbOk]);
            end;
        end;
      end;
    end
    else begin
      if sTELA = TelasToStr(tpProdutos) then
      begin
      TViewMensagens.Mensagem('Produto excluido com Sucesso.', 'Deletar', 'D', [mbOk]);

      end;

      if sTELA = TelasToStr(tpCaixa) then
      begin
      TViewMensagens.Mensagem('Caixa excluido com Sucesso.', 'Deletar', 'D', [mbOk]);

      end;

      if sTELA = TelasToStr(tpGrupo) then
      begin
        TViewMensagens.Mensagem('Grupo excluido com Sucesso.', 'Deletar', 'D', [mbOk]);

      end;

      if sTELA = TelasToStr(tpSubgrupo) then
      begin
        TViewMensagens.Mensagem('Subgrupo excluido com Sucesso.', 'Deletar', 'D', [mbOk]);
      end;


    end;

    CardPanel_Listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.btnExitClick(Sender: TObject);
begin
  inherited;

  Self.Close();


end;

procedure TViewBaseListas.btnExitMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;

begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin //Novo
  inherited;
    CardPanel_Listas.ActiveCard := card_cadastro;
    dsDados.DataSet.Insert;

end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin //salvar
  inherited;

  if dsDados.DataSet.State in dsEditModes then //dsDados ja pega dentro do dataset e faz a mudança em vez de pegar do banco cadastro
  begin

    if Self.Tag > 0 then
    begin

      ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := Self.Tag;
      ServiceCadastro.QRY_pessoas.Post;

      case Self.Tag of
        1: begin
          TViewMensagens.Mensagem('Cliente Salvo com Sucesso.', 'Salvar', 'I', [mbOk]);
        end;
        2: begin
          TViewMensagens.Mensagem('Fornecedor Salvo com Sucesso.', 'Salvar', 'I', [mbOk]);
        end;
        3: begin
          TViewMensagens.Mensagem('Funcionário Salvo com Sucesso.', 'Salvar', 'I', [mbOk]);
        end;
      end;

    end;
    //else begin

      //dsDados.DataSet.Post;

     // if sTELA = TelasToStr(tpProdutos) then
     // begin
        //ShowMessage('Produto Salvo com Sucesso.');
     // end;

     // if sTELA = TelasToStr(tpCaixa) then
      //begin
      //  ShowMessage('Caixa Salvo com Sucesso.');
     // end;

      //if sTELA = TelasToStr(tpGrupo) then
     // begin
     //   ShowMessage('Grupo Salvo com Sucesso!!!');
     // end;

     // if sTELA = TelasToStr(tpSubgrupo) then
     // begin
     //   ShowMessage('Subgrupo Salvo com Sucesso!!!');
     // end;

   // end;

   // CardPanel_Listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.CardPanel_ListasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin            // change card
  inherited;
  if CardPanel_Listas.ActiveCard = card_cadastro then
    SelectFirst;
    //se for cadastro jogo no primeiro que estiver lberado
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin    //show
  inherited;
  CardPanel_Listas.ActiveCard := card_pesquisa;
  GET_Pessoas(Self.Tag);
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

end.


