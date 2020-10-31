unit SlPEsquisaCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SlPesquisaModelo, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCombustivelPesquisaSllForm = class(TPesquisaModeloSlForm)
    fdQueryPesquisaCOD_COMBUSTIVEL: TIntegerField;
    fdQueryPesquisaDES_COMBUSTIVEL: TStringField;
    fdQueryPesquisaPRC_COMBUSTIVEL: TBCDField;
    fdQueryPesquisaIMPOSTO: TBCDField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
  private
    FDescricao: String;
    FCodigo: Integer;
    FPreco: Double;
    FImposto: Double;
    { Private declarations }
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    property Preco: Double read FPreco write FPreco;
    property Imposto: Double read FImposto write FImposto;
    procedure PesquisaCodigo(aCodigo: Integer);
    procedure PesquisaDescricao(aDescricao: String);
    procedure PesquisaTodos;
  end;

var
  CombustivelPesquisaSllForm: TCombustivelPesquisaSllForm;

implementation

{$R *.dfm}

{ TCombustivelPesquisaSllForm }

procedure TCombustivelPesquisaSllForm.btnConfirmarClick(Sender: TObject);
begin
  FCodigo := fdQueryPesquisaCOD_COMBUSTIVEL.AsInteger;
  FDescricao := fdQueryPesquisaDES_COMBUSTIVEL.AsString;
  FPreco := fdQueryPesquisaPRC_COMBUSTIVEL.AsFloat;
  FImposto := fdQueryPesquisaIMPOSTO.AsFloat;
  Close;
end;

procedure TCombustivelPesquisaSllForm.edtPesquisaExit(Sender: TObject);
begin
  if SameText(edtPesquisa.Text, EmptyStr) then
    PesquisaTodos
  else
    PesquisaDescricao(edtPesquisa.Text);
end;

procedure TCombustivelPesquisaSllForm.FormShow(Sender: TObject);
begin
  PesquisaDescricao(FDescricao);
  PesquisaCodigo(FCodigo);
end;

procedure TCombustivelPesquisaSllForm.PesquisaCodigo(aCodigo: Integer);
begin
  if aCodigo > 0 then
    fdQueryPesquisa.Open('select Cod_Combustivel, Des_Combustivel, Prc_Combustivel, Imposto from COMBUSTIVEL where Cod_Combustivel = ' + aCodigo.ToString);
end;

procedure TCombustivelPesquisaSllForm.PesquisaDescricao(aDescricao: String);
begin
  if not SameText(aDescricao, EmptyStr) then
    fdQueryPesquisa.Open('select Cod_Combustivel, Des_Combustivel, Prc_Combustivel, Imposto from COMBUSTIVEL where Des_Combustivel like ''%' + aDesCricao + ' %''');
end;

procedure TCombustivelPesquisaSllForm.PesquisaTodos;
begin
  fdQueryPesquisa.Open('select Cod_Combustivel, Des_Combustivel, Prc_Combustivel, Imposto from COMBUSTIVEL');
end;

end.
