program expandTable;

var
  input, output: text;
  xi, fxi: array[1..5] of real;
  xiMedia, fxiMedia: array[1..5] of real;
  i: integer;

begin
  assign(input, 'table2.txt');
  reset(input);

  // le xi
  for i := 1 to 5 do
    read(input, xi[i]);

  // le f(xi)
  for i := 1 to 5 do
    read(input, fxi[i]);

  close(input);

  // médias de xi e f(xi)
  for i := 1 to 5 do
    xiMedia[i] := (xi[i] + xi[i+1]) / 2;

  for i := 1 to 5 do
    fxiMedia[i] := (fxi[i] + fxi[i+1]) / 2;

  assign(output, 'table2expand.txt');
  rewrite(output);

  for i := 1 to 4 do
    write(output, xi[i]:0:1, ' ', xiMedia[i]:0:1, ' ');  // xi expandidos
  writeln(output, xi[5]:0:1);

  for i := 1 to 4 do
    write(output, fxi[i]:0:3, ' ', fxiMedia[i]:0:3, ' ');
  writeln(output, fxi[5]:0:3); // f(xi) expandidos

  close(output);
  //writeln('Arquivo "table2expand.txt" criado com sucesso!');
  readln;
end.
