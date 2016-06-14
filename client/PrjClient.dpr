program PrjClient;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {Form4},
  uDM in 'uDM.pas' {DM: TDataModule},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.

