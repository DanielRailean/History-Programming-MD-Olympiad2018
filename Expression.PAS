uses crt;
var s:string;verdict:boolean;f,t:text;parri,parrs, parpi, parps,parvi,parvs,i:longint;

function init(s:string):boolean;
	var verd:boolean;i:byte;
	begin
	verd:=true;
	while verd and (i<length(s)) do begin
	if s[i] in
		['/','*','+','-','(','[','{','1','2','3','4','6','7','8','9','0','}',']',')'] 
	then verd:=true else verd := false;
	inc(i);
	end;
	init:=verd;
	end;

function op(character:char):boolean;
	var local:boolean;
	begin
		local:=true;
		case character of
	'/','*','+','-': local:= false;
	end;
	op:=local;	
		end;

function eq(n1,n2:integer):boolean;
	begin
		eq:=n1=n2;
		end;
begin
clrscr;
readln(s);
parrs:=0;
parri:=0;
parps:=0;
parpi:=0;
parvs:=0;
parvi:=0;
for i:= 1 to length(s) do begin
	case s[i] of 
	'(': inc(parri);
	')': if parrs > parri then verdict:=false else inc(parrs);
	'[': inc(parpi);
	']': if parps > parpi then verdict:=false else inc(parps);
	'{': inc(parvi);
	'}': if parvs > parvi then verdict:=false else inc(parvs);
	'/','*','+','-': if ((not op(s[i-1])) and (not op(s[i-1]))) then verdict:=false;
	end; 
	end;
for i:= 1 to length(s) do begin
	case s[i] of 
	')': if not op(s[i-1]) then verdict:=false;
	']': if not op(s[i-1]) then verdict:=false;
	end;
	end;
writeln(parrs,parri,parps,parpi);
verdict:=init(s) and op(s[1]) and op(s[length(s)]) and (eq(parri,parrs)) and eq(parpi,parps) and eq(parvi,parvs);
if verdict = false then writeln('NU') else writeln ('DA');
readkey;
	end.