unit Model.uAbastecimento;

interface

uses
  Model.uAcao;

type
  TAbastecimento = class sealed
  private
    FAcao: TAcao;
    FCombustivel: string;
    FDataHora: TDateTime;
    FId: Integer;
    FIdBomba: Integer;
    FPercentualImposto: Integer;
    FQuantidade: Real;
    FValorImposto: Real;
    FValorTotal: Real;
    FValorUnitario: Real;
  public
    property Acao: TAcao read FAcao write FAcao;
    property Combustivel: string read FCombustivel write FCombustivel;
    property DataHora: TDateTime read FDataHora write FDataHora;
    property Id: Integer read FId write FId;
    property IdBomba: Integer read FIdBomba write FIdBomba;
    property PercentualImposto: Integer read FPercentualImposto
      write FPercentualImposto;
    property Quantidade: Real read FQuantidade write FQuantidade;
    property ValorImposto: Real read FValorImposto write FValorImposto;
    property ValorTotal: Real read FValorTotal write FValorTotal;
    property ValorUnitario: Real read FValorUnitario write FValorUnitario;
  end;

implementation

end.
