unit UFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDM_Login;

procedure TFrmLogin.BtnSalvarClick(Sender: TObject);
begin

  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Os campos usuário e senha não podem ser nulos!');
    Edit1.SetFocus;
  end else
  begin
      DM_Login.FDConnection1.Connected := True;
      DM_Login.FDQ_Usuarios.Active := True;
      DM_Login.FDQ_Usuarios.First;

      if DM_Login.FDQ_Usuarios.Locate('USERNAME',Edit1.Text,[]) then
      begin
        if DM_Login.FDQ_UsuariosSENHA.AsString = Edit2.Text then
        begin
          FrmPrincipal.flagAtvivar := True;
          FrmPrincipal.StatusBar1.Panels[0].Text := 'Usuário logado: ' + DM_Login.FDQ_UsuariosNOME.AsString;
          ModalResult := 01;
        end else
        begin
          ShowMessage('Usuário e senha não conferem!');
          Edit1.SetFocus;
        end;
      end else
      begin
        ShowMessage('Usuário e senha não conferem!');
        Edit1.SetFocus;
      end;


      {if DM_Login.FDQ_Usuarios.Active = True then
        DM_Login.FDQ_Usuarios.Active := False;

      if DM_Login.FDConnection1.Connected = True then
        DM_Login.FDConnection1.Connected := False;}


  end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
