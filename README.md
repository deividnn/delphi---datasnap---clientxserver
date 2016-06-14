Aplicacao simples de datasnap com delphi 10 seatle<br/><br/>
servidor<br/>
Clique em file>new>other>datasnap server>datasnap server>ok>forms application>next>vcl application>next>next>test port>next>tdsserve module>finish<br/>
Control+shift+s<br/>
Salve os arquivos numa pasta chamada server<br/>
Salve o form como ufrmMain<br/>
No form colocar name = ufrmMain e caption = servidor  datasnap executando...<br/>
Salve o server container como uSC<br/>
No USC coloca name=SC<br/>
Salve o server methos como Usm<br/>
No USM colocar name = SM<br/>
Salve o projeto com PrjServer<br/>
No arquivo USM em public declarations declare function somar(x,y:integer):integer;<br/>
Aperte as teclas control+shif+c e implemente a funcao:<br/><br/>
function TSM.somar(x, y: integer): integer;
begin
  Result := x + y;
end;
<br/>
aperte f9 e deixe a aplicacao executando
<br/><br/>

cliente<br/>

va em file>new>vcl forms application<br/>
digite control+shift+s <br/>
salve os arquivos numa pasta client<br/>
salve o form como ufrmMain, caption=cliente datasnap<br/>
e o projeto com PrjCliente<br/>
no form coloca name=frmMain<br/>
coloque dois edits ,um button e um label<br/>
no primeiro edit coloque name =x,numberonly=true e text igual vazio<br/>
no segundo edit coloque name =y,numberonly=true e text igual vazio<br/>
button caption = somar,name =somar<br/>
label coloque name resultado e caption = 0<br/>
Clique em file>new>other>datasnap server>datasnap client module>ok>remote server>next>datasnap stand alone<br/> server>next>tcp/ip>next>host name=127.0.1.1>port=211>test connection>finish<br/>
Apert control+shift+s<br/>
Clique em file>use unit> ClientModuleUnit1>ok]<br/>
De duplo clique no botao e somar e implemente a funcao:<br/><br/>
procedure TForm4.somarClick(Sender: TObject);
var a,b,c:integer;
begin
     a:= strtoint(x.text);
     b:=strtoint(y.Text);
     c:=ClientModule1.SMClient.somar(a,b);
     resultado.Caption:=inttostr(c);
end;
<br/>
execute aplicacao e teste
