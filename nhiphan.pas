var f1,f2:Text;
i,n:integer;
A:array[1..100] of integer;
function nhiphan(n:integer):integer;
var i,k:integer;
begin
k:=0;
while n<>0 do
begin
k:=k + (n mod 2);
n:=n div 2;
end;
nhiphan:=k;
end;
begin
assign(f1,'TNP.inp');
assign(f2,'TNP.out');
reset(f1);
rewrite(f2);
readln(f1,n);
for i:=1 to n do
  readln(f1,A[i]);
for i:=1 to n do
  writeln(f2,nhiphan(A[i]));
close(f1);
close(f2);
end.
