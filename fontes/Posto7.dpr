program Posto7;

uses
  Vcl.Forms,
  View.uFormPrincipal in 'view\View.uFormPrincipal.pas' {FormPrincipal},
  Model.uCombustivel in 'model\Model.uCombustivel.pas',
  Model.uAcao in 'model\Model.uAcao.pas',
  Model.uTanque in 'model\Model.uTanque.pas',
  Model.uBomba in 'model\Model.uBomba.pas',
  Model.uAbastecimento in 'model\Model.uAbastecimento.pas',
  Dao.uDmConexao in 'dao\Dao.uDmConexao.pas' {DmConexao: TDataModule},
  View.uFormCombustivel in 'view\View.uFormCombustivel.pas' {FormCombustivel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
