program readTextFile_2;

uses 
  SysUtils;
  
const
  ARQ_NOME = 'eq2G.txt';

var
  arquivo: Text; // FileText
  linha: String;
  contaLinhas: integer;

begin
  // associa a variável "arquivo" ao arquivo "dados.txt"
  Assign(arquivo, ARQ_NOME);
  Reset(arquivo); // abre o arquivo novo para leitura 
  contaLinhas:= 0;
  
  while not EOF(arquivo) do // enquanto não chegar ao fim do arquivo 
  begin
    readln (arquivo, linha); // le linha por linha 
    writeln(linha); // escreve a linha lida na tela
    contaLinhas:= contaLinhas + 1;
  end;
  
  Close(arquivo); // fecha o arquivo "dados.txt"
  writeln;  
  writeln('Arquivo ', ARQ_NOME, ' lido!');
  writeln(contaLinhas, ' linhas lidas!');
  writeln('Fim.');    
  readln;
end.