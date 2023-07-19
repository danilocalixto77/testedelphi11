unit UTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TFTeste = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    RdGrpOpArit: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    function CalculaOperacoesAritimeticas(num1, num2, tipoOper: Integer): Currency;
    { Public declarations }
  end;

var
  FTeste: TFTeste;

implementation

function TFTeste.CalculaOperacoesAritimeticas(num1, num2, tipoOper: Integer): Currency;
begin
  if tipoOper = 0 then
    Result := num1 + num2
  else if tipoOper = 1 then
    Result := num1 - num2
  else if tipoOper = 2 then
    Result := num1 * num2
  else if tipoOper = 3 then
    Result := num1 / num2;
end;

{$R *.dfm}

procedure TFTeste.Button1Click(Sender: TObject);
var n : integer;
begin
  if Trim(Edit1.Text) = '' then
  begin
    ShowMessage('O campo 1 est� vazio!');
    Edit1.SetFocus;
  end
  else if Trim(Edit2.Text) = '' then
  begin
    Application.MessageBox('O Valor do segundo campo n�o foi infomado!', 'Aviso', MB_OK+MB_ICONEXCLAMATION);
    Edit2.SetFocus;
  end
  else
  begin
    Edit3.Text := CurrToStr((CalculaOperacoesAritimeticas(StrToInt(Edit1.Text), StrToInt(Edit2.Text), RdGrpOpArit.ItemIndex)));
  end;
end;

procedure TFTeste.Button2Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin

  end;

end;

procedure TFTeste.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
     if ActiveControl is TEdit then
     begin
       with TEdit(ActiveControl).Parent do
         SelectNext(ActiveControl, True, True)
     end;
     Key := #0;
   end;
end;

end.
