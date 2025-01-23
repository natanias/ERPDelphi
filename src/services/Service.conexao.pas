unit Service.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase,
  FireDAC.Comp.UI,
  Data.DB,
  FireDAC.Comp.Client,
  System.IniFiles,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    QRY_filial: TFDQuery;
    QRY_filialFIL_CODIGO: TIntegerField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;

    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LIniFile    : TIniFile;
  LDatabase   : string;
  LUser_Name  : string;
  LPassword   : string;
  LServidor   : string;
  LCaminho    : string;
begin
  try
    FDConn.Connected := False;

    // Caminho para o arquivo Login.ini dentro da pasta "install"
    LCaminho := ExtractFilePath(ParamStr(0)) + '\Login.ini';

    // Verificar se o arquivo existe
    if not FileExists(LCaminho) then
      raise Exception.Create('Arquivo de configuração "Login.ini" não encontrado no caminho: ' + LCaminho);

    // Criar o objeto TIniFile e carregar as configurações
    LIniFile := TIniFile.Create(LCaminho);
    try
      LDatabase := LIniFile.ReadString('Conexao', 'Database', '');
      LServidor := LIniFile.ReadString('Conexao', 'Servidor', '');

      // Verificar se os parâmetros estão preenchidos
      if LDatabase.IsEmpty then
        raise Exception.Create('O parâmetro "Database" não foi definido no Login.ini.');
      if LServidor.IsEmpty then
        raise Exception.Create('O parâmetro "Servidor" não foi definido no Login.ini.');

      // Configurar os parâmetros de conexão
      LUser_Name := 'SYSDBA';   // Usuário padrão Firebird
      LPassword  := 'masterkey'; // Senha padrão Firebird

      FDConn.Params.Values['Database']  := LDatabase;
      FDConn.Params.Values['User_Name'] := LUser_Name;
      FDConn.Params.Values['Password']  := LPassword;
      FDConn.Params.Values['Server']    := LServidor;

      // A porta é opcional e será usada somente se existir no arquivo
      if LIniFile.ValueExists('Conexao', 'Porta') then
        FDConn.Params.Values['Port'] := LIniFile.ReadString('Conexao', 'Porta', '3050'); // Porta padrão 3050
    finally
      FreeAndNil(LIniFile);
    end;

    // Ativar a conexão
    //FDConn.Connected := True;

    // Executar consulta para carregar a filial
    QRY_filial.Close;
    QRY_filial.Params[0].AsInteger := 1;
    QRY_filial.Open();

    iCOD_FILIAL   := QRY_filialFIL_CODIGO.AsInteger;
    sRAZAO_FILIAL := QRY_filialFIL_RAZAO.AsString;

  except
    on E: Exception do
    begin
      // Trate o erro de forma adequada
      raise Exception.Create('Erro ao inicializar a conexão: ' + E.Message);
    end;
  end;
end;

end.

