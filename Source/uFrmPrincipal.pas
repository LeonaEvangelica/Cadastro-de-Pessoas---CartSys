unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uFrmCadastroPessoas,
  ufrmRelPessoas;

type
  TfrmPrincipal = class(TForm)
    mmMenuPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    CadastrodePessoas1: TMenuItem;
    Relatrio1: TMenuItem;
    RelatriodePessoas1: TMenuItem;
    procedure CadastrodePessoas1Click(Sender: TObject);
    procedure RelatriodePessoas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CadastrodePessoas1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadastroPessoas, frmCadastroPessoas);
  frmCadastroPessoas.Show;
end;

procedure TfrmPrincipal.RelatriodePessoas1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRelPessoas, frmRelPessoas);
  frmRelPessoas.Show;
end;

end.
