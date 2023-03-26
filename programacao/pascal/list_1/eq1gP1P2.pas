program eq1gP1P2; // resolvendo uma função afim pelo valor de dois pontos

var
    a, b, x1, x2, y1, y2: real;
    info: char;

function getA(x1, x2, y1, y2:real):real;
begin
    getA:= (y2-y1)/(x2-x1); // coeficiente angular
end;

function getB(x1, x2, y1, y2:real):real;
begin
    getB:= (y1*x2-y2*x1)/(x2-x1); // coeficiente linear
end;

begin
    info:= 'y';

    while (info = 'y') do
    begin
        // P1 (x1, y1)
        writeln;
        writeln('Entre com o par ordenado do ponto P1.');
        write('Digite o valor de x1: ');
        read(x1);
        write('Digite o valor de y1: ');
        read(y1);
        writeln;
        // P2 (x2, y2)
        writeln('Entre com o par ordenado do ponto P2.');
        write('Digite o valor de x2: ');
        read(x2);
        write('Digite o valor de y2: ');
        readln(y2);

        a:= getA(x1, x2, y1, y2); // coeficiente angular
        b:= getB(x1, x2, y1, y2); // coeficiente linear

        if b >= 0 then
        begin
            writeln;
        writeln(#9, 'f(x) = ', a:0:2,'x + ', b:0:2); // função afim y = ax + b
        writeln;
        end;
        if b < 0 then
        begin
            writeln;
            writeln(#9, 'f(x) = ', a:0:2,'x ', b:0:2); // função afim y = ax + b
        writeln;
        end;

        writeln('Digite y para continuar.');
        readln(info);
        writeln;
    end;

    write('Fim.')
end.