unit DmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, uBiblioteca, EdConfig, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef;

type
  TDadosDm = class(TDataModule)
    fdCon: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CarregaBanco;
  public
    { Public declarations }
  end;

var
  DadosDm: TDadosDm;

implementation

uses
  Vcl.Forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDadosDm }

procedure TDadosDm.CarregaBanco;
begin
  try
    fdCon.Params.Database := GetValorIni(ExtractFilePath(Application.exename)+'Posto.ini','CONFIGURACAO','LocalDB');
    fdCon.Connected       := True;
  except
    ConfigEdForm.ShowModal;
  end;
end;

procedure TDadosDm.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
