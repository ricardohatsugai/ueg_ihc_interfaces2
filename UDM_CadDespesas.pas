unit UDM_CadDespesas;

interface

uses
  System.SysUtils, System.Classes, UDM_Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Phys.ODBCBase;

type
  TDM_CadDespesas = class(TDM_Conexao)
    FDQ_ListaDespesa: TFDQuery;
    DS_ListaDespesas: TDataSource;
    FDQ_ListaDespesaID: TFDAutoIncField;
    FDQ_ListaDespesaDATA: TSQLTimeStampField;
    FDQ_ListaDespesaDESCRICAO: TWideStringField;
    FDQ_ListaDespesaVALOR: TCurrencyField;
    FDQ_ListaDespesaID_USUARIO: TIntegerField;
    FDTable_Usuario: TFDTable;
    FDTable_Usuarioid: TFDAutoIncField;
    FDTable_Usuarionome: TWideStringField;
    FDTable_Usuariocpf: TWideStringField;
    FDTable_Usuarioident: TWideStringField;
    FDTable_Usuariousername: TWideStringField;
    FDTable_Usuariosenha: TWideStringField;
    FDTable_Usuarioadm: TBooleanField;
    FDQ_ListaDespesaUSUARIO_LOOK: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_CadDespesas: TDM_CadDespesas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
