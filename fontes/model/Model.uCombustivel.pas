unit Model.uCombustivel;

interface

uses
  Model.uAcao;

type
  TCombustivel = class sealed
  private
    FId: Integer;
    FDescricao: string;
    FSigla: string;
    FImposto: Integer;
    FAcao: TAcao;
    FValor: Currency;
  public
    property Id: Integer read FId write FId;
    property Descricao: string read FDescricao write FDescricao;
    property Sigla: string read FSigla write FSigla;
    property Imposto: Integer read FImposto write FImposto;
    property Valor: Currency read FValor write FValor;
    property Acao: TAcao read FAcao write FAcao;
  end;

implementation

end.
