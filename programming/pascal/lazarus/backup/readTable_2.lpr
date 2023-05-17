program readTable_2;
var
  arq: text;
  xi, fxi: array[1..5] of real;
  i: integer;
begin
  assign(arq, 'table2.txt');
  reset(arq);

  //Ler os valores de xi da primeira linha do arquivo
  for i := 1 to 5 do
    read(arq, xi[i]);

  //Ler os valores de f(xi) da segunda linha do arquivo
  for i := 1 to 5 do
    read(arq, fxi[i]);

  close(arq);

  //Exibir os valores lidos
  writeln('Valores de xi:');
  for i := 1 to 5 do
    write(xi[i]:0:1, ' ');

  writeln; writeln;
  writeln('Valores de f(xi):');
  for i := 1 to 5 do
    write(fxi[i]:0:3, ' ');

  readln;
end.
