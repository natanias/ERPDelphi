unit View.relatorio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
 Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Imaging.pngimage,Vcl.Controls, Vcl.Styles,
  RLFilters, RLPDFFilter, RLXLSFilter;

type
  Trelatorio2 = class(TForm)
    rlr_relatorio2: TRLReport;
    RLBand: TRLBand;
    RLSystemInfo: TRLSystemInfo;
    lbl_hora: TRLSystemInfo;
    lbl_title: TRLLabel;
    rlb_title: TRLBand;
    RLLabel2: TRLLabel;
    RL_logo: TRLImage;
    RL_cnpj: TRLLabel;
    rlb_colunas: TRLBand;
    lbl_codigo: TRLLabel;
    lbl_referencia: TRLLabel;
    lbl_descricao: TRLLabel;
    rlb_detalhes: TRLBand;
    RLD_codigo: TRLDBText;
    RLD_referencia: TRLDBText;
    RLD_descricao: TRLDBText;
    rlb_rodape: TRLBand;
    lbl_registro: TRLLabel;
    lbl_total_registro: TRLLabel;
    lbl_total: TRLLabel;
    rlb_linha: TRLBand;
    RLPDFFilter: TRLPDFFilter;
    RLXLSFilter: TRLXLSFilter;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relatorio2: Trelatorio2;

implementation

{$R *.dfm}

uses Service.cadastro, Service.conexao, View.base.listas, View.clientes;

end.
