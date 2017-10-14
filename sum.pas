VAR
i,a,b,n,k,j,t:longint;
M:array[1..100000000] of longint;
f1,f2:text;
BEGIN
assign(f1,'SUM.INP');
assign(f2,'SUM.OUT');
reset(f1);
rewrite(f2);
read(f1,a,b);
k:=1;
For i:=1 to b do
  For j:=1 to i do
    Begin
      M[k]:=i;
      inc(k);
    End;
For i:=a to b do
  Begin
    t:=t+M[i];
  End;
writeln(f2,t);
close(f1);
close(f2);
end.
