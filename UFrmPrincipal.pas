unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Usurios1: TMenuItem;
    Despesa1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    flagAtvivar : Boolean;
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmLogin, UDM_Login;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
flagAtvivar := False;
Try
  Application.CreateForm(TFrmLogin, FrmLogin);

  FrmLogin.ShowModal;


  if flagAtvivar = False then
    Application.Terminate;

Finally
  FreeAndNil(FrmLogin);
End;
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TDM_Login, DM_Login);
    DM_Login.FDConnection1.Connected := True;
    DM_Login.FDQ_Usuarios.Active := True;

    if DM_Login.FDQ_UsuariosADM.Value = False then
      ShowMessage('Você não tem acesso de usuário Adminstrativo!')
    else
      ShowMessage('Você é um usuário Adminstrador!');

    DM_Login.FDQ_Usuarios.Active := False;
    DM_Login.FDConnection1.Connected := False;
  Finally
    FreeAndNil(DM_Login);
  End;

end;

end.
