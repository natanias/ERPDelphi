unit View.clientes;

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
  TViewClientes = class(TViewBaseListas)
    lblTitleCodigo: TLabel;
    lblrAZAO: TLabel;
    edtPES_RAZAO: TDBEdit;
    lbl_fantasia: TLabel;
    edtPES_FANTASIA: TDBEdit;
    lbl_telefone: TLabel;
    edtPES_TELEFONE: TDBEdit;
    lbl_cnpj: TLabel;
    edtPES_CNPJCPF: TDBEdit;
    lbl_ierg: TLabel;
    edtPES_IERG: TDBEdit;
    lbl_Observacao: TLabel;
    edtPES_OBSERVACAO: TDBEdit;
    edtPES_CODIGO: TDBEdit;
  private
    { Private declarations }
  public

  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

end.

