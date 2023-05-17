program LerArquivoTexto;

var
  arquivo: Text;
  numeroStr: ShortString;
  numeroDecimal: Real;
  caractere: Char;

begin
  Assign(arquivo, 'table1.txt'); // Abrir o arquivo
  Reset(arquivo);

  numeroStr := '';  // Inicializar a string do número decimal

  while not EOF(arquivo) do  // Ler cada caractere do arquivo
  begin
    Read(arquivo, caractere);

    if caractere in ['0'..'9', '.'] then  // Verificar se o caractere é um número decimal válido
    begin
      numeroStr := numeroStr + caractere; // Concatenar o caractere à string representando o número decimal
      if caractere = '.' then // Verificar se o caractere atual é um ponto decimal e substituí-lo por vírgula
        caractere := ',';
    end

    else if (caractere = ' ') and (numeroStr <> '') then  // Verificar se a string do número decimal não está vazia e convertê-la para um número
    begin
      Val(numeroStr, numeroDecimal);  // Converter a string para um número decimal
      WriteLn(numeroDecimal:1:1);
      numeroStr := ''; // Limpar a string do número decimal
    end;

  end;
  Close(arquivo);   // Fechar o arquivo
  readln;
end.

