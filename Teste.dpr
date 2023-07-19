program Teste;

uses
  Vcl.Forms,
  UTeste in 'UTeste.pas' {FTeste};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFTeste, FTeste);
  Application.Run;
end.
