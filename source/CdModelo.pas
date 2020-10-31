unit CdModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DmDados, uPrincipal, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TOperacao = (opNovo, opAlterar, opNavegar);
  TModeloCdForm = class(TForm)
    fdQryCadastro: TFDQuery;
    fdTransaction: TFDTransaction;
    dsCadastro: TDataSource;
    pgcPrincipal: TPageControl;
    tbPesq: TTabSheet;
    tbDados: TTabSheet;
    pnlRodape: TPanel;
    pnlBtnsPesq: TPanel;
    btnNovo: TBitBtn;
    btnDetalhar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    DBGrid1: TDBGrid;
    fdQueryAuxiliar: TFDQuery;
    dsAuxiliar: TDataSource;
    pnlBtnsDados: TPanel;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnListar: TBitBtn;
    btnAlterar: TBitBtn;
    pnlTopo: TPanel;
    fdUpdCadastro: TFDUpdateSQL;
    dsVenda: TDataSource;
    fdQueryVenda: TFDQuery;
    pnlDados: TPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarCic(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDetalharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
  private
    Foperacao: TOperacao;
    FValorExclusao: String;
    FCampoExclusao: String;
    FTabelaExclusao: String;
    FErro: String;
    procedure Novo;
    procedure Gravar;
    procedure Alterar;
    procedure Detalhar;
    procedure Listar;
    procedure Configurações;
    procedure HabilitarControles(aOperacao: TOperacao);
  public
    { Public declarations }
    property TabelaExclusao: String read FTabelaExclusao write FTabelaExclusao;
    property CampoExclusao: String read FCampoExclusao write FCampoExclusao;
    property ValorExclusao: String read FValorExclusao write FValorExclusao;
    property Erro: String read FErro write FErro;
  end;

var
  ModeloCdForm: TModeloCdForm;

implementation

{$R *.dfm}

procedure TModeloCdForm.Alterar;
begin
  FOperacao := opAlterar;
  HabilitarControles(opAlterar);
end;

procedure TModeloCdForm.btnAlterarClick(Sender: TObject);
begin
  Alterar;
end;

procedure TModeloCdForm.btnCancelarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
    fdQryCadastro.Cancel;
  HabilitarControles(opNavegar);
end;

procedure TModeloCdForm.btnDetalharClick(Sender: TObject);
begin
  Detalhar;
end;

procedure TModeloCdForm.btnGravarCic(Sender: TObject);
begin
  Gravar;
  HabilitarControles(opNavegar);
end;

procedure TModeloCdForm.btnListarClick(Sender: TObject);
begin
  Listar;
end;

procedure TModeloCdForm.btnNovoClick(Sender: TObject);
begin
  Foperacao := opNovo;
  pgcPrincipal.ActivePage := tbDados;
  Novo;
  HabilitarControles(opNovo);
end;

procedure TModeloCdForm.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TModeloCdForm.Configurações;
begin
  tbPesq.TabVisible := False;
  tbDados.TabVisible := False;
  pgcPrincipal.ActivePage := tbPesq;
end;

procedure TModeloCdForm.Detalhar;
begin
  HabilitarControles(opNavegar);
  FOperacao := opNavegar;
  pgcPrincipal.ActivePage := tbDados;
end;

procedure TModeloCdForm.FormCreate(Sender: TObject);
begin
  fdQryCadastro.Open();
end;

procedure TModeloCdForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Self.Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TModeloCdForm.FormShow(Sender: TObject);
begin
  Configurações;
end;

procedure TModeloCdForm.Gravar;
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then
  begin
    fdTransaction.StartTransaction;
    fdQryCadastro.Post;
    fdTransaction.CommitRetaining;
    MessageBox(handle,'Registro gravado com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TModeloCdForm.HabilitarControles(aOperacao: TOperacao);
begin
  case aOperacao of
    opNovo, opAlterar:
    begin
      pnlDados.Enabled      := True;
      btnListar.Enabled    := False;
      btnAlterar.Enabled   := False;
      btnGravar.Enabled    := True;
      btnCancelar.Enabled  := True;
    end;
    opNavegar:
    begin
      pnlDados.Enabled      := False;
      btnListar.Enabled    := True;
      btnAlterar.Enabled   := True;
      btnGravar.Enabled    := False;
      btnCancelar.Enabled  := False;
    end;
  end;
end;

procedure TModeloCdForm.Listar;
begin
  pgcPrincipal.ActivePage := tbPesq;
end;

procedure TModeloCdForm.Novo;
begin
  if not (fdQryCadastro.State in [dsEdit, dsInsert]) then
  begin
    fdQryCadastro.Insert;
  end;
  FOperacao := opNovo;
  pgcPrincipal.ActivePage := tbDados;
end;

end.
