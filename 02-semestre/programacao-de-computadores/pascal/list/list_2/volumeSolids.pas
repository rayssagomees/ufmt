program volumeSolids;

(*
    coneVolume
    cubeVolume
    cylinderVolume
    parallelepipedVolume
    sphereVolume

    área do cone
    área do cubo
    área do cilindro
    área de paralelepipedo
    área da esfera
*)

var
    b, h, l, pi, r, x: real;
    figure: char;

function coneVolume (h, pi, r:real):real;
begin
    coneVolume:= (pi*sqr(r)*h)/3;
end;

function cubeVolume (l:real):real;
begin
    cubeVolume:= l*l*l;
end;

function cylinderVolume (h, pi, r:real):real;
begin
    cylinderVolume:= pi*sqr(r)*h;
end;

function parallelepipedVolume (b, h, l:real):real;
begin
    parallelepipedVolume:= b*h*l;
end;

function sphereVolume (pi, r:real):real;
begin
    sphereVolume:= (4*pi*(r*r*r))/3;
end;

begin
    writeln('Calcule o volume dos solidos geometricos.');
    writeln('[a] Area do cone;');
    writeln('[b] Area do cubo;');
    writeln('[c] Area do cilindro;');
    writeln('[d] Area do paralelepipedo;');
    writeln('[e] Area do esfera;');
    writeln('[n] Para sair.');
    readln(figure);

    while (figure <> 'n') do
    begin
        pi:= 3.14;

        if (figure = 'a') then
        begin
            writeln; write('Entre com o valor do raio: '); read(r);
            write('Entre com o valor da altura: '); read(h);
            x:= coneVolume (h, pi, r);
            writeln('Volume do cone = ', x:0:2);
            readln;
        end
        else if (figure = 'b') then
        begin
            writeln; write('Entre com o valor do lado: '); read(l);
            x:= cubeVolume (l);
            writeln('Volume do cubo = ', x:0:2);
            readln;
        end
        else if (figure = 'c') then
        begin
            writeln; write('Entre com o valor do raio: '); read(r);
            write('Entre com o valor da altura: '); read(h);
            x:= cylinderVolume (h, pi, r);
            writeln('Volume do cilindro = ', x:0:2);
            readln;
        end
        else if (figure = 'd') then
        begin
            writeln; write('Entre com o valor da base: '); read(b);
            write('Entre com o valor da altura: '); read(h);
            write('Entre com o valor do lado: '); read(l);
            x:= parallelepipedVolume (b, h, l);
            writeln('Volume do paralelepipedo = ', x:0:2);
            readln;
        end
        else if (figure = 'e') then
        begin
            writeln; write('Entre com o valor do raio: '); read(r);
            x:= sphereVolume (pi, r);
            writeln('Volume do esfera = ', x:0:2);
            readln;
        end
        else
        begin
            writeln; write('Por favor, escolha uma das areas indicadas.'); writeln;
        end;

        writeln; writeln('Calcule o volume dos solidos geometricos.');
        writeln('[a] Area do cone;');
        writeln('[b] Area do cubo;');
        writeln('[c] Area do cilindro;');
        writeln('[d] Area do paralelepipedo;');
        writeln('[e] Area do esfera;');
        writeln('[n] Para sair.');
        read(figure);
    end;

    writeln('Fim');
    readln;
end.