unit PrVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CdModelo, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  TVendaPrForm = class(TModeloCdForm)
    fdQryAux: TFDQuery;
    dsQryAux: TDataSource;
    fdQryCadastroCOD_MOVIMENTO: TFDAutoIncField;
    fdQryCadastroDAT_MOVIMENTO: TSQLTimeStampField;
    fdQryCadastroCOD_TANQUE: TIntegerField;
    fdQryCadastroCOD_BOMBA: TIntegerField;
    fdQryCadastroCOD_COMBUSTIVEL: TIntegerField;
    fdQryCadastroQTD_LITRO: TIntegerField;
    fdQryCadastroPRC_LITRO: TBCDField;
    fdQryCadastroVAL_VENDA: TBCDField;
    fdQryCadastroCOD_FRENTISTA: TIntegerField;
    fdQryCadastroIMPOSTO: TBCDField;
    fdQryCadastroDAT_EXCLUSAO: TSQLTimeStampField;
    fdQryCadastroVAL_IMPOSTO: TBCDField;
    boxProduto: TGroupBox;
    boxVenda: TGroupBox;
    lblPrecoLitro: TLabel;
    lblQtdeLitro: TLabel;
    lblTotalVenda: TLabel;
    lblImposto: TLabel;
    lblValImposto: TLabel;
    edtPrecoLitro: TDBEdit;
    edtTotalVenda: TMaskEdit;
    edtQtdeLitro: TEdit;
    edtImposto: TDBEdit;
    edtValImpopsto: TDBEdit;
    boxDados: TGroupBox;
    lblCodigo: TLabel;
    lblDataMovimento: TLabel;
    edtCodigo: TDBEdit;
    edtDataMovimento: TDBEdit;
    fdQueryAuxiliarCOD_TANQUE: TIntegerField;
    fdQueryAuxiliarDES_TANQUE: TStringField;
    btnPesqFrentista: TSpeedButton;
    Label4: TLabel;
    edtDescFrentista: TEdit;
    Label6: TLabel;
    btnPesqBomba: TSpeedButton;
    btnPesqCombustivel: TSpeedButton;
    Label5: TLabel;
    edtDescCombustivel: TEdit;
    edtCodBomba: TDBEdit;
    edtCodFrentista: TEdit;
    edtCodCombustivel: TDBEdit;
    Label9: TLabel;
    btnPesqTanque: TSpeedButton;
    edtCodTanque: TDBEdit;
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure edtQtdeLitroExit(Sender: TObject);
    procedure btnPesqFrentistaClick(Sender: TObject);
    procedure btnPesqCombustivelClick(Sender: TObject);
    procedure btnPesqBombaClick(Sender: TObject);
    procedure btnPesqTanqueClick(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularVenda;
    procedure PesquisarTanque;
    procedure PesquisarBomba;
    procedure PesquisarCombustivel;
    procedure PesquisarFrentista;
  public
    { Public declarations }
  end;

var
  VendaPrForm: TVendaPrForm;
  vFrentista,
  vTanque,
  vBomba,
  vCombustivel: String;
implementation

{$R *.dfm}

uses SlPEsquisaCombustivel, SlPEsquisaBomba, SlPesquisaTanque,
  SlPesquisarFrentista;

procedure TVendaPrForm.btnNovoClick(Sender: TObject);
begin
  edtDataMovimento.Text := DateToStr(Date);
  inherited;
end;

procedure TVendaPrForm.btnPesqBombaClick(Sender: TObject);
begin
  PesquisarBomba;
end;

procedure TVendaPrForm.btnPesqCombustivelClick(Sender: TObject);
begin
  PesquisarCombustivel;
end;

procedure TVendaPrForm.btnPesqFrentistaClick(Sender: TObject);
begin
  PesquisarFrentista;
end;

procedure TVendaPrForm.btnPesqTanqueClick(Sender: TObject);
begin
  PesquisarTanque;
end;

procedure TVendaPrForm.CalcularVenda;
var
  vImposto,
  vValorLitro: Currency;
  vQtdeLitro: Integer;
begin
  inherited;
  vValorLitro         := StrToFloat(edtPrecoLitro.Text);
  vQtdeLitro          := StrToInt(edtQtdeLitro.Text);
  vImposto            := StrToFloat(edtImposto.Text) /100;
  edtValImpopsto.Text := FloatToStr((vValorLitro * vImposto) * vQtdeLitro);
  edtTotalVenda.Text  := FloatToStr((vValorLitro  * vQtdeLitro) + (vValorLitro * vImposto));
  FormatFloat('R$ #,##0.00',StrToFloat(edtValImpopsto.Text));
  FormatFloat('R$ #,##0.00',StrToFloat(edtTotalVenda.Text));
end;

procedure TVendaPrForm.edtQtdeLitroExit(Sender: TObject);
begin
  if not SameText(edtQtdeLitro.Text, EmptyStr) then
    CalcularVenda;
end;

procedure TVendaPrForm.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroVAL_VENDA.AsFloat         := StrToFloat(edtTotalVenda.Text);
  fdQryCadastroDAT_MOVIMENTO.AsDateTime  := StrToDate(edtDataMovimento.Text);
  fdQryCadastroCOD_TANQUE.AsInteger      := StrToInt(edtCodTanque.Text);
  fdQryCadastroCOD_BOMBA.AsInteger       := StrToInt(edtCodBomba.Text);
  fdQryCadastroCOD_COMBUSTIVEL.AsInteger := StrToInt(edtCodCombustivel.Text);
  fdQryCadastroQTD_LITRO.AsInteger       := StrToInt(edtQtdeLitro.Text);
  fdQryCadastroCOD_FRENTISTA.AsInteger   := StrToInt(edtCodFrentista.Text);
end;

procedure TVendaPrForm.PesquisarBomba;
begin
  edtCodBomba.SetFocus;
  if fdQryCadastro.State in [dsInsert] then
  begin
    BombaPesquisaSllForm := TBombaPesquisaSllForm.Create(Application);
    try
      BombaPesquisaSllForm.Codigo := 0;
      BombaPesquisaSllForm.ShowModal;
      if BombaPesquisaSllForm.Codigo > 0 then
      begin
        edtCodBomba.Text := BombaPesquisaSllForm.Codigo.ToString;
      end;
    finally
      FreeAndNil(BombaPesquisaSllForm);
    end;
  end;
end;

procedure TVendaPrForm.PesquisarCombustivel;
begin
  edtCodCombustivel.SetFocus;
  if fdQryCadastro.State in [dsInsert] then
  begin
    CombustivelPesquisaSllForm := TCombustivelPesquisaSllForm.Create(Application);
    try
      CombustivelPesquisaSllForm.Codigo := 0;
      CombustivelPesquisaSllForm.ShowModal;
      if CombustivelPesquisaSllForm.Codigo > 0 then
      begin
        edtCodCombustivel.Text := CombustivelPesquisaSllForm.Codigo.ToString;
        edtDescCombustivel.Text := CombustivelPesquisaSllForm.Descricao;
        edtPrecoLitro.Text := CombustivelPesquisaSllForm.Preco.ToString;
        edtImposto.Text := CombustivelPesquisaSllForm.Imposto.ToString;
      end;
    finally
      FreeAndNil(CombustivelPesquisaSllForm);
    end;
  end;
end;

procedure TVendaPrForm.PesquisarFrentista;
begin
  edtCodFrentista.SetFocus;
  if fdQryCadastro.State in [dsInsert] then
  begin
    PesquisaFrentistaSlForm := TPesquisaFrentistaSlForm.Create(Application);
    try
      PesquisaFrentistaSlForm.Codigo := 0;
      PesquisaFrentistaSlForm.ShowModal;
      if PesquisaFrentistaSlForm.Codigo > 0 then
      begin
        edtCodFrentista.Text := PesquisaFrentistaSlForm.Codigo.ToString;
        edtDescFrentista.Text := PesquisaFrentistaSlForm.Descricao;
      end;
    finally
      FreeAndNil(PesquisaFrentistaSlForm);
    end;
  end;
end;

procedure TVendaPrForm.PesquisarTanque;
begin
  edtCodTanque.SetFocus;
  if fdQryCadastro.State in [dsInsert] then
  begin
    TanquePesquisaSllForm := TTanquePesquisaSllForm.Create(Application);
    try
      TanquePesquisaSllForm.Codigo := 0;
      TanquePesquisaSllForm.ShowModal;
      if TanquePesquisaSllForm.Codigo > 0 then
        edtCodTanque.Text := TanquePesquisaSllForm.Codigo.ToString;
    finally
      FreeAndNil(TanquePesquisaSllForm);
    end;
  end;
end;

end.
