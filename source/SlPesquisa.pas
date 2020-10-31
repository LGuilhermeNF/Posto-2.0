unit SlPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, System.StrUtils, Vcl.StdCtrls;

type
  TPesquisaSlForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsPesquisa: TDataSource;
    fdQyPesquisa: TFDQuery;
    edtPesquisa: TEdit;
    fdQyPesquisaCOD_FRENTISTA: TIntegerField;
    fdQyPesquisaDES_FRENTISTA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
  private
    FCodigo: Integer;
    FDescricao: String;
    { Private declarations }
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: String read FDescricao write FDescricao;
    procedure PesquisaCodigo(aCodigo: Integer);
    procedure PesquisaDescricao(aDescricao: String);
    procedure PesquisaTodos;
  end;

var
  PesquisaSlForm: TPesquisaSlForm;

implementation

{$R *.dfm}

uses DmDados;

procedure TPesquisaSlForm.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaSlForm.btnConfirmarClick(Sender: TObject);
begin
  FCodigo := fdQyPesquisaCOD_FRENTISTA.AsInteger;
  FDescricao := fdQyPesquisaDES_FRENTISTA.AsString;
  Close;
end;

procedure TPesquisaSlForm.edtPesquisaChange(Sender: TObject);
begin
  if SameText(FDescricao, EmptyStr) then
    PesquisaTodos
  else
    PesquisaDescricao(FDescricao);
end;

procedure TPesquisaSlForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      Self.Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TPesquisaSlForm.FormShow(Sender: TObject);
begin
  if SameText(FDescricao, EmptyStr) then
    PesquisaTodos
  else
    PesquisaDescricao(FDescricao);
end;

procedure TPesquisaSlForm.PesquisaCodigo(aCodigo: Integer);
begin
  fdQyPesquisa.Open('select Cod_Frentista, Des_Frentista from Frentista where Cod_Frentista = ' + aCodigo.ToString);
end;

procedure TPesquisaSlForm.PesquisaDescricao(aDescricao: String);
begin
  fdQyPesquisa.Open('select Cod_Frentista, Des_Frentista from Frentista where Des_Frentista = like ''%' + aDesCricao + ' %''');
end;

procedure TPesquisaSlForm.PesquisaTodos;
begin
  fdQyPesquisa.Open('select Cod_Frentista, Des_Frentista from FRENTISTA');
end;

end.
