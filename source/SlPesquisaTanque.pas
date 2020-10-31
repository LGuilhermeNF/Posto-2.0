unit SlPesquisaTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SlPesquisaModelo, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTanquePesquisaSllForm = class(TPesquisaModeloSlForm)
    fdQueryPesquisaCOD_TANQUE: TIntegerField;
    fdQueryPesquisaDES_TANQUE: TStringField;
    fdQueryPesquisaQTD_VOLUME: TIntegerField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
  private
    FCodigo: Integer;
    { Private declarations }
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write FCodigo;
    procedure PesquisaCodigo(aCodigo: Integer);
    procedure PesquisaDescricao(aDescricao: String);
    procedure PesquisaTodos;
  end;

var
  TanquePesquisaSllForm: TTanquePesquisaSllForm;

implementation

{$R *.dfm}

{ TTanquePesquisaSllForm }

procedure TTanquePesquisaSllForm.btnConfirmarClick(Sender: TObject);
begin
  FCodigo := fdQueryPesquisaCOD_TANQUE.AsInteger;
  Close;
end;

procedure TTanquePesquisaSllForm.edtPesquisaExit(Sender: TObject);
begin
  if SameText(edtPesquisa.Text, EmptyStr) then
    PesquisaTodos
  else
    PesquisaDescricao(edtPesquisa.Text);
end;

procedure TTanquePesquisaSllForm.FormShow(Sender: TObject);
begin
  PesquisaCodigo(FCodigo);
end;

procedure TTanquePesquisaSllForm.PesquisaCodigo(aCodigo: Integer);
begin
  if aCodigo > 0 then
    fdQueryPesquisa.Open('select Cod_Tanque, Des_Tanque, Qtd_Volume from TANQUE where Cod_Tanque = ' + aCodigo.ToString)
  else
    PesquisaTodos;
end;

procedure TTanquePesquisaSllForm.PesquisaDescricao(aDescricao: String);
begin
  if not aDescricao.IsEmpty then
    fdQueryPesquisa.Open('select Cod_Tanque, Des_Tanque, Qtd_Volume from TANQUE where Des_Tanque like ''%' + aDesCricao + ' %''');
end;

procedure TTanquePesquisaSllForm.PesquisaTodos;
begin
  fdQueryPesquisa.Open('select Cod_Tanque, Des_Tanque, Qtd_Volume from TANQUE');
end;

end.
