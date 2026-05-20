program eq2G_4;  // vs1.0

uses
    SysUtils;

const
    ARQ_NOME = 'eq2G.txt';

var
    a, b, c: integer;
    tempA, tempB, tempC, linha: string;
    tempDelta, x1, x2: real;
    arquivo: Text;

function SplitStr(var s: string; delimiter: char):string;
var
    p: integer;
    token: string;
begin
    p:= Pos(delimiter, s);
    token:= Copy(s, 1, p); // pascal string começa no index 1
    s:= Copy(s, p+1, 1000); // deleta o token // length(s)-1
    SplitStr:= Trim(token); // retorna o token
end;

begin
    Assign(arquivo, ARQ_NOME);
    Reset(arquivo);

    while not EOF (arquivo) do
    begin
        readln(arquivo, linha);

        tempA:= SplitStr(linha, ' ');
        Val(tempA, a);
        tempB:= SplitStr(linha, ' ');
        Val(tempB, b);
        tempC:= SplitStr(linha, ' ');
        Val(tempC, c);

        tempDelta:= b*b-4*a*c;

        if tempDelta >= 0 then
        begin
            x1:= (-b + sqrt(tempDelta))/(2*a);
            x2:= (-b - sqrt(tempDelta))/(2*a);

            writeln('x1 = ' + x1:0:2);
            writeln('x1 = ' + x2:0:2);
        end;

        writeln('Delta = ', tempDelta:0:2);
        writeln;
    end;

    Close(arquivo);
    writeln('Fim.');
    readln;
end.