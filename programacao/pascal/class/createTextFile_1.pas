program createTextFile_1;

uses 
  SysUtils ;
  
const
  ARQ_NOME = 'InfoAulas.txt';

var
  arquivo: Text; // FileText

begin
  // associa a variável "arquivo" ao arquivo "dados.txt"
  Assign(arquivo, ARQ_NOME);
  
  Rewrite(arquivo); // cria o arquivo "dados.txt"
  
  writeln(arquivo, 'Olá, pessoal.');
  writeln(arquivo, 'Bem vindos!');
  
  Close(arquivo); // fecha o arquivo "dados.txt"
  
  writeln('Arquivo ', ARQ_NOME, ' Criado');
  writeln('Fim.');    
  readln;
end.