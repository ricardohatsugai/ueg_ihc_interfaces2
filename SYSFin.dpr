program SYSFin;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SYSFIN - Sistema de Gerenciamento de Finanças';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
