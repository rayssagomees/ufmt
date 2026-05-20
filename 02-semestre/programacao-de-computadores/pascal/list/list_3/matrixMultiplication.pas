program matrixMultiplication; // multiplicação de matrizes

var
  A: array[0..2, 0..2] of real; //3x3
  B: array[0..2, 0..0] of real; //3x1
  C: array[0..2, 0..0] of real; //3x1

  i, j, k: integer;

begin // principal
  writeln('Digite os valores da matriz A:');
  for i := 0 to 2 do // 3 linhas
  begin
    for j := 0 to 2 do // 3 colunas
    begin
      readln(A[i,j]);
    end;
  end;

  writeln('Digite os valores da matriz B:');
  for i := 0 to 2 do // 3 linhas
  begin
    for j := 0 to 0 do // 1 coluna
    begin
      readln(B[i,j]);
    end;
  end;

  for i := 0 to 2 do // 3 linhas
  begin
    for k := 0 to 0 do // 1 coluna
    begin
      C[i,k] := 0;

      for j := 0 to 2 do
      begin
        C[i,k] := C[i,k] + A[i,j]*B[j,k];
      end;
    end;
  end;

  writeln('Resultado =');
  for i := 0 to 2 do // 3 linhas
  begin
    for k := 0 to 0 do // 1 coluna
    begin
      write(C[i,k]:8:2, '  ');
    end;
    writeln;
  end;

  writeln; write('Fim.'); readln;
end.
