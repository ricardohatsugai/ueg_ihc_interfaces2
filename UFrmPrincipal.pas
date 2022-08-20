unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, DB, Vcl.ToolWin;

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
    ToolBar1: TToolBar;
    Panel_CadDespesas: TPanel;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Despesa1Click(Sender: TObject);
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

uses UFrmLogin, UDM_Login, UDM_CadUsuarios, UFrm_ListaUsuarios, UDM_CadDespesas,
  UFrm_ListaDespesas;

procedure TFrmPrincipal.Despesa1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TDM_CadDespesas, DM_CadDespesas);
    Application.CreateForm(TFrm_ListaDespesa, Frm_ListaDespesa);
    DM_CadDespesas.FDConnection1.Connected := True;
    DM_CadDespesas.FDQ_ListaDespesa.Active := True;
    Frm_ListaDespesa.ShowModal;

    if DM_CadDespesas.FDQ_ListaDespesa.UpdateStatus = usModified then
    begin
      DM_CadDespesas.FDQ_ListaDespesa.Cancel;
      DM_CadDespesas.FDQ_ListaDespesa.CancelUpdates;
    end;

    if DM_CadDespesas.FDConnection1.InTransaction then
      DM_CadDespesas.FDConnection1.Rollback;

    DM_CadDespesas.FDQ_ListaDespesa.Active := False;
    DM_CadDespesas.FDConnection1.Connected := False;

  Finally
    FreeAndNil(Frm_ListaDespesa);
    FreeAndNil(DM_CadDespesas);
  End;
end;

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

    if DM_Login.FDQ_Usuariosadm.Value = False then
      ShowMessage('Você não tem acesso de usuário Adminstrativo!')
    else
      //ShowMessage('Você é um usuário Adminstrador!');
      Try
        Application.CreateForm(TDM_CadUsuarios, DM_CadUsuarios);
        Application.CreateForm(TFrm_ListaUsuarios, Frm_ListaUsuarios);
        DM_CadUsuarios.FDConnection1.Connected := True;
        DM_CadUsuarios.FDQ_ListaUsuarios.Active := True;

        Frm_ListaUsuarios.ShowModal;

        if DM_CadUsuarios.FDQ_ListaUsuarios.UpdateStatus = usModified  then
          DM_CadUsuarios.FDQ_ListaUsuarios.CancelUpdates;

        if DM_CadUsuarios.FDQ_ListaUsuarios.Active = True then
          DM_CadUsuarios.FDQ_ListaUsuarios.Active := False;

        if DM_CadUsuarios.FDConnection1.InTransaction = True then
          DM_CadUsuarios.FDConnection1.RollbackRetaining;

        DM_CadUsuarios.FDQ_ListaUsuarios.Active := False;
        DM_CadUsuarios.FDConnection1.Connected := False;

      Finally
        FreeAndNil(Frm_ListaUsuarios);
        FreeAndNil(DM_CadUsuarios);
      End;


end;

end.
