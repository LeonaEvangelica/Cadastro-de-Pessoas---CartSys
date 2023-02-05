unit ufrmRelPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, uDmCadastroPessoas, Data.DB, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppDesignLayer, ppParameter, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TfrmRelPessoas = class(TForm)
    pnlPrincipal: TPanel;
    btnImprimir: TButton;
    btnFechar: TButton;
    dsRelatorioPessoas: TDataSource;
    ppRelatorioPessoas: TppReport;
    ppConexao: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPessoas: TfrmRelPessoas;

implementation

{$R *.dfm}

procedure TfrmRelPessoas.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmRelPessoas.btnImprimirClick(Sender: TObject);
begin
  ppRelatorioPessoas.Print;
end;

procedure TfrmRelPessoas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Action <> caFree then
    Action := caFree;
end;

procedure TfrmRelPessoas.FormShow(Sender: TObject);
begin
  if not dmCadastroPessoas.fdQueryPessoas.Active then
    dmCadastroPessoas.fdQueryPessoas.Active := True;
  dmCadastroPessoas.LimpaFiltro;
end;

end.
