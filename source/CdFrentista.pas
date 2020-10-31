unit CdFrentista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrentistaCdForm = class(TModeloCdForm)
    fdQryCadastroCOD_FRENTISTA: TFDAutoIncField;
    fdQryCadastroDES_FRENTISTA: TStringField;
    lblCodigo: TLabel;
    lblDescricao: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Excluir;
  public
    { Public declarations }
  end;

var
  FrentistaCdForm: TFrentistaCdForm;

implementation

{$R *.dfm}

procedure TFrentistaCdForm.btnExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TFrentistaCdForm.Excluir;
begin
  if fdQryCadastroCOD_FRENTISTA.AsInteger > 0 then
  begin
    if MessageBox(handle,'Deseja excluir o registro?','Atenção',MB_YESNO + MB_ICONQUESTION) = IDYES then
      fdQueryVenda.Open('select * from VENDA where Cod_Frentista = ' + fdQryCadastroCOD_FRENTISTA.AsString);
      if fdQueryVenda.RecordCount > 0 then
        MessageBox(handle,'Registro vinculado a uma venda. Não pode ser excluído.','Erro', MB_OK + MB_ICONERROR)
      else
      begin
        fdTransaction.StartTransaction;
        fdQueryAuxiliar.ExecSQL('delete from FRENTISTA where Cod_Frentista = ' + fdQryCadastroCOD_FRENTISTA.AsString);
        fdTransaction.CommitRetaining;
        MessageBox(handle,'Registro excluído com sucesso','Informação',MB_OK+MB_ICONINFORMATION);
        DBGrid1.DataSource.DataSet.Refresh;
      end;
  end
  else
    MessageBox(handle,'Não existem registros para semrem excluídos','Informação',MB_OK + MB_ICONWARNING);
end;

end.
