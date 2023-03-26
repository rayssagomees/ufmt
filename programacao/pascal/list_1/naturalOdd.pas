program naturalOdd; // descobrir todos o números ímpares entre números naturais N1 e N2 dados.

var 
    odd, n1, n2: integer;
    info: char;

begin
    info:= 'y';

    writeln; writeln('Números naturais ímpares.');
    write('Digite y para continuar. '); read(info);
    
    while (info = 'y') do // loop principal
    begin
        writeln; write('Entre com N1: '); read(n1);
        write('Entre com N2: '); read(n2); writeln;
        
        while (n1 > 0) and (n2 > 0) do // enquanto n1 e n2 naturais maiores que zero
        begin
            if n1 < n2 then // para N2 maior que N1
            begin
                for odd := n1 to n2 do
                begin
                    if ((odd mod 2) <> 0) then
                    begin
                        write(#9, odd, ' ');
                    end;
                end;
            end
            else // para N1 maior que N2
            begin
                for odd := n2 to n1 do
                begin
                    if ((odd mod 2) <> 0) then
                    begin
                        write(#9, odd, ' ');
                    end;
                end;
            end;
            
            writeln; writeln; writeln('Digite 0 para sair.');
            write('Entre com N1: '); read(n1);
            write('Entre com N2: '); read(n2); writeln;
        end;
        
        info:= 'n';
    end;
    
    writeln; writeln; writeln('Fim.');
end.