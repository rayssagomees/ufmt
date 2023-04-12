program createTextFile_2;

uses 
  SysUtils;
  
const
  ARQ_NOME = 'eq2G.txt';

var
  arquivo: Text; // FileText

begin
  // associa a variável "arquivo" ao arquivo "dados.txt"
  Assign(arquivo, ARQ_NOME);
  
  Rewrite(arquivo); // cria o arquivo "dados.txt"
  
  writeln(arquivo, 'A B C');
  writeln(arquivo, '-1 -2 3');
  writeln(arquivo, '1 2 -3');
  
  Close(arquivo); // fecha o arquivo "dados.txt"
  
  writeln('Arquivo ', ARQ_NOME, ' Criado');
  writeln('Fim.');    
  readln;
end.