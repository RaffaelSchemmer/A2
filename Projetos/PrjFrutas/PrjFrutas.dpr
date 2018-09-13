program PrjFrutas;

uses
  Vcl.Forms,
  UntFrutas in 'UntFrutas.pas' {Form18};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm18, Form18);
  Application.Run;
end.
