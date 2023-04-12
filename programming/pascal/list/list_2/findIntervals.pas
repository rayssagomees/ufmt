program findIntervals;

(*

Desenvolva uma programa Pascal para encontrar e escrever/imprimir todos os intervalos “unitários” |b – a| = 1 que contém um zero da função: f(x) = ax2 + bx + c entre os inteiros N1 e N2.

Intervalos "unitários" são intervalos de comprimento 1. Por exemplo, o intervalo [0,1] é um intervalo unitário pois sua largura é 1. Em geral, um intervalo unitário é definido como um intervalo [a, a+1].

Teorema 1:
    Seja f(x) uma função contínua num intervalo [a,b].
    Se f(a).f(b) < 0, então existe um zero de f(x) entre a e b.

Teorema 2:
    Se f’(x) existir e preservar o sinal em (a,b).
    Então esse intervalo contém um único zero de f(x).

*)

var
  a, b, c, delta, fX1, fX2, x1, x2: real;
  i, n1, n2: integer;

function eq2Gx1(a, b, c, x1: real): real;
begin
  eq2Gx1:= a*sqr(x1)+b*x1+c;
end;

function eq2Gx2(a, b, c, x2: real): real;
begin
  eq2Gx2:= a*sqr(x2)+b*x2+c;
end;

begin
  writeln; write('Entre com o valor de a: '); read(a);
  write('Entre com o valor de b: '); read(b);
  write('Entre com o valor de c: '); read(c);
  write('Entre com o valor de N1: '); read(N1);
  write('Entre com o valor de N2: '); read(N2); writeln;

  for i:= N1 to N2-1 do
  begin
    x1:= i;
    x2:= i+1;
    delta := sqr(b)-4*a*c;
    fX1:= eq2Gx1(a, b, c, x1);
    fX2:= eq2Gx2(a, b, c, x2);

    if ((fX1*fX2) < 0) then
    begin
      writeln('Intervalo que contem uma raiz: [', x1:0:2, ', ', x2:0:2, ']');
      readln;
    end;
  end;

  write('Fim.');
  readln;
end.