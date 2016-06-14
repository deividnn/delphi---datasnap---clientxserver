unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    x: TEdit;
    y: TEdit;
    somar: TButton;
    resultado: TLabel;
    procedure somarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses ClientClassesUnit1, ClientModuleUnit1;

procedure TForm4.somarClick(Sender: TObject);
var a,b,c:integer;
begin
     a:= strtoint(x.text);
     b:=strtoint(y.Text);
     c:=ClientModule1.SMClient.somar(a,b);
     resultado.Caption:=inttostr(c);
end;

end.
