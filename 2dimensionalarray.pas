uses crt;
var A:array[1..100,1..100] of integer;
    i,j,n,m,tong,tonghang,tongcot,max,min
    :integer;
    Begin
clrscr;
write('Nhap n: ');
readln(n);
write('Nhap m: ');
readln(m);
For i:=1 to n do
 For j:=1 to m do
   Begin
write('A[',i,',',j,']=');
readln(A[i,j]);
end;
for i:=1 to n do
Begin
 for j:=1 to m do
        write(A[i,j] ,' ');
writeln;
end;
tong:=0;
for i:=1 to n do
 for j:=1 to m do
  if i=j then tong:=tong+A[i,j];
writeln('Tong duong cheo chinh: ',tong);
for i:=1 to n do
 begin
tonghang:=0;
for j:=1 to m do
  tonghang:=tonghang+A[i,j];
writeln('Tong hang ',i,': ',tonghang);
  end;
for j:=1 to m do
 begin
 tongcot:=0;
 for i:=1 to n do
 tongcot:=tongcot+A[i,j];
 writeln('Tong cot ',j,': ',tongcot);
 end;
max:=A[1,1];
for i:=1 to n do
 for j:=1 to m do
  if max<A[i,j] then max:=A[i,j];
writeln('So lon nhat: ',max);
min:=A[1,1];
for i:=1 to n do
 for j:=1 to m do
  if min>A[i,j] then min:=A[i,j];
writeln('So nho nhat: ',min);
 readln
end.
