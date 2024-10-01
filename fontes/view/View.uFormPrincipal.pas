unit View.uFormPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList,
  Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    actAbastecimento: TAction;
    actBomba: TAction;
    actCombustivel: TAction;
    actRelAbastecimento: TAction;
    actTanque: TAction;
    alAcoesMenu: TActionList;
    miCadastro: TMenuItem;
    miCadBomba: TMenuItem;
    miCadCombustivel: TMenuItem;
    miCadTanque: TMenuItem;
    miRelAbastecimento: TMenuItem;
    miRelatorios: TMenuItem;
    miVendAbastecimento: TMenuItem;
    miVendas: TMenuItem;
    mmPrincipal: TMainMenu;
    pnlCentro: TPanel;
    pnlEsquerdo: TPanel;
    pnlRodape: TPanel;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

end.
