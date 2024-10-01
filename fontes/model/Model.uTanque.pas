unit Model.uTanque;

interface

uses
  Model.uAcao;

type
  TTanque = class sealed
  private
    FAcao: TAcao;
    FArmazenamento: Currency;
    FDescricao: string;
    FId: Integer;
    FIdCombustivel: Integer;
  public
    property Acao: TAcao read FAcao write FAcao;
    property Armazenamento: Currency read FArmazenamento write FArmazenamento;
    property Descricao: string read FDescricao write FDescricao;
    property Id: Integer read FId write FId;
    property IdCombustivel: Integer read FIdCombustivel write FIdCombustivel;
  end;

implementation

end.
