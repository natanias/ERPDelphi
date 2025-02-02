unit Service.vcred;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    FDConn: TFDConnection;
    QRY_mercantil: TFDQuery;
    QRY_2: TFDQuery;
    QRY_2CNPJCLIENTE: TStringField;
    QRY_2RAZAOSOCIAL: TStringField;
    QRY_2NOMEFANTASIA: TStringField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation



{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}




end.
