unit UFrm_ListaDespesas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, System.DateUtils,
  System.UITypes, FireDAC.Stan.Param;

type
  TFrm_ListaDespesa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    Lbl_DtIni: TLabel;
    Lbl_DtFim: TLabel;
    Btn_Pesquisar: TBitBtn;
    DateTimePicker1_Ini: TDateTimePicker;
    DateTimePicker_fim: TDateTimePicker;
    Btn_Lancamento: TBitBtn;
    btn_Alterar: TBitBtn;
    Btn_Escluir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Btn_LancamentoClick(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure Btn_EscluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    flagLancamento : Boolean;
    { Public declarations }
  end;

var
  Frm_ListaDespesa: TFrm_ListaDespesa;

implementation

{$R *.dfm}

uses UDM_CadDespesas, UFrm_Lancamento;

procedure TFrm_ListaDespesa.btn_AlterarClick(Sender: TObject);
begin
flagLancamento := False;
  try
    Application.CreateForm(TFrm_Lancamento, Frm_Lancamento);
    Frm_Lancamento.ShowModal;
  finally
    FreeAndNil(Frm_Lancamento);
  end;
end;

procedure TFrm_ListaDespesa.Btn_EscluirClick(Sender: TObject);
begin
  if MessageDlg('Você tem certeza que deseja excluir esta despesa?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    DM_CadDespesas.FDQ_ListaDespesa.Delete;
    DM_CadDespesas.FDQ_ListaDespesa.ApplyUpdates(-1);
    DM_CadDespesas.FDQ_ListaDespesa.CommitUpdates;
  end;

end;

procedure TFrm_ListaDespesa.Btn_LancamentoClick(Sender: TObject);
begin
  flagLancamento := True;
  try
    Application.CreateForm(TFrm_Lancamento, Frm_Lancamento);
    Frm_Lancamento.ShowModal;
  finally
    FreeAndNil(Frm_Lancamento);
  end;
end;

procedure TFrm_ListaDespesa.Btn_PesquisarClick(Sender: TObject);
begin
  DM_CadDespesas.FDQ_ListaDespesa.Active := False;
  DM_CadDespesas.FDQ_ListaDespesa.Params[0].AsDate := DateTimePicker1_Ini.Date;
  DM_CadDespesas.FDQ_ListaDespesa.Params[1].AsDate := DateTimePicker_fim.Date;
  DM_CadDespesas.FDQ_ListaDespesa.Active := True;
end;

procedure TFrm_ListaDespesa.FormShow(Sender: TObject);
begin
  DateTimePicker1_Ini.Date := StartOfTheMonth(Now);
  DateTimePicker_fim.Date := EndOfTheMonth(Now);

  DM_CadDespesas.FDQ_ListaDespesa.Active := False;
  DM_CadDespesas.FDQ_ListaDespesa.Params[0].AsDate := DateTimePicker1_Ini.Date;
  DM_CadDespesas.FDQ_ListaDespesa.Params[1].AsDate := DateTimePicker_fim.Date;
  DM_CadDespesas.FDQ_ListaDespesa.Active := True;

  flagLancamento := False;
end;

end.
