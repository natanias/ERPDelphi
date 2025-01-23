unit View.fornecedores;

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
  Service.cadastro,
  Vcl.Mask,
  Vcl.DBCtrls;

type
  TViewFornecedores = class(TViewBaseListas)
    lblTitleCodigo: TLabel;
    lblrAZAO: TLabel;
    lbl_fantasia: TLabel;
    lbl_telefone: TLabel;
    lbl_cnpj: TLabel;
    lbl_Observacao: TLabel;
    pnlTituloCadCliente: TPanel;
    lblTitleCadCliente: TLabel;
    edtPES_CODIGO: TDBEdit;
    edtPES_RAZAO: TDBEdit;
    edtPES_FANTASIA: TDBEdit;
    edtPES_TELEFONE: TDBEdit;
    edtPES_CNPJCPF: TDBEdit;
    edtPES_IERG: TDBEdit;
    edtPES_OBSERVACAO: TDBEdit;
    lbl_ierg: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

end.
