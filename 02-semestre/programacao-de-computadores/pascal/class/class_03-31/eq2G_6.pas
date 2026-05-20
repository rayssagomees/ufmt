program eq2G; // vs3.0

uses
    SysUtils;

const
    ARQ_NOME= 'eq2G.txt';
    ARQ_NOME_2= 'eq2GSol.txt';

var
    a, b, c: integer;
    tempA, tempB, tempC, linha: string;
    tempDelta, x1, x2: real;
    arquivo, arquivo2: Text;

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
    Assign(arquivo2, ARQ_NOME_2);
    Rewrite(arquivo2);

    while not EOF(arquivo) do
    begin
        readln(arquivo, linha);

        tempA:= SplitString(linha, ' ');
        Val(tempA, a); // Val converte texto em número
        tempB:= SplitString(linha, ' ');
        Val(tempB, b);
        tempC:= Trim(linha);
        Val(tempC, c);

        tempDelta:= b*b-4*a*c;

        if tempDelta >= 0 then
        begin
            x1:= (-b + sqrt(tempDelta))/(2*a);
            x2:= (-b - sqrt(tempDelta))/(2*a);
            writeln(arquivo2, tempA, tempB, tempC, x1:0:2, x2:0:2);
            writeln(arquivo2, tempDelta:0:2);
        end
        else
        begin
            writeln(arquivo2, tempA, tempB, tempC, '?')
        end;

        writeln('Delta = ', tempDelta:0:2);
        writeln;
    end;

    Close(arquivo);
    Close(arquivo2);
    writeln('Fim');
    readln;
end.