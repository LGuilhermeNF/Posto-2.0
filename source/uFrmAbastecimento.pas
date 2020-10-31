unit uFrmAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls;

type
  TfrmAbastecimento = class(TModeloCdForm)
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastecimento: TfrmAbastecimento;

implementation

{$R *.dfm}

procedure TfrmAbastecimento.btnExcluirClick(Sender: TObject);
begin
  TabelaExclusao := 'Venda';
  CampoExclusao  := 'Cod_Venda';
  ValorExclusao  := fdQryCadastro.FieldByName('Cod_Venda').AsString;
  inherited;
end;

end.
