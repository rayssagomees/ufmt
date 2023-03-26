program sqr2; // encontre uma solução aceitável para x^2-2=0 usando a fórmula iterativa

var
    epsilon, solution, stopTest, x0: real;

begin
    epsilon:= 0.001;
    x0:= 1;
    solution:= (1/2)*(x0+(2/x0)); // fórmula iterativa
    stopTest:= abs(solution-x0)/abs(solution); // fórmula do erro relativo

    while stopTest > epsilon do
    begin
        //writeln(solution:0:4, ' continua calculando...');
        x0:= solution;
        solution:= (1/2)*(x0+(2/x0)); // fórmula iterativa
        stopTest:= abs(solution-x0)/abs(solution); // recálculo
    end;
    
    writeln; writeln('Uma solução aceitável para x^2+2=0 é x=', solution:0:4);
    
    writeln; writeln('Fim.');
end.