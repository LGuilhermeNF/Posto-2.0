unit RelMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DmDados, Datasnap.DBClient,
  System.Math;

type
  TMovimentoRelForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    lblCodVenda: TRLLabel;
    lblTanque: TRLLabel;
    lblBomba: TRLLabel;
    lblCombustivel: TRLLabel;
    lblVolume: TRLLabel;
    lblPrcLitro: TRLLabel;
    lblImposto: TRLLabel;
    lblValorVenda: TRLLabel;
    lblFrentista: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBTextData: TRLDBText;
    RLBand3: TRLBand;
    RLLabel12: TRLLabel;
    fdTransaction: TFDTransaction;
    dsQryAux: TDataSource;
    fdQryAux: TFDQuery;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    fdQryAuxCOD_MOVIMENTO: TIntegerField;
    fdQryAuxDAT_MOVIMENTO: TSQLTimeStampField;
    fdQryAuxCOD_TANQUE: TIntegerField;
    fdQryAuxCOD_BOMBA: TIntegerField;
    fdQryAuxCOD_COMBUSTIVEL: TIntegerField;
    fdQryAuxQTD_LITRO: TIntegerField;
    fdQryAuxPRC_LITRO: TBCDField;
    fdQryAuxVAL_VENDA: TBCDField;
    fdQryAuxCOD_FRENTISTA: TIntegerField;
    fdQryAuxIMPOSTO: TBCDField;
    fdQryAuxDAT_EXCLUSAO: TSQLTimeStampField;
    fdQryAuxDES_TANQUE: TStringField;
    fdQryAuxDES_BOMBA: TStringField;
    fdQryAuxDES_COMBUSTIVEL: TStringField;
    fdQryAuxDES_FRENTISTA: TStringField;
    fdQryAuxVAL_IMPOSTO: TBCDField;
    lblValImposto: TRLLabel;
    rliDivisao: TRLDraw;
    RLDBTextInfo: TRLDBText;
    RLDraw1: TRLDraw;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    txtCodVenda: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    lblDatVenda: TRLLabel;
    RLDBText11: TRLDBText;
    txtDatVenda: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    procedure FormShow(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    FGerouRelatorio: Boolean;
    { Private declarations }
  public
    { Public declarations }
    FSql,
    FInfoRelatorio: String;
    property GerouRelatorio: Boolean read FGerouRelatorio write FGerouRelatorio;
  end;

var
  MovimentoRelForm: TMovimentoRelForm;

implementation

{$R *.dfm}

{ TMovimentoRelForm }

procedure TMovimentoRelForm.FormShow(Sender: TObject);
begin
  fdQryAux.Open;
end;

procedure TMovimentoRelForm.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBTextInfo.Text := FInfoRelatorio;
  RLDBTextData.Text := DateToStr(Date);
  fdQryAux.SQL.Add(FSql);
  fdQryAux.Open;
  FGerouRelatorio := fdQryAux.RecordCount > 0;
end;

end.
