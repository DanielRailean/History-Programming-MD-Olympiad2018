uses crt;
var s:string;n1,n2:longint;i:byte;code,v:integer;
function nr(n1,n2:longint;s:string):longint;
var n,t:longint;i:byte;code:integer;
begin
n:=0;
for i:=n1 to n2 do begin
	val(s[i],t,code);
	n:=n*10+t;
	end;
	nr:=n;
	end;
begin
clrscr;
readln(s);
for i:=1 to ((length(s) div 2)+1) do 
	if nr(1,i,s)< nr(i,length(s),s) then inc(v);
writeln(v);
readkey;
	end.