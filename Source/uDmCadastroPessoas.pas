unit uDmCadastroPessoas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Comp.DataSet;

type
  TdmCadastroPessoas = class(TDataModule)
    fdConnection: TFDConnection;
    fdTransaction: TFDTransaction;
    fdWaitCursor: TFDGUIxWaitCursor;
    fdFBLink: TFDPhysFBDriverLink;
    fdQueryPessoas: TFDQuery;
    fdQueryPessoasID: TIntegerField;
    fdQueryPessoasNOME: TWideStringField;
    fdQueryPessoasLOGRADOURO: TWideStringField;
    fdQueryPessoasSEMNUMERO: TWideStringField;
    fdQueryPessoasNUMERO: TIntegerField;
    fdQueryPessoasBAIRRO: TWideStringField;
    fdQueryPessoasCIDADE: TWideStringField;
    fdQueryPessoasUF: TWideStringField;
    fdQueryPessoasTELEFONE: TWideStringField;
    fdQueryPessoasEMAIL: TWideStringField;
    fdQueryGeral: TFDQuery;
    procedure fdQueryPessoasBeforePost(DataSet: TDataSet);
    procedure fdQueryPessoasAfterInsert(DataSet: TDataSet);
    procedure fdQueryPessoasAfterEdit(DataSet: TDataSet);
    procedure fdQueryPessoasAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GenID;
  public
    { Public declarations }
    procedure LimpaFiltro;
    procedure SetarFiltro(AFiltro: String);
  end;

var
  dmCadastroPessoas: TdmCadastroPessoas;

implementation

uses
  uFrmCadastroPessoas;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmCadastroPessoas }

procedure TdmCadastroPessoas.DataModuleCreate(Sender: TObject);
var
  sCamBD: String;
begin
  fdConnection.Close;
  sCamBD := ExtractFileDir(ExtractFileDir(ExtractFileDir(paramstr(0)))) + '\DB\CARTSYS.FDB';
  fdConnection.Params.Database := sCamBD;
  fdConnection.Open;
  fdQueryPessoas.Open;
end;

procedure TdmCadastroPessoas.fdQueryPessoasAfterEdit(DataSet: TDataSet);
begin
  frmCadastroPessoas.ControlaTela;
end;

procedure TdmCadastroPessoas.fdQueryPessoasAfterInsert(DataSet: TDataSet);
begin
  if fdQueryPessoasSEMNUMERO.IsNull then
    fdQueryPessoasSEMNUMERO.AsString := 'N';
  frmCadastroPessoas.ControlaTela;
end;

procedure TdmCadastroPessoas.fdQueryPessoasAfterPost(DataSet: TDataSet);
begin
  frmCadastroPessoas.ControlaTela;
  fdQueryPessoas.Refresh;
end;

procedure TdmCadastroPessoas.fdQueryPessoasBeforePost(DataSet: TDataSet);
begin
  GenID;
end;

procedure TdmCadastroPessoas.GenID;
begin
  fdQueryGeral.Close;
  fdQueryGeral.Open('SELECT GEN_ID(GEN_PESSOAS_ID, 1) FROM PESSOAS');
  fdQueryPessoasID.AsInteger := fdQueryGeral.Fields[0].AsInteger;
  fdQueryGeral.Close;
end;

procedure TdmCadastroPessoas.LimpaFiltro;
begin
  fdQueryPessoas.Filtered := False;
  fdQueryPessoas.Filter := EmptyStr;
  fdQueryPessoas.Refresh;
end;

procedure TdmCadastroPessoas.SetarFiltro(AFiltro: String);
begin
  fdQueryPessoas.Filtered := False;
  fdQueryPessoas.Filter := AFiltro;
  fdQueryPessoas.Filtered := True;
  fdQueryPessoas.Refresh;
end;

end.
