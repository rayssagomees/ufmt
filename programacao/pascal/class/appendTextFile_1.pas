program appendTextFile_1;

uses SysUtils ;
  
const
  ARQ_NOME = 'InfoAulas.txt';

var
  arquivo: Text; // FileText

begin
  // associa a variável "arquivo" ao arquivo "dados.txt"
  Assign(arquivo, ARQ_NOME);
  
  Append(arquivo); // adiciona mais dados
  
  writeln(arquivo, 'Você está cursando a disciplina.');
  writeln(arquivo, 'Programação de computadores');
  
  Close(arquivo); // fecha o arquivo "dados.txt"
  
  writeln('Arquivo ', ARQ_NOME, ' Criado');
  writeln('Fim.');    
  readln;
end.