unit UDM_CadDespesas;

interface

uses
  System.SysUtils, System.Classes, UDM_Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM_CadDespesas = class(TDM_Conexao)
    FDQ_ListaDespesa: TFDQuery;
    FDQ_ListaDespesaID: TIntegerField;
    FDQ_ListaDespesaDATA: TDateField;
    FDQ_ListaDespesaDESCRICAO: TStringField;
    FDQ_ListaDespesaVALOR: TBCDField;
    DS_ListaDespesas: TDataSource;
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