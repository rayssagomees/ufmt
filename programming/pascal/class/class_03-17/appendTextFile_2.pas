program appendTextFile_2;

uses 
    SysUtils;
  
const
    ARQ_NOME = 'eq2G.txt';

var
    arquivo: Text; // FileText

begin
    // associa a variável "arquivo" ao arquivo "dados.txt"
    Assign(arquivo, ARQ_NOME);

    Append(arquivo); // adiciona mais dados

    writeln(arquivo, '4 -1 3');
    writeln(arquivo, '5 1 -3');

    Close(arquivo); // fecha o arquivo "dados.txt"

    writeln('Arquivo ', ARQ_NOME, ' Criado');
    writeln('Fim.');    
    readln;
end.