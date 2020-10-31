unit CdTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TTanqueCdForm = class(TModeloCdForm)
    fdQryCadastroCOD_TANQUE: TIntegerField;
    fdQryCadastroDES_TANQUE: TStringField;
    fdQryCadastroQTD_VOLUME: TIntegerField;
    lblVolume: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    edtVolume: TDBEdit;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Excluir;
  public
    { Public declarations }
  end;

var
  TanqueCdForm: TTanqueCdForm;

implementation

{$R *.dfm}

procedure TTanqueCdForm.btnExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TTanqueCdForm.Excluir;
begin
  if fdQryCadastroCOD_TANQUE.AsInteger > 0 then
  begin
    if MessageBox(handle,'Deseja excluir o registro?','Atenção',MB_YESNO + MB_ICONQUESTION) = IDYES then
      fdQueryVenda.Open('select * from VENDA where Cod_TANQUE = ' + fdQryCadastroCOD_TANQUE.AsString);
      if fdQueryVenda.RecordCount > 0 then
        MessageBox(handle,'Registro vinculado a uma venda. Não pode ser excluído.','Erro', MB_OK + MB_ICONERROR)
      else
      begin
        fdTransaction.StartTransaction;
        fdQueryAuxiliar.ExecSQL('delete from TANQUE where Cod_TANQUE = ' + fdQryCadastroCOD_TANQUE.AsString);
        fdTransaction.CommitRetaining;
        MessageBox(handle,'Registro excluído com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
        DBGrid1.DataSource.DataSet.Refresh;
      end;
  end
  else
    MessageBox(handle,'Não existem registros para semrem excluídos','Informação',MB_OK + MB_ICONWARNING);
end;

end.
