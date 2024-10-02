unit Dao.uDmConexao;

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
  FireDAC.Comp.UI,
  FireDAC.Phys.IBBase,
  Data.DB,
  FireDAC.Comp.Client,
  System.IniFiles;

type
  TDmConexao = class(TDataModule)
    fdConexao: TFDConnection;
    fdCursor: TFDGUIxWaitCursor;
    fdLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure ConectarAoBanco;
    procedure ConfigurarConexao;
    procedure LerConfiguracoesIni(const ACaminhoArquivo: string);
    function ObterCaminhoArquivoIni: string;
  public
    function CriarConsulta: TFDQuery;
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

{ TDmConexao }

procedure TDmConexao.ConectarAoBanco;
begin
  // Leitura das configurações do arquivo INI
  LerConfiguracoesIni(ObterCaminhoArquivoIni);

  // Configura a conexão
  ConfigurarConexao;

  // Testa a conexão
  try
    fdConexao.Connected := True;
  except on E: Exception do
    raise Exception.Create('Erro ao configurar a conexão: ' + E.Message);
  end;
end;

procedure TDmConexao.ConfigurarConexao;
begin
  fdConexao.LoginPrompt := False;
  fdConexao.FormatOptions.OwnMapRules := True;
  fdConexao.FormatOptions.MapRules.Add(dtSingle, dtDouble);
end;

function TDmConexao.CriarConsulta: TFDQuery;
var
  LConsulta: TFDQuery;
begin
  LConsulta := TFDQuery.Create(nil);
  LConsulta.Connection := fdConexao;
  Result := LConsulta;
end;

procedure TDmConexao.DataModuleCreate(Sender: TObject);
begin
  ConectarAoBanco;
end;

procedure TDmConexao.LerConfiguracoesIni(const ACaminhoArquivo: string);
var
  LArquivoIni: TIniFile;
begin
  LArquivoIni := TIniFile.Create(ACaminhoArquivo);
  try
    // Leitura das configurações do arquivo INI
    fdConexao.Params.DriverID := LArquivoIni.ReadString('Database',
      'DriverID', 'FB');
    fdConexao.Params.Database := LArquivoIni.ReadString('Database',
      'Database', '');
    fdConexao.Params.UserName := LArquivoIni.ReadString('Database',
      'Username', '');
    fdConexao.Params.Password := LArquivoIni.ReadString('Database',
      'Password', '');
  finally
    LArquivoIni.Free;
  end;
end;

function TDmConexao.ObterCaminhoArquivoIni: string;
begin
  // Define o caminho completo até o arquivo INI
  Result := IncludeTrailingPathDelimiter
    (ExtractFileDir(ExtractFileDir(ExtractFileDir(ParamStr(0))))) +
    'db\config.ini';
end;

end.
