var
i,j,n,k,max,tam,d:integer;
A,B:array[1..100] of integer;
f1,f2:text;
BEGIN
assign(f1,'MAX.INP');
assign(f2,'MAX.OUT');
reset(f1);
rewrite(f2);
readln(f1,n);
For i:=1 to n do
  readln(f1,A[i]);
for i:=1 to n-1 do
     for j:=i+1 to n do
        if A[j]<A[i] then
        Begin
           tam:=A[i];
           A[i]:=A[j];
           A[j]:=tam;
        End;

For i:=1 to n do
  Begin
  d:=0;
  For j:=1 to n do
    If A[i]=A[j] then inc(d);
    B[i]:=d;
  End;
max:=1;
For i:=1 to n do
  If max<B[i] then
  Begin
    max:=B[i];
    k:=i;
  End;
write(f2,A[k],' ',max);
close(f1);
close(f2);
END.
