unit UDM_PesquisaDespesas;

interface

uses
  System.SysUtils, System.Classes, UDM_Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.ODBCBase, FireDAC.Comp.UI, FireDAC.Comp.Client, Data.DB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM_PesquisaDespesas = class(TDM_Conexao)
    FDQ_PesqDespesasPorUsuario: TFDQuery;
    DSPesqDespesasPorUsuario: TDataSource;
    FDQ_PesqDespesasPorUsuarioid: TFDAutoIncField;
    FDQ_PesqDespesasPorUsuariodata: TSQLTimeStampField;
    FDQ_PesqDespesasPorUsuariodescricao: TWideStringField;
    FDQ_PesqDespesasPorUsuariovalor: TCurrencyField;
    FDQ_PesqDespesasPorUsuarioid_usuario: TIntegerField;
    FDT_Usuario: TFDTable;
    FDT_Usuarioid: TFDAutoIncField;
    FDT_Usuarionome: TWideStringField;
    FDT_Usuariocpf: TWideStringField;
    FDT_Usuarioident: TWideStringField;
    FDT_Usuariousername: TWideStringField;
    FDT_Usuariosenha: TWideStringField;
    FDT_Usuarioadm: TBooleanField;
    FDQ_PesqDespesasPorUsuarioUsuario: TStringField;
    FDQ_Soma: TFDQuery;
    FDQ_SomaExpr1000: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_PesquisaDespesas: TDM_PesquisaDespesas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
