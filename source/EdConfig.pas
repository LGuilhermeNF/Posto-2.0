unit EdConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uBiblioteca;

type
  TConfigEdForm = class(TForm)
    OpenDiretorio: TOpenDialog;
    BitBtn1: TBitBtn;
    LabelDiretorio: TLabel;
    EditDiretorio: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ConfiguraConexao;
  public
    { Public declarations }
  end;

var
  ConfigEdForm: TConfigEdForm;

implementation

{$R *.dfm}

{ TForm1 }

procedure TConfigEdForm.BitBtn1Click(Sender: TObject);
begin
  ConfiguraConexao;
end;

procedure TConfigEdForm.ConfiguraConexao;
var
  vFileName : String;
begin
  if OpenDiretorio.Execute then
    begin
      EditDiretorio.Text := OpenDiretorio.FileName;
      vFileName          := ExtractFilePath(Application.ExeName) + 'Posto.ini';
      SetValorIni(vFileName, 'CONFIGURACAO','LocalDB', EditDiretorio.Text);
      MessageBox(handle,'Banco de Dados configurado com sucesso '+ sLineBreak +
                        'Favor iniciar novamente a aplicação ','Informação',MB_OK+MB_ICONINFORMATION);
      Self.Close;
    end;

end;

procedure TConfigEdForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
