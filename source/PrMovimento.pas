unit PrMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMovimentoPrForm = class(TForm)
    Panel1: TPanel;
    ProcessaBtn: TBitBtn;
    FechaBtn: TBitBtn;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    MaskEdit1: TMaskEdit;
    Label9: TLabel;
    procedure ProcessaBtnClick(Sender: TObject);
    procedure FechaBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    TModal : Boolean;
  public
    { Public declarations }
    property Modal : Boolean read TModal write TModal default false;
  end;

var
  MovimentoPrForm: TMovimentoPrForm;

implementation

{$R *.dfm}

procedure TMovimentoPrForm.ProcessaBtnClick(Sender: TObject);
begin
  ProcessaBtn.SetFocus;
  if MessageBox(Handle,'Confirma processamento ?','Confirmação',MB_ICONQUESTION+MB_YESNO) <> ID_YES then
    Abort;

  ProcessaBtn.Enabled := false;
  FechaBtn.Enabled    := false;
  Screen.Cursor       := crHourGlass;
end;

procedure TMovimentoPrForm.FechaBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TMovimentoPrForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      FechaBtn.Click;
    VK_RETURN:
      keybd_event(VK_TAB, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
    VK_NEXT:
      ProcessaBtn.Click;
  end;
end;

end.
