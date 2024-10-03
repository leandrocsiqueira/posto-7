unit View.uFormCombustivel;

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
  Vcl.ExtCtrls,
  System.Actions,
  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCombustivel = class(TForm)
    pnlTopo: TPanel;
    pnlNovo: TPanel;
    shNovo: TShape;
    btnNovo: TSpeedButton;
    alAcoesBotoesFiltro: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actDeletar: TAction;
    pnlSeparadorNovoEditar: TPanel;
    pnlEditar: TPanel;
    shEditar: TShape;
    btnEditar: TSpeedButton;
    pnlSeparadorEditarDeletar: TPanel;
    pnlDeletar: TPanel;
    shDeletar: TShape;
    btnDeletar: TSpeedButton;
    pnlFiltro: TPanel;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    btnPesquisar: TButton;
    actPesquisar: TAction;
    pnlCentro: TPanel;
    pgcPrincipal: TPageControl;
    tbsDados: TTabSheet;
    tbsEdicao: TTabSheet;
    dbgDados: TDBGrid;
    pnlEdicao: TPanel;
    edtEdicaoCodigo: TEdit;
    edtEdicaoDescricao: TEdit;
    lblEdicaoCodigo: TLabel;
    lblEdicaoDescricao: TLabel;
    edtEdicaoSigla: TEdit;
    edtValor: TEdit;
    lblEdicaoSigla: TLabel;
    lblValor: TLabel;
    lblPercentImposto: TLabel;
    edtPercentImposto: TEdit;
    mtDados: TFDMemTable;
    dsDados: TDataSource;
    mtDadosId: TIntegerField;
    mtDadosDescricao: TStringField;
    mtDadosSigla: TStringField;
    mtDadosValor: TCurrencyField;
    mtDadosPercentImposto: TIntegerField;
    pnlRodape: TPanel;
    pnlRodapeSep1: TPanel;
    pnlSalvar: TPanel;
    acSalvar: TAction;
    shSalvar: TShape;
    SpeedButton1: TSpeedButton;
    pnlRodapeSep2: TPanel;
    acCancelar: TAction;
    pnlCancelar: TPanel;
    shCancelar: TShape;
    btnCancelar: TSpeedButton;
  end;

var
  FormCombustivel: TFormCombustivel;

implementation

{$R *.dfm}


end.
