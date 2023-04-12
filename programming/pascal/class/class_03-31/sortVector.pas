program sortVector;

uses
    SysUtils;

const
    ARQ_NOME_1= 'eq2G.txt';
    ARQ_NOME_2= 'eq2GSol.txt';

var
    v: array[0..4] of integer;
    count, i, j, tempLinha: integer;
    aux: integer;
    arquivo, arquivo2: Text;
    linha: string;

begin
    readln(arquivo, linha);
    v[0]:= SplitString(linha, ' ');
    v[1]:= SplitString(linha, ' ');
    v[2]:= SplitString(linha, ' ');
    v[3]:= SplitString(linha, ' ');
    v[4]:= SplitString(linha, ' ');

    count:= 5;

    for i:=0 to count-2 do
    begin
        for j:= i+1 to count-1 do
        begin
            if v[i] < v[j] then
            begin
                aux:= v[i];
                v[i]:= v[j];
                v[j]:= aux;
            end;
        end;
    end;
    for i := 0 to count-1 do
    begin
        writeln('v [', i, '] = ', v[i]);
        writeln(arquivo2, v[i]);
    end;
    writeln(arquivo2);

    Close(arquivo);
    Close(arquivo2);
    writeln('Fim');
    readln;
end.