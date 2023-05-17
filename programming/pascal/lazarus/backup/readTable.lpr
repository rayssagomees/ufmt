program readTable;

const
  max = 4; // número de elementos na tabela

var
  archive: Text;
  numberStr: ShortString;
  decimalNumber: Real;
  caractere: Char;
  table: array[0..1, 0..max-1] of real; // tabela com duas linhas e max colunas
  i: integer;

begin
  Assign(archive, 'table1.txt'); // abre
  Reset(archive);

  numberStr := '';  // string do número decimal

  while not EOF(archive) do  // leitor de caractere
  begin
    Read(archive, caractere);

    if caractere in ['0'..'9', '.'] then  // verificar se é válido
    begin
      numberStr := numberStr + caractere; // junta como decimal
      if caractere = '.' then // verificar se é um ponto decimal e substituí-lo por vírgula
        caractere := ',';
    end

    else if (caractere = ' ') and (numberStr <> '') then  // verificar se a string não está vazia e converte para um número
    begin
      Val(numberStr, decimalNumber);  // converter para um número decimal
      WriteLn(decimalNumber:1:1);
      numberStr := ''; // limpar a string
    end;

  end;

  Close(archive);   // fecha

  // Preenche a primeira linha da tabela com os valores lidos
  for i := 0 to max-1 do
  begin
    table[0, i] := i * 0.2 + 1;
  end;

  // Preenche a segunda linha da tabela com os valores de f(x) = e^x
  for i := 0 to max-1 do
  begin
    table[1, i] := exp(table[0, i]);
  end;

  writeln; writeln('                f(x) = e^x');

  for i := 0 to max-1 do
  begin
    writeln('x', i, ' = ', table[0, i]:0:1, '        f(', table[0, i]:0:1,') = ', table[1, i]:0:4);
  end;

  readln;
end.

