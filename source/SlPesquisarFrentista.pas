unit SlPesquisarFrentista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SlPesquisaModelo, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPesquisaFrentistaSlForm = class(TPesquisaModeloSlForm)
    fdQueryPesquisaCOD_FRENTISTA: TIntegerField;
    fdQueryPesquisaDES_FRENTISTA: TStringField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FDescricao: String;
    FCodigo: Integer;
    { Private declarations }
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    procedure PesquisaCodigo(aCodigo: Integer);
    procedure PesquisaDescricao(aDescricao: String);
    procedure PesquisaTodos;
  end;

var
  PesquisaFrentistaSlForm: TPesquisaFrentistaSlForm;

implementation

{$R *.dfm}

{ TPesquisaFrentistaSlForm }

procedure TPesquisaFrentistaSlForm.btnConfirmarClick(Sender: TObject);
begin
  FCodigo := fdQueryPesquisaCOD_FRENTISTA.AsInteger;
  FDescricao := fdQueryPesquisaDES_FRENTISTA.AsString;
  Close;
end;

procedure TPesquisaFrentistaSlForm.edtPesquisaExit(Sender: TObject);
begin
  if SameText(edtPesquisa.Text, EmptyStr) then
    PesquisaTodos
  else
    PesquisaDescricao(edtPesquisa.Text);
end;

procedure TPesquisaFrentistaSlForm.FormShow(Sender: TObject);
begin
  PesquisaCodigo(FCodigo);
end;

procedure TPesquisaFrentistaSlForm.PesquisaCodigo(aCodigo: Integer);
begin
  if aCodigo > 0 then
    fdQueryPesquisa.Open('select Cod_Frentista, Des_Frentista from Frentista where Cod_Frentista = ' + aCodigo.ToString);
end;

procedure TPesquisaFrentistaSlForm.PesquisaDescricao(aDescricao: String);
begin
  if not aDescricao.IsEmpty then
    fdQueryPesquisa.Open('select Cod_Frentista, Des_Frentista from Frentista where Des_Frentista like ''%' + aDesCricao + ' %''');
end;

procedure TPesquisaFrentistaSlForm.PesquisaTodos;
begin
  fdQueryPesquisa.Open('select Cod_Frentista, Des_Frentista from Frentista');
end;

end.
