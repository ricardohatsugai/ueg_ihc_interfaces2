unit UFrm_Lancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TFrm_Lancamento = class(TForm)
    Lbl_Data: TLabel;
    DateTimePicker_Data: TDateTimePicker;
    Lbl_Descricao: TLabel;
    Edit_Descricao: TEdit;
    Lbl_Valor: TLabel;
    Edit_Valor: TEdit;
    Btn_salvar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    procedure Btn_salvarClick(Sender: TObject);
    procedure Btn_salvarKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Lancamento: TFrm_Lancamento;

implementation

{$R *.dfm}

uses UDM_CadDespesas, UFrm_ListaDespesas, UDM_Login;

procedure TFrm_Lancamento.Btn_salvarClick(Sender: TObject);
begin
  if Edit_Descricao.Text = '' then
  begin
    ShowMessage('O campo descrição não pode ser nulo!');
    Edit_Descricao.SetFocus;
  end else
    if (Edit_Valor.Text = '') then
    begin
      ShowMessage('O campo valor não pode ser nulo ou caractere inválido!');
      Edit_Valor.SetFocus;
    end else
      begin
        DM_CadDespesas.FDTransaction_Aux.StartTransaction;

        if Frm_ListaDespesa.flagLancamento = True then
          DM_CadDespesas.FDQ_ListaDespesa.Insert
        else
          DM_CadDespesas.FDQ_ListaDespesa.Edit;

        DM_CadDespesas.FDQ_ListaDespesaDATA.AsDateTime := DateTimePicker_Data.Date;
        DM_CadDespesas.FDQ_ListaDespesaDESCRICAO.AsString := Edit_Descricao.Text;
        DM_CadDespesas.FDQ_ListaDespesaVALOR.AsCurrency := StrToCurr(Edit_Valor.Text);
        DM_CadDespesas.FDQ_ListaDespesaID_USUARIO.Value := DM_Login.FDQ_Usuariosid.AsInteger;

        DM_CadDespesas.FDQ_ListaDespesa.Post;
        DM_CadDespesas.FDQ_ListaDespesa.ApplyUpdates(-1);
        DM_CadDespesas.FDQ_ListaDespesa.CommitUpdates;

        DM_CadDespesas.FDTransaction_Aux.Commit;

        DM_CadDespesas.FDQ_ListaDespesa.Refresh;
      end;

end;

procedure TFrm_Lancamento.Btn_salvarKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',',',#8]) then
    key := #0;
end;

procedure TFrm_Lancamento.FormShow(Sender: TObject);
begin
  Edit_Descricao.SetFocus;

  if Frm_ListaDespesa.flagLancamento = False then
  begin
    DateTimePicker_Data.Date := DM_CadDespesas.FDQ_ListaDespesaDATA.AsDateTime;
    Edit_Descricao.Text := DM_CadDespesas.FDQ_ListaDespesaDESCRICAO.AsString;
    Edit_Valor.Text := DM_CadDespesas.FDQ_ListaDespesaVALOR.AsString;
  end;
end;

end.
