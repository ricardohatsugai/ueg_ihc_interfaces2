unit UFrm_CadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, System.UITypes, MidasLib;

type
  TFrm_CadUsuario = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Lbl_Nome: TLabel;
    Edt_Nome: TEdit;
    Lbl_Cpf: TLabel;
    MaskEdit_Cpf: TMaskEdit;
    LbL_Identidade: TLabel;
    Edit_Identidade: TEdit;
    Lbl_UserName: TLabel;
    Edit_UserName: TEdit;
    Lbl_Senha: TLabel;
    Edit_Senha: TEdit;
    Edit_RepitaSenha: TEdit;
    Lbl_RepitaSenha: TLabel;
    Btn_Ok: TBitBtn;
    Btn_Cancelar: TBitBtn;
    Lbl_Adminstrador: TLabel;
    CheckBox_Adm: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
    procedure CheckBox_AdmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadUsuario: TFrm_CadUsuario;

implementation

{$R *.dfm}

uses UDM_CadUsuarios, UFrm_ListaUsuarios;

procedure TFrm_CadUsuario.Btn_OkClick(Sender: TObject);
begin
  if Edt_Nome.Text = '' then
  begin
    ShowMessage('O campo nome não pode ser nulo!');
    Edt_Nome.SetFocus;
  end else
  begin
        if Edit_Identidade.Text = '' then
        begin
          ShowMessage('O campo identidade não pode ser nulo!');
          Edit_Identidade.SetFocus;
        end else
        begin
              if Edit_UserName.Text = '' then
              begin
                ShowMessage('O campo username não pode ser nulo!');
                Edit_UserName.SetFocus;
              end else
              begin
                if Edit_Senha.Text <> Edit_RepitaSenha.Text  then
                begin
                  ShowMessage('As senhas tem que ser iguais!');
                  Edit_Senha.SetFocus;
                end else
                begin
                  DM_CadUsuarios.FDTransaction_Aux.StartTransaction;

                  if Frm_ListaUsuarios.flatCadUsuario = True then
                    DM_CadUsuarios.FDQ_ListaUsuarios.Insert
                  else
                    DM_CadUsuarios.FDQ_ListaUsuarios.Edit;

                  //DM_CadUsuarios.CDS_ListaUsuarios.Insert;
                  DM_CadUsuarios.FDQ_ListaUsuariosNOME.AsString := Edt_Nome.Text;
                  DM_CadUsuarios.FDQ_ListaUsuariosCPF.AsString := MaskEdit_Cpf.Text;
                  DM_CadUsuarios.FDQ_ListaUsuariosIDENT.AsString := Edit_Identidade.Text;
                  DM_CadUsuarios.FDQ_ListaUsuariosUSERNAME.AsString := Edit_UserName.Text;
                  DM_CadUsuarios.FDQ_ListaUsuariosSENHA.AsString := Edit_Senha.Text;
                  DM_CadUsuarios.FDQ_ListaUsuariosADM.AsBoolean := CheckBox_Adm.Checked;
                  DM_CadUsuarios.FDQ_ListaUsuarios.Post;
                  DM_CadUsuarios.FDQ_ListaUsuarios.ApplyUpdates(-1);
                  DM_CadUsuarios.FDQ_ListaUsuarios.CommitUpdates;

                  DM_CadUsuarios.FDTransaction_Aux.Commit;
                end;

              end;
        end;
  end;

end;

procedure TFrm_CadUsuario.CheckBox_AdmClick(Sender: TObject);
begin
  if CheckBox_Adm.Checked = False then
    CheckBox_Adm.Caption := 'Não'
  else
    CheckBox_Adm.Caption := 'Sim';
end;

procedure TFrm_CadUsuario.FormShow(Sender: TObject);
begin
Edt_Nome.SetFocus;
end;

end.
