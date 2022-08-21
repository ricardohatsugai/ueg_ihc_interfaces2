unit UFrm_PesqDespesasPorUsuarioEntreDatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, System.DateUtils,
  FireDAC.Stan.Param;

type
  TFrm_PesqDespesasPorDatasEUsuario = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    btn_Pesquisar: TBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesqDespesasPorDatasEUsuario: TFrm_PesqDespesasPorDatasEUsuario;

implementation

{$R *.dfm}

uses UDM_PesquisaDespesas;

procedure TFrm_PesqDespesasPorDatasEUsuario.btn_PesquisarClick(Sender: TObject);
begin
  if ComboBox1.Text = '' then
  begin
    ShowMessage('Você precisa selecionar um usuário.');
    ComboBox1.SetFocus;
  end else
  begin
    DM_PesquisaDespesas.FDQ_PesqDespesasPorUsuario.Active := False;
    if not DM_PesquisaDespesas.FDT_Usuario.Locate('nome',ComboBox1.Text,[]) then
      ShowMessage('Usuário não encontrado!');
    // pesquisa
    DM_PesquisaDespesas.FDQ_PesqDespesasPorUsuario.Params[0].Value := DM_PesquisaDespesas.FDT_Usuarioid.AsInteger;
    DM_PesquisaDespesas.FDQ_PesqDespesasPorUsuario.Params[1].Value := DateTimePicker1.Date;
    DM_PesquisaDespesas.FDQ_PesqDespesasPorUsuario.Params[2].Value := DateTimePicker2.Date;
    DM_PesquisaDespesas.FDQ_PesqDespesasPorUsuario.Active := True;

    // soma
    DM_PesquisaDespesas.FDQ_Soma.Active := False;

    // pesquisa
    DM_PesquisaDespesas.FDQ_Soma.Params[0].Value := DM_PesquisaDespesas.FDT_Usuarioid.AsInteger;
    DM_PesquisaDespesas.FDQ_Soma.Params[1].Value := DateTimePicker1.Date;
    DM_PesquisaDespesas.FDQ_Soma.Params[2].Value := DateTimePicker2.Date;
    DM_PesquisaDespesas.FDQ_Soma.Active := True;
    Edit1.Text := 'R$ ' + DM_PesquisaDespesas.FDQ_SomaExpr1000.AsString;
  end;
end;

procedure TFrm_PesqDespesasPorDatasEUsuario.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := StartOfTheMonth(Now);
  DateTimePicker2.Date := EndOfTheMonth(Now);

  DM_PesquisaDespesas.FDT_Usuario.First;
  while not DM_PesquisaDespesas.FDT_Usuario.Eof do
  begin
    ComboBox1.Items.Add(DM_PesquisaDespesas.FDT_Usuarionome.AsString);
    DM_PesquisaDespesas.FDT_Usuario.Next;
  end;
end;

end.
