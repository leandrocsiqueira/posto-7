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
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.jpeg,
  System.ImageList,
  Vcl.ImgList;

type
  TFormPrincipal = class sealed(TForm)
    actAbastecimento:    TAction;
    actBomba:            TAction;
    actCombustivel:      TAction;
    actRelAbastecimento: TAction;
    actTanque:           TAction;
    aclAcoesMenu: TActionList;
    btnAbastecimento:    TSpeedButton;
    btnRelAbastecimento: TSpeedButton;
    imgPosto:            TImage;
    miCadastro:          TMenuItem;
    miCadBomba:          TMenuItem;
    miCadCombustivel:    TMenuItem;
    miCadTanque:         TMenuItem;
    miRelAbastecimento:  TMenuItem;
    miRelatorios:        TMenuItem;
    miVendAbastecimento: TMenuItem;
    miVendas:            TMenuItem;
    mmPrincipal:         TMainMenu;
    pnlAbastecimento:    TPanel;
    pnlCentro:           TPanel;
    pnlDiv1:             TPanel;
    pnlEsquerdo:         TPanel;
    pnlRelAbastecimento: TPanel;
    pnlRodape:           TPanel;
    procedure actCombustivelExecute(Sender: TObject);
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses
  View.uFormCombustivel;

procedure TFormPrincipal.actCombustivelExecute(Sender: TObject);
begin
  if FormCombustivel = Nil then
    Application.CreateForm(TFormCombustivel, FormCombustivel);
  FormCombustivel.ShowModal;
end;

end.
