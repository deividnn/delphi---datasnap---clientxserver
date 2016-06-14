unit uSM;

interface

uses System.SysUtils, System.Classes, System.Json,
  Datasnap.DSServer, Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter;

type
  TSM = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function somar(x, y: integer): integer;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation

{$R *.dfm}

uses System.StrUtils;

function TSM.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSM.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TSM.somar(x, y: integer): integer;
begin
  Result := x + y;
end;

end.
