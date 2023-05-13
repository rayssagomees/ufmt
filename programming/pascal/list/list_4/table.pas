program table;

const
  max = 4; // número de elementos na tabela

var
  tabel: array[0..1, 0..max-1] of real; // tabela com duas linhas e MAX colunas
  input: text;
  i: integer;

begin
  assign(input, 'tabel1.txt'); // abre o arquivo "tabel1.txt"
  reset(input);

  for i := 0 to max-1 do // lê a primeira linha da tabela a partir do arquivo
  begin
    read(input, tabel[0,i]);
  end;

  close(input); // fecha o arquivo

  for i := 0 to max-1 do // preenche a segunda linha da tabela com os valores de f(x) = e^x
  begin
    tabel[1,i] := exp(tabel[0,i]);
  end;

  for i := 0 to max-1 do // imprime
  begin
    writeln('x', i, ' = ', tabel[0,i]:0:1, '     f(x) = ', tabel[1,i]:0:4);
  end;
  readln;

end.