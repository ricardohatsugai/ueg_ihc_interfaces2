program SYSFin;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin},
  UDM_Conexao in 'UDM_Conexao.pas' {DM_Conexao: TDataModule},
  UDM_Login in 'UDM_Login.pas' {DM_Login: TDataModule},
  UDM_CadUsuarios in 'UDM_CadUsuarios.pas' {DM_CadUsuarios: TDataModule},
  UFrm_ListaUsuarios in 'UFrm_ListaUsuarios.pas' {Frm_ListaUsuarios},
  UFrm_CadUsuario in 'UFrm_CadUsuario.pas' {Frm_CadUsuario},
  UDM_CadDespesas in 'UDM_CadDespesas.pas' {DM_CadDespesas: TDataModule},
  UFrm_ListaDespesas in 'UFrm_ListaDespesas.pas' {Frm_ListaDespesa},
  UFrm_Lancamento in 'UFrm_Lancamento.pas' {Frm_Lancamento},
  U_Funcoes in 'U_Funcoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SYSFIN - Sistema de Gerenciamento de Finan�as';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
