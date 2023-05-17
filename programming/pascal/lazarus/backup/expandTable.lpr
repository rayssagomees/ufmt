program createTable_2.pas;
var
  arq: text;
  i: integer;
  xi: array[1..5] of real = (0.0, 1.5, 3.0, 4.5, 6.0);
  fxi: array[1..5] of real = (0.001, 0.016, 0.028, 0.046, 0.057);
begin
  assign(arq, 'table2.txt');
  rewrite(arq);

  // Escrever os valores de xi na primeira linha do arquivo
  for i := 1 to 5 do
    write(arq, xi[i]:0:1, ' ');
  writeln(arq);

  // Escrever os valores de f(xi) na segunda linha do arquivo
  for i := 1 to 5 do
    write(arq, fxi[i]:0:3, ' ');
  writeln(arq);

  close(arq);
  writeln('Arquivo "table2.txt" criado com sucesso!');
  readln;
end.

