unit PmMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBClient, Vcl.ComCtrls, RLPreview,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TMovimentoPmForm = class(TForm)
    ImprimeBtn: TBitBtn;
    VisualizaBtn: TBitBtn;
    FechaBtn: TBitBtn;
    Panel1: TPanel;
    LabelTitulo: TLabel;
    GroupBox1: TGroupBox;
    edtInicial: TDateTimePicker;
    edtFinal: TDateTimePicker;
    lblInicial: TLabel;
    lblFinal: TLabel;
    rgpAgrupamento: TRadioGroup;
    procedure FechaBtnClick(Sender: TObject);
    procedure ChamaImpressao(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function GeraSql: String;
    procedure Critica;
    function  FormatSqlDate(PDat: TDateTime): String;
  public
    { Public declarations }
  end;

var
  MovimentoPmForm: TMovimentoPmForm;
  vSql,
  vAgrupamento,
  vInfoRelatorio: String;

implementation

{$R *.dfm}

uses RelMovimento;

{ TModelo1PmForm }

procedure TMovimentoPmForm.FechaBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TMovimentoPmForm.ChamaImpressao(Sender: TObject);
begin
  Critica;
  MovimentoRelForm := TMovimentoRelForm.Create(Self);
  MovimentoRelForm.fdQryAux.SQL.Text := GeraSql;;
  MovimentoRelForm.FInfoRelatorio := LabelTitulo.Caption + ' Período: '+ DateToStr(edtInicial.Date) + ' à ' + DateToStr(edtFinal.Date);

  if (Sender as TBitBtn).Name = 'ImprimeBtn' then
  begin
    if MessageBox(Handle,'Confirma Impressão ?','Confirmação',MB_ICONQUESTION+MB_YESNO) <> ID_YES then
      Exit;
    MovimentoRelForm.RLReport1.Print
  end
  else
  if (Sender as TBitBtn).Name = 'VisualizaBtn' then
  begin
    MovimentoRelForm.RLReport1.Preview();
  end;

  FreeAndNil(MovimentoRelForm);
end;

procedure TMovimentoPmForm.Critica;
begin
  if (edtInicial.Date > edtFinal.Date) then
    raise Exception.Create('Data Inválida');
end;

function TMovimentoPmForm.FormatSqlDate(PDat: TDateTime): String;
begin
  if PDat > 2 then
  begin
    if Frac(PDat) > 0 then
      Result := ''''+FormatDateTime('yyyy-mm-dd hh:nn:ss',PDat)+''''
    else
      Result := ''''+FormatDateTime('yyyy-mm-dd 00:00:00',PDat)+''''
  end
  else
    Result := 'null';
end;

procedure TMovimentoPmForm.FormCreate(Sender: TObject);
begin
  LabelTitulo.Caption := Self.Caption;
  Caption := 'Relatório';
end;

procedure TMovimentoPmForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      FechaBtn.Click;
    VK_RETURN:
      Perform(wm_NextDlgCtl,0,0);
    VK_NEXT:
      ChamaImpressao(VisualizaBtn);
  end;
end;

function TMovimentoPmForm.GeraSql: String;
begin
  vSql := 'select vd.*,                  '+
          '        tq.Des_Tanque,        '+
          '        bb.Des_Bomba,         '+
          '        cb.Des_Combustivel,   '+
          '        fr.Des_Frentista      '+
          'from VENDA vd                 '+
          'inner join TANQUE tq on tq.cod_tanque = vd.cod_tanque                 '+
          'inner join BOMBA bb on bb.cod_bomba = vd.cod_bomba                    '+
          'inner join COMBUSTIVEL cb on cb.cod_combustivel = vd.cod_combustivel  '+
          'inner join FRENTISTA fr on fr.cod_frentista = vd.cod_frentista        '+
          'where vd.dat_movimento between '+ FormatSqlDate(edtInicial.Date) + ' and ' + FormatSqlDate(edtFinal.Date);
   Result := vSql;

 { case rgpAgrupamento.ItemIndex of
    0:
      begin
        vSql := vSql + ' group by vd.Dat_Movimento';
        vAgrupamento := ' Agrupado por Data';
      end;
    1:
      begin
        vSql := vSql + ' group by vd.Cod_Tanque';
        vAgrupamento := ' Agrupado por Tante';
      end;
    2:
      begin
        vSql := vSql + ' group by vd.Cod_Bomba';
        vAgrupamento := ' Agrupado por Bomba';
      end;
    3:
      begin
        vSql := vSql + ' group by vd.Val_Venda';
        vAgrupamento := ' Agrupado por Venda';
      end;
  end;  }


end;

end.
