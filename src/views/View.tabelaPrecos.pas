unit View.tabelaPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Service.vcred, Vcl.ExtCtrls, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, View.vcred;

type
  TForm1 = class(TForm)
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    Relatorio: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
