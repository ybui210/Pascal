var
i,j,n,d,d1:integer;
f1,f2:text;
A:array[1..100]of integer;
BEGIN
assign(f1,'DIF.inp');
assign(f2,'DIF.out');
reset(f1);
rewrite(f2);
readln(f1,n);
for i:=1 to n do
  read(f1,A[i]);
for i:=1 to n do
  begin
    d:=0;
    for j:=i+1 to n do
      if A[i]=A[j] then inc(d);
      if d>1 then inc(d1);
  end;
writeln(f2,d1);
close(f1);
close(f2);
END.
