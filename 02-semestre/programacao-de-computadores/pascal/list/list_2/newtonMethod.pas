program newtonMethod;

var
  a, b, c, error, acceptableSolution, fxk, f1xk: double;
  k: integer;

begin
  writeln('Entre com os valores de a, b e c: '); readln(a, b, c);
  writeln; write('Entre com o valor inicial x0: '); read(acceptableSolution);
  write('Entre com o valor maximo de iteracoes: '); read(k);
  write('Entre com o valor maximo do erro: '); read(error);

  for k:= 0 to k do
  begin
    fxk:= a*sqr(acceptableSolution)+b*acceptableSolution + c;
    f1xk:= 2*a*acceptableSolution+b;
    acceptableSolution:= acceptableSolution-fxk/f1xk;

    writeln; write('Iteracao ', k, ': Solucao = ', acceptableSolution:0:4, ' fxk = ', fxk:0:4);

    if (abs(fxk) < error) then
    begin
      writeln; writeln('Solucao encontrada: x = ', acceptableSolution:0:4);
      readln;
    end;
  end;

  writeln('Fim.');
  readln;
end.