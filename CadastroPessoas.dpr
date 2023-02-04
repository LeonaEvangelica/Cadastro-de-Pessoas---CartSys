program CadastroPessoas;

uses
  Vcl.Forms,
  uFrmPrincipal in 'Source\uFrmPrincipal.pas' {frmPrincipal},
  uFrmCadastroProdutos in 'Source\uFrmCadastroProdutos.pas' {frmCadastroProdutos},
  uDmCadastroProdutos in 'Source\uDmCadastroProdutos.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
