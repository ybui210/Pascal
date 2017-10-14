Var
f1,f2: text;
i,n,j,dem,k: longint;
x: string;
A: array[1..100000] of string;
BEGIN
 assign(f1,'LUCKYNUMBER.INP');
 assign(f2,'LUCKYNUMBER.OUT');
 reset(f1);
 rewrite(f2);
 readln(f1,n);
 k:=1;
 for i:=1 to 1000000 do
  begin
   str(i,x);
   for j:=1 to length(x) do
    if (x[j]='4') or (x[j]='7') then inc(dem);
   if dem=length(x) then
    begin
     A[k]:=x;
     writeln(f2,A[k]);
     inc(k);
     dem:=0;
    end 
    else dem:=0;
  end;
 writeln(f2,A[n]);
 close(f1);
 close(f2);
END.
