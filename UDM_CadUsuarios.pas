unit UDM_CadUsuarios;

interface

uses
  System.SysUtils, System.Classes, UDM_Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Datasnap.DBClient, Datasnap.Provider;

type
  TDM_CadUsuarios = class(TDM_Conexao)
    FDQ_ListaUsuarios: TFDQuery;
    FDQ_ListaUsuariosID: TIntegerField;
    FDQ_ListaUsuariosNOME: TStringField;
    FDQ_ListaUsuariosCPF: TStringField;
    FDQ_ListaUsuariosIDENT: TStringField;
    FDQ_ListaUsuariosUSERNAME: TStringField;
    FDQ_ListaUsuariosSENHA: TStringField;
    FDQ_ListaUsuariosADM: TBooleanField;
    DS_ListaUsuarios: TDataSource;
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
