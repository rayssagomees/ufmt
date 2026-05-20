program readTable_2;

var
  arq: text;
  xi, fxi: array[1..5] of real;
  i: integer;

begin
  assign(arq, 'table2.txt');
  reset(arq);

  for i := 1 to 5 do
    read(arq, xi[i]);   // le xi

  for i := 1 to 5 do
    read(arq, fxi[i]);  // le f(xi)

  close(arq);

  writeln('Valores de xi:'); // xi
  for i := 1 to 5 do
    write(xi[i]:0:1, ' ');

  writeln; writeln;
  writeln('Valores de f(xi):'); // f(xi)
  for i := 1 to 5 do
    write(fxi[i]:0:3, ' ');

  readln;
end.
