VAR
i,n,k,d,j,max,m,tam,L:integer;
A,B:array[1..100] of integer;
f1,f2:text;
BEGIN
assign(f1,'CHOOSENUMBER.INP');
assign(f2,'CHOOSENUMBER.OUT');
reset(f1);
rewrite(f2);
read(f1,n);
readln(f1,m);
For i:=1 to n do
  read(f1,A[i]);
For i:=1 to n do
  B[i]:=A[i];
For i:=1 to n-1 do
  For j:=i+1 to n do
    If A[i]<A[j] then
    Begin
      tam:=A[i];
      A[i]:=A[j];
      A[j]:=tam;
    end;
For i:=1 to n do
  If B[i]=A[m] then
write(f2,i,' ',A[m]);
close(f1);
close(f2);
END.
