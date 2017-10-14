uses crt;
Var i,n,dem:integer;
    S:string;
Begin
clrscr;
write('Input number: ');
readln(S);
n:=length(S);
dem:=0;
For i:=1 to n div 2 do
    begin
        if S[i]= S[length(S)-i+1] then dem:=dem+1;
        end;
if dem=length(S) div 2 then writeln('So ',S,' la so dep')
        else writeln('so ',S, ' khong phai la so dep');
readln
end.
