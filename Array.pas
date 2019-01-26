uses crt;
type tablou = array[1..500,1..100] of integer;
var t:tablou;i,j:byte;w,h,n,a,b,c,d,liber:integer;
function color(a,b,c,d:integer):byte;
var i,j:byte;
begin
	for i:= a+1 to c do
	for j:= b+1 to d do
	t[i,j]:=0;
	color:=0;
	end;
procedure tipar;
	begin
	for i:=1 to w do begin
	for j:=1 to h do 
	write(t[i,j]:2);
	writeln;
	end;
	end;
begin
clrscr;
read(w);
readln(h);
readln(n);
for i:=1 to w do
	for j:=1 to h do 
	t[i,j]:=1;
tipar;
for i:=1 to n do begin
	readln(a,b,c,d);
	if (a<0) or (c>w) or (b<0) or (d>h) then
	 writeln('nu satisface conditiile') else 
	color(a,b,c,d);
	end;
liber:=0;
for i:=1 to w do
	for j:=1 to h do 
	if t[i,j]= 1 then inc(liber);
tipar;
writeln('ramas:',liber);
readkey;
end.