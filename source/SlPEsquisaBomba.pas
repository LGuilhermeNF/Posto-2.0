unit SlPEsquisaBomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SlPesquisaModelo, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TBombaPesquisaSllForm = class(TPesquisaModeloSlForm)
    fdQueryPesquisaCOD_BOMBA: TIntegerField;
    fdQueryPesquisaDES_BOMBA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
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
  BombaPesquisaSllForm: TBombaPesquisaSllForm;

implementation

{$R *.dfm}

{ TBombaPesquisaSllForm }

procedure TBombaPesquisaSllForm.btnConfirmarClick(Sender: TObject);
begin
  FCodigo := fdQueryPesquisaCOD_BOMBA.AsInteger;
  Close;
end;

procedure TBombaPesquisaSllForm.edtPesquisaExit(Sender: TObject);
begin
  if SameText(edtPesquisa.Text, EmptyStr) then
    PesquisaTodos
  else
    PesquisaDescricao(edtPesquisa.Text);
end;

procedure TBombaPesquisaSllForm.FormShow(Sender: TObject);
begin
  PesquisaCodigo(FCodigo);
end;

procedure TBombaPesquisaSllForm.PesquisaCodigo(aCodigo: Integer);
begin
  if aCodigo > 0 then
    fdQueryPesquisa.Open('select Cod_Bomba, Des_Bomba from BOMBA where Cod_Bomba = ' + aCodigo.ToString)
end;

procedure TBombaPesquisaSllForm.PesquisaDescricao(aDescricao: String);
begin
  fdQueryPesquisa.Open('select Cod_Bomba, Des_Bomba from BOMBA where Des_Bomba like ''%' + aDesCricao + ' %''');
end;

procedure TBombaPesquisaSllForm.PesquisaTodos;
begin
  fdQueryPesquisa.Open('select Cod_Bomba, Des_Bomba from BOMBA');
end;

end.
