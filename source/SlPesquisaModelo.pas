unit SlPesquisaModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Buttons, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPesquisaModeloSlForm = class(TForm)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    dsPesquisa: TDataSource;
    fdQueryPesquisa: TFDQuery;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaModeloSlForm: TPesquisaModeloSlForm;

implementation

{$R *.dfm}

uses DmDados;

procedure TPesquisaModeloSlForm.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaModeloSlForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      Self.Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
