program expandTable;
var
  arqEntrada, arqSaida: text;
  xi, fxi: array[1..5] of real;
  xiMedia, fxiMedia: array[1..5] of real;
  i: integer;
begin
  assign(arqEntrada, 'table2.txt');
  reset(arqEntrada);

  // Ler os valores de xi da primeira linha do arquivo
  for i := 1 to 5 do
    read(arqEntrada, xi[i]);

  // Ler os valores de f(xi) da segunda linha do arquivo
  for i := 1 to 5 do
    read(arqEntrada, fxi[i]);

  close(arqEntrada);

  // Calcular as médias dos valores de xi e f(xi)
  for i := 1 to 5 do
    xiMedia[i] := (xi[i] + xi[i+1]) / 2;

  for i := 1 to 5 do
    fxiMedia[i] := (fxi[i] + fxi[i+1]) / 2;

  // Escrever os valores expandidos no arquivo de saída
  assign(arqSaida, 'table2expand.txt');
  rewrite(arqSaida);

  // Escrever os valores de xi expandidos na primeira linha do arquivo
  for i := 1 to 4 do
    write(arqSaida, xi[i]:0:1, ' ', xiMedia[i]:0:1, ' ');
  writeln(arqSaida, xi[5]:0:1);

  // Escrever os valores de f(xi) expandidos na segunda linha do arquivo
  for i := 1 to 4 do
    write(arqSaida, fxi[i]:0:3, ' ', fxiMedia[i]:0:3, ' ');
  writeln(arqSaida, fxi[5]:0:3);

  close(arqSaida);
  writeln('Arquivo "tabela2expandida.txt" criado com sucesso!');
  readln;
end.

