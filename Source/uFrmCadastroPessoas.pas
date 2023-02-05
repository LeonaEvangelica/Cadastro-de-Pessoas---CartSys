unit uFrmCadastroPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, uDmCadastroPessoas, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroPessoas = class(TForm)
    pnlBotoes: TPanel;
    pnlTabs: TPanel;
    pagPrincipal: TPageControl;
    tabPesquisa: TTabSheet;
    tabCadastro: TTabSheet;
    pnlDados: TPanel;
    pnlPesquisa: TPanel;
    dbNav: TDBNavigator;
    dsPessoas: TDataSource;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblLogradouro: TLabel;
    edtLogradouro: TDBEdit;
    lblNumero: TLabel;
    edtNumero: TDBEdit;
    lblBairro: TLabel;
    edtBairro: TDBEdit;
    lblCidade: TLabel;
    edtCidade: TDBEdit;
    lblUF: TLabel;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    lblEmail: TLabel;
    edtEmail: TDBEdit;
    chkSemNumero: TDBCheckBox;
    cbxUF: TDBComboBox;
    dbgPesquisar: TDBGrid;
    GroupBox1: TGroupBox;
    btnPesquisar: TButton;
    edtPesquisarID: TEdit;
    edtPesquisarNome: TEdit;
    lblPesquisarID: TLabel;
    lblPesquisarNome: TLabel;
    btnTodos: TButton;
    procedure dbgPesquisarDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure chkSemNumeroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ModoEdicaoInsercao;
    procedure ControlaTela;
    procedure PesquisarDados(ATodos: Boolean = False);
  end;

var
  frmCadastroPessoas: TfrmCadastroPessoas;

implementation

{$R *.dfm}

{ TfrmCadastroPessoas }

procedure TfrmCadastroPessoas.btnPesquisarClick(Sender: TObject);
begin
  PesquisarDados;
end;

procedure TfrmCadastroPessoas.btnTodosClick(Sender: TObject);
begin
  edtPesquisarID.Clear;
  edtPesquisarNome.Clear;
  PesquisarDados(True);
end;

procedure TfrmCadastroPessoas.chkSemNumeroExit(Sender: TObject);
begin
  with dmCadastroPessoas do
  begin
    if fdQueryPessoasSEMNUMERO.AsString = 'N' then
      edtNumero.Enabled := True
    else if fdQueryPessoasSEMNUMERO.AsString = 'S' then
      edtNumero.Enabled := False
    else
      edtNumero.Enabled := True;
  end;
end;

procedure TfrmCadastroPessoas.ControlaTela;
begin
  with dmCadastroPessoas do
  begin
    if (fdQueryPessoas.State in [dsInsert, dsEdit]) then
    begin
      pnlPesquisa.Enabled := False;
      pnlDados.Enabled := True;

      pagPrincipal.ActivePage := tabCadastro;
    end else
    begin
      pnlPesquisa.Enabled := True;
      pnlDados.Enabled := False;

      pagPrincipal.ActivePage := tabPesquisa;
    end;

  end;
end;

procedure TfrmCadastroPessoas.ModoEdicaoInsercao;
var
  NavBt: TNavigateBtn;
begin
  edtPesquisarID.Clear;
  edtPesquisarNome.Clear;

  with dmCadastroPessoas do
  begin
    if fdQueryPessoas.RecNo > 0 then
      NavBt := nbEdit
    else
      NavBt := nbInsert;

    if fdQueryPessoas.State = dsBrowse then
    begin
      pagPrincipal.ActivePage := tabCadastro;
      dbNav.BtnClick(NavBt);
    end;
  end;
end;

procedure TfrmCadastroPessoas.PesquisarDados(ATodos: Boolean);
var
  sFilter: String;
begin
  sFilter := EmptyStr;
  dmCadastroPessoas.LimpaFiltro;
  if not ATodos then
  begin
    if edtPesquisarID.Text <> EmptyStr then
    begin
      if sFilter <> EmptyStr then
        sFilter := sFilter + ' AND (ID = ' + edtPesquisarID.Text + ')'
      else
        sFilter := '(ID = ' + edtPesquisarID.Text + ')'
    end;

    if edtPesquisarNome.Text <> EmptyStr then
    begin
      if sFilter <> EmptyStr then
        sFilter := sFilter + ' AND (NOME = ''' + edtPesquisarID.Text + ''')'
      else
        sFilter := '(NOME STARTING WITH ''' + edtPesquisarID.Text + ''')'
    end;
    dmCadastroPessoas.SetarFiltro(sFilter);
  end;
end;

procedure TfrmCadastroPessoas.dbgPesquisarDblClick(Sender: TObject);
begin
  ModoEdicaoInsercao;
end;

procedure TfrmCadastroPessoas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Action <> caFree then
    Action := caFree;
  dmCadastroPessoas.LimpaFiltro;
end;

procedure TfrmCadastroPessoas.FormShow(Sender: TObject);
begin
  if not dmCadastroPessoas.fdQueryPessoas.Active then
    dmCadastroPessoas.fdQueryPessoas.Active := True;

  pagPrincipal.ActivePage := tabPesquisa;
  dmCadastroPessoas.LimpaFiltro;
end;

end.
