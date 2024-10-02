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
    FPercentualImposto: Integer;
    FAcao: TAcao;
    FValor: Currency;
  public
    property Id: Integer read FId write FId;
    property Descricao: string read FDescricao write FDescricao;
    property Sigla: string read FSigla write FSigla;
    property PercentualImposto: Integer read FPercentualImposto
      write FPercentualImposto;
    property Valor: Currency read FValor write FValor;
    property Acao: TAcao read FAcao write FAcao;
  end;

implementation

end.
