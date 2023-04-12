program figuresArea;

var
    a, b, d, h, M, r, x: real;
    figure: char;

function circleArea (r:real):real;
var
    pi: real;

begin
    pi:= 3.14;
    circleArea:= pi*sqr(r);
end;

function diamondArea (M, d:real):real;
begin
    diamondArea:= (M/d)/2;
end;

function parallelogramArea (b, h:real):real;
begin
    parallelogramArea:= b*h;
end;

function rectangleArea (b, h:real):real;
begin
    rectangleArea:= b*h;
end;

function squareArea (a:real):real;
begin
    squareArea:= sqr(a);
end;

function trapezeArea (b, h, M:real):real;
begin
    trapezeArea:= ((M+b)*h)/2;
end;

function triangleArea (b, h:real):real;
begin
    triangleArea:= (b*h)/2;
end;

begin
    writeln('Calcule a area das figuras geometricas.');
    writeln('[a] Area do circulo;');
    writeln('[b] Area do losango;');
    writeln('[c] Area do paralelogramo;');
    writeln('[d] Area do retangulo;');
    writeln('[e] Area do quadrado;');
    writeln('[f] Area do trapezio;');
    writeln('[g] Area do triangulo.');
    writeln('[n] Para sair.');
    readln(figure);

    while (figure <> 'n') do
    begin
        if (figure = 'a') then
        begin
            writeln; write('Entre com o valor do raio: '); read(r);
            x:= circleArea(r);
            writeln('Area do circulo = ', x:0:2);
            readln;
        end
        else if (figure = 'b') then
        begin
            writeln; write('Entre com o valor da diagonal maior: '); read(M);
            write('Entre com o valor do diagonal menor: '); read(d);
            x:= diamondArea(M, d);
            writeln('Area do losango = ', x:0:2);
            readln;
        end
        else if (figure = 'c') then
        begin
            writeln; write('Entre com o valor da base: '); read(b);
            write('Entre com o valor da altura: '); read(h);
            x:= parallelogramArea(b, h);
            writeln('Area do paralelogramo = ', x:0:2);
            readln;
        end
        else if (figure = 'd') then
        begin
            writeln; write('Entre com o valor da base: '); read(b);
            write('Entre com o valor da altura: '); read(h);
            x:= rectangleArea(b, h);
            writeln('Area do retangulo = ', x:0:2);
            readln;
        end
        else if (figure = 'e') then
        begin
            writeln; write('Entre com o valor do lado: '); read(a);
            x:= squareArea(a);
            writeln('Area do quadrado = ', x:0:2);
            readln;
        end
        else if (figure = 'f') then
        begin
            writeln; write('Entre com o valor da base maior: '); read(M);
            write('Entre com o valor da base menor: '); read(b);
            write('Entre com o valor da altura: '); read(h);
            x:= trapezeArea(M, b, h);
            writeln('Area do trapezio = ', x:0:2);
            readln;
        end
        else if (figure = 'g') then
        begin
            writeln; write('Entre com o valor da base: '); read(b);
            write('Entre com o valor da altura: '); read(h);
            x:= triangleArea(b, h);
            writeln('Area do triangulo = ', x:0:2);
            readln;
        end
        else
        begin
            writeln; write('Por favor, escolha uma das areas indicadas.'); writeln;
        end;

        writeln; writeln('Calcule a area das figuras geometricas.');
        writeln('[a] Area do circulo;');
        writeln('[b] Area do losango;');
        writeln('[c] Area do paralelogramo;');
        writeln('[d] Area do retangulo;');
        writeln('[e] Area do quadrado;');
        writeln('[f] Area do trapezio;');
        writeln('[g] Area do triangulo.');
        writeln('[n] Para sair.');
        read(figure);
    end;

    writeln('Fim');
    readln;
end.