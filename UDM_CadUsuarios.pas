unit UDM_CadUsuarios;

interface

uses
  System.SysUtils, System.Classes, UDM_Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.Phys.ODBCBase;

type
  TDM_CadUsuarios = class(TDM_Conexao)
    FDQ_ListaUsuarios: TFDQuery;
    DS_ListaUsuarios: TDataSource;
    FDQ_ListaUsuariosID: TFDAutoIncField;
    FDQ_ListaUsuariosNOME: TWideStringField;
    FDQ_ListaUsuariosCPF: TWideStringField;
    FDQ_ListaUsuariosIDENT: TWideStringField;
    FDQ_ListaUsuariosUSERNAME: TWideStringField;
    FDQ_ListaUsuariosSENHA: TWideStringField;
    FDQ_ListaUsuariosADM: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_CadUsuarios: TDM_CadUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
