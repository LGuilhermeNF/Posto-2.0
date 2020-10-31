unit uBiblioteca;

interface

uses
  IniFiles, System.SysUtils, Vcl.Forms;

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: String);
  function GetValorIni(pLocal, pSessao, pSubSessao: String):String;

implementation

procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: String);
var
  vArquivo : TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  vArquivo.WriteString(pSessao,pSubSessao,pValor);
  vArquivo.Free;
end;

function GetValorIni(pLocal, pSessao, pSubSessao: String):String;
var
  vArquivo : TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  Result   :=   vArquivo.ReadString(pSessao,pSubSessao,'');
  vArquivo.Free;
end;

end.
