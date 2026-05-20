program eq2G; // vs2.0

uses
    SysUtils;

const
    ARQ_NOME= 'eq2G.txt';

var
    a, b, c: integer;
    tempA, tempB, tempC, linha: string;
    tempDelta, x1, x2: real;
    arquivo: Text;

function SplitString(var str: string; delimiter: char):string;
var
    p: integer;
    head: string;

begin
    p:= Pos(delimiter, str);
    head:= Copy(str, 1, p-1);
    str:= Copy(str, p+1, 10000);
    SplitString:= head;
end;

begin
    Assign(arquivo, ARQ_NOME);
    Reset(arquivo);

    while not EOF(arquivo) do
    begin
        readln(arquivo, linha);

        tempA:= SplitString(linha, ' ');
        Val(tempA, a);
        tempB:= SplitString(linha, ' ');
        Val(tempB, b);
        tempC:= Trim(linha);
        Val(tempC, c);

        tempDelta:= b*b-4*a*c;

        if tempDelta >= 0 then
        begin
            x1:= (-b + sqrt(tempDelta))/(2*a);
            x2:= (-b - sqrt(tempDelta))/(2*a);
            writeln('x1 = ', x1:0:2);
            writeln('x2 = ', x2:0:2);
        end;

        writeln('Delta = ', tempDelta:0:2);
        writeln;
    end;

    Close(arquivo);
    writeln('Fim');
    readln;
end.