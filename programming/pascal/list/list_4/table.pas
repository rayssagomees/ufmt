program createTable;

const
  max = 4; // número de elementos na tabela

var
  table: array[0..1, 0..max-1] of real; // tabela com duas linhas e MAX colunas
  input: text;
  i: integer;

begin
  assign(input, 'table1.txt'); // abre o arquivo "tabel1.txt"
  reset(input);

  for i := 0 to max-1 do // lê a primeira linha da tabela a partir do arquivo
  begin
    read(input, table[0,i]);
  end;

  close(input); // fecha o arquivo

  for i := 0 to max-1 do // preenche a segunda linha da tabela com os valores de f(x) = e^x
  begin
    table[1,i] := exp(table[0,i]);
  end;

  for i := 0 to max-1 do // imprime
  begin
    writeln('x', i, ' = ', table[0,i]:0:1, '     f(x) = ', table[1,i]:0:4);
  end;
  readln;

end.