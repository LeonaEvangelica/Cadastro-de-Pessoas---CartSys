unit uFrmCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmCadastroProdutos = class(TForm)
    pnlBotoes: TPanel;
    pnlTabs: TPanel;
    pagPrincipal: TPageControl;
    tabPesquisa: TTabSheet;
    tabCadastro: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

{$R *.dfm}

end.
