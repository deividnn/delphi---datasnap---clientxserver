Aplicacao simples de datasnap com delphi 10 seatle
servidor
Clique em file>new>other>datasnap server>datasnap server>ok>forms application>next>vcl application>next>next>test port>next>tdsserve module>finish
Control+shift+s
Salve os arquivos numa pasta chamada server
Salve o form como ufrmMain
No form colocar name = ufrmMain e caption = servidor  datasnap executando...
Salve o server container como uSC
No USC coloca name=SC
Salve o server methos como Usm
No USM colocar name = SM
Salve o projeto com PrjServer
No arquivo USM em public declarations declare function somar(x,y:integer):integer;
Aperte as teclas control+shif+c e implemente a funcao:
function TSM.somar(x, y: integer): integer;
begin
  Result := x + y;
end;

aperte f9 e deixe a aplicacao executando


cliente

va em file>new>vcl forms application
digite control+shift+s 
salve os arquivos numa pasta client
salve o form como ufrmMain, caption=cliente datasnap
e o projeto com PrjCliente
no form coloca name=frmMain
coloque dois edits ,um button e um label
no primeiro edit coloque name =x,numberonly=true e text igual vazio
no segundo edit coloque name =y,numberonly=true e text igual vazio
button caption = somar,name =somar
label coloque name resultado e caption = 0
Clique em file>new>other>datasnap server>datasnap client module>ok>remote server>next>datasnap stand alone server>next>tcp/ip>next>host name=127.0.1.1>port=211>test connection>finish
Apert control+shift+s
Clique em file>use unit> ClientModuleUnit1>ok]
De duplo clique no botao e somar e implemente a funcao:
procedure TForm4.somarClick(Sender: TObject);
var a,b,c:integer;
begin
     a:= strtoint(x.text);
     b:=strtoint(y.Text);
     c:=ClientModule1.SMClient.somar(a,b);
     resultado.Caption:=inttostr(c);
end;

execute aplicacao e teste
