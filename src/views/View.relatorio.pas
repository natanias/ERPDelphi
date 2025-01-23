unit View.relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,
  View.clientes;

type
  Trelatorio = class(TForm)
    rlr_relatorio: TRLReport;
    RLBand: TRLBand;
    rlb_title: TRLBand;
    rlb_colunas: TRLBand;
    rlb_detalhes: TRLBand;
    rlb_rodape: TRLBand;
    RLSystemInfo: TRLSystemInfo;
    lbl_hora: TRLSystemInfo;
    lbl_title: TRLLabel;
    RLLabel2: TRLLabel;
    RL_logo: TRLImage;
    RL_cnpj: TRLLabel;
    lbl_codigo: TRLLabel;
    lbl_referencia: TRLLabel;
    lbl_descricao: TRLLabel;
    RLD_codigo: TRLDBText;
    RLD_referencia: TRLDBText;
    RLD_descricao: TRLDBText;
    rlb_linha: TRLBand;
    lbl_registro: TRLLabel;
    lbl_total_registro: TRLLabel;
    lbl_total: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relatorio: Trelatorio;

implementation

{$R *.dfm}

uses Service.cadastro, Service.conexao, View.base.listas;

end.
