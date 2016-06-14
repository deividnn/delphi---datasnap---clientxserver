unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

