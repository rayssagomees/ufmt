program LerArquivoTexto;

var
  arquivo: Text;
  numeroStr: ShortString;
  numeroDecimal: Real;
  caractere: Char;

begin
  // Abrir o arquivo
  Assign(arquivo, 'table1.txt');
  Reset(arquivo);

  // Inicializar a string do número decimal
  numeroStr := '';

  // Ler cada caractere do arquivo
  while not EOF(arquivo) do
  begin
    Read(arquivo, caractere);

    // Verificar se o caractere é um número decimal válido
    if caractere in ['0'..'9', '.'] then
    begin
      // Concatenar o caractere à string representando o número decimal
      numeroStr := numeroStr + caractere;

      // Verificar se o caractere atual é um ponto decimal e substituí-lo por vírgula
      if caractere = '.' then
        caractere := ',';
    end
    // Verificar se a string do número decimal não está vazia e convertê-la para um número
    else if (caractere = ' ') and (numeroStr <> '') then
    begin
      // Converter a string para um número decimal
      Val(numeroStr, numeroDecimal);

      // Faça algo com o número decimal lido
      // Exemplo: exibir na tela
      WriteLn(numeroDecimal:2:2);

      // Limpar a string do número decimal
      numeroStr := '';
    end;
  end;

  // Fechar o arquivo
  Close(arquivo);
  readln;
end.

