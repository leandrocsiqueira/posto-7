unit Model.uBomba;

interface

uses
  Model.uAcao;

type
  TBomba = class sealed
  private
    FAcao: TAcao;
    FDescricao: string;
    FId: Integer;
    FIdTanque: Integer;
  public
    property Acao: TAcao read FAcao write FAcao;
    property Descricao: string read FDescricao write FDescricao;
    property Id: Integer read FId write FId;
    property IdTanque: Integer read FIdTanque write FIdTanque;
  end;

implementation

end.
