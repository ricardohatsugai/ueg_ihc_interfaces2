unit UFrm_ListaUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, System.UITypes;

type
  TFrm_ListaUsuarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    BtnPesquisar: TBitBtn;
    BtnNovo: TBitBtn;
    Btn_Fechar: TBitBtn;
    Btn_Alterar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    flatCadUsuario : Boolean;
    { Public declarations }
  end;

var
  Frm_ListaUsuarios: TFrm_ListaUsuarios;

implementation

{$R *.dfm}

uses UDM_CadUsuarios, UFrm_CadUsuario;

procedure TFrm_ListaUsuarios.BtnNovoClick(Sender: TObject);
begin
  flatCadUsuario:= True;

  Try
    Application.CreateForm(TFrm_CadUsuario, Frm_CadUsuario);
    Frm_CadUsuario.ShowModal;

    if DM_CadUsuarios.FDQ_ListaUsuarios.UpdateStatus = usModified then
    begin
      DM_CadUsuarios.FDQ_ListaUsuarios.Cancel;
      DM_CadUsuarios.FDQ_ListaUsuarios.CancelUpdates;
    end;

  Finally
    FreeAndNil(Frm_CadUsuario);
  End;
end;

procedure TFrm_ListaUsuarios.BtnPesquisarClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('O campo de pesquisa está vazio!');
    Edit1.SetFocus;
  end;
end;

procedure TFrm_ListaUsuarios.Btn_AlterarClick(Sender: TObject);
begin
  flatCadUsuario := False;

  Try
    Application.CreateForm(TFrm_CadUsuario, Frm_CadUsuario);
    Frm_CadUsuario.ShowModal;

    if DM_CadUsuarios.FDQ_ListaUsuarios.UpdateStatus = usModified then
    begin
      DM_CadUsuarios.FDQ_ListaUsuarios.Cancel;
      DM_CadUsuarios.FDQ_ListaUsuarios.CancelUpdates;
    end;

  Finally
    FreeAndNil(Frm_CadUsuario);
  End;
end;

procedure TFrm_ListaUsuarios.Btn_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_ListaUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if MessageDlg('Deseja realmente sair?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      ModalResult := -1
    else
      Abort;
end;

procedure TFrm_ListaUsuarios.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
