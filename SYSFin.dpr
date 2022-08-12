program SYSFin;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin},
  UDM_Conexao in 'UDM_Conexao.pas' {DM_Conexao: TDataModule},
  UDM_Login in 'UDM_Login.pas' {DM_Login: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SYSFIN - Sistema de Gerenciamento de Finanças';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
