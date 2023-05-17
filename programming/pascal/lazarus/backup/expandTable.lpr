program expandTable;

const
  max = 5; // número de elementos na tabela

var
  arquivoEntrada, arquivoSaida: Text;
  tabelaEntrada: array[0..1, 0..max-1] of real; // tabela de entrada com duas linhas e MAX colunas
  tabelaSaida: array[0..2, 0..(max*2)-1] of real; // tabela de saída expandida com três linhas e MAX*2 colunas
  i: integer;

begin
  Assign(arquivoEntrada, 'tabela2.txt'); // Abrir o arquivo de entrada
  Reset(arquivoEntrada);

  // Ler a primeira linha da tabela de entrada
  for i := 0 to max-1 do
  begin
    Read(arquivoEntrada, tabelaEntrada[0, i]);
  end;

  // Ler a segunda linha da tabela de entrada
  for i := 0 to max-1 do
  begin
    Read(arquivoEntrada, tabelaEntrada[1, i]);
  end;

  Close(arquivoEntrada); // Fechar o arquivo de entrada

  // Preencher a primeira linha da tabela de saída com os valores xi da tabela de entrada
  for i := 0 to max-1 do
  begin
    tabelaSaida[0, i*2] := tabelaEntrada[0, i];
  end;

  // Preencher a segunda linha da tabela de saída com os valores f(xi) da tabela de entrada
  for i := 0 to max-1 do
  begin
    tabelaSaida[1, i*2] := tabelaEntrada[1, i];
  end;

  // Calcular e preencher a terceira linha da tabela de saída com os valores médios
  for i := 0 to max-2 do
  begin
    tabelaSaida[2, i*2+1] := (tabelaEntrada[0, i] + tabelaEntrada[0, i+1]) / 2; // cálculo da média dos xi
    tabelaSaida[2, i*2+2] := (tabelaEntrada[1, i] + tabelaEntrada[1, i+1]) / 2; // cálculo da média dos f(xi)
  end;

  // Abre o arquivo de saída
  Assign(arquivoSaida, 'tabela2expandida.txt');
  Rewrite(arquivoSaida);

  // Escreve a tabela de saída no arquivo
  for i := 0 to (max*2)-1 do
  begin
    Write(arquivoSaida, tabelaSaida[0, i]:0:1, ' ');
  end;
  WriteLn(arquivoSaida);

  for i := 0 to (max*2)-1 do
  begin
    Write(arquivoSaida, tabelaSaida[1, i]:0:3, ' ');
  end;
  WriteLn(arquivoSaida);

  for i := 0 to (max*2)-1 do
  begin
    Write(arquivoSaida, tabelaSaida[2, i]:0:1, ' ');
  end;

  Close(arquivoSaida); // Fecha o arquivo de sa

