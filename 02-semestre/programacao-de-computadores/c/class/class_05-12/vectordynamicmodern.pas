program ProgVectorDynamicModerno;

var
  //V1: array[0..4] of integer;  //Alocação estatica
  V2: array of integer;          //Alocação dinamica (pascal moderno)
  count, i: integer;
begin
  write('Entre com o tamanho do vetor: ');
  readln(count);

  SetLength(V2, count);  //Aloca memoria
  for i:= 0 to count-1 do
  begin
    V2[i]:= i + 3;
  end;
  for i:= 0 to count-1 do
  begin
    write('  V2[',i,'] = ', V2[i]);
  end;
  SetLength(V2, 0);  //Libera memoria

  writeln;
  writeln('Fim');
  readln;

end.