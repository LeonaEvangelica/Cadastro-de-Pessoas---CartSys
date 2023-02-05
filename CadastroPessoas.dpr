program CadastroPessoas;

uses
  Vcl.Forms,
  uFrmPrincipal in 'Source\uFrmPrincipal.pas' {frmPrincipal},
  uFrmCadastroPessoas in 'Source\uFrmCadastroPessoas.pas' {frmCadastroPessoas},
  uDmCadastroPessoas in 'Source\uDmCadastroPessoas.pas' {dmCadastroPessoas: TDataModule},
  ufrmRelPessoas in 'Source\ufrmRelPessoas.pas' {frmRelPessoas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmCadastroPessoas, dmCadastroPessoas);
  Application.Run;
end.
