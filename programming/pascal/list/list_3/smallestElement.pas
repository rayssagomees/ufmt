program smallestElement;

var
  matriz: array[0..2, 0..3] of integer;
  i, j, minorLine, minorColumn, minor: integer;

begin
  writeln('Informe os valores da matriz: ');
  for i := 0 to 2 do
  begin
    for j := 0 to 3 do
    begin
      write('matriz[', i, '][', j, ']: ');
      readln(matriz[i, j]);
    end;
  end;

  minorLine := 0;
  minorColumn := 0;
  minor := matriz[0, 0];

  for i := 0 to 2 do
  begin
    for j := 0 to 3 do
    begin
      if matriz[i, j] < minor then
      begin
        minor := matriz[i, j];
        minorLine := i;
        minorColumn := j;
      end;
    end;
  end;

  writeln('Menor elemento = ', minor);
  writeln('Linha x Coluna = [', minorLine, '][', minorColumn, ']');

  readln;
end.