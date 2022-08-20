unit UDM_Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Comp.Client, Data.DB, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.Phys.ODBCBase;

type
  TDM_Conexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction_principal: TFDTransaction;
    FDTransaction_Aux: TFDTransaction;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Conexao: TDM_Conexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
