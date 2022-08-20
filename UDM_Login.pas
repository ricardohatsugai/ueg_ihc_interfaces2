unit UDM_Login;

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
  TDM_Login = class(TDM_Conexao)
    FDQ_Usuarios: TFDQuery;
    FDQ_Usuariosid: TFDAutoIncField;
    FDQ_Usuariosnome: TWideStringField;
    FDQ_Usuarioscpf: TWideStringField;
    FDQ_Usuariosident: TWideStringField;
    FDQ_Usuariosusername: TWideStringField;
    FDQ_Usuariossenha: TWideStringField;
    FDQ_Usuariosadm: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Login: TDM_Login;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
