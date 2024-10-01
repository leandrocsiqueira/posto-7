program Posto7;

uses
  Vcl.Forms,
  View.uFormPrincipal in 'view\View.uFormPrincipal.pas' {FormPrincipal},
  Model.uCombustivel in 'model\Model.uCombustivel.pas',
  Model.uAcao in 'model\Model.uAcao.pas',
  Model.uTanque in 'model\Model.uTanque.pas',
  Model.uBomba in 'model\Model.uBomba.pas',
  Model.uAbastecimento in 'model\Model.uAbastecimento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
