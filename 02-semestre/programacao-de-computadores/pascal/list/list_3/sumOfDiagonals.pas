program sumOfDiagonals;

var
  matriz: array[1..3,1..3] of integer;
  i,j,sumMain,sumSecundary: integer;

begin
  for i:=1 to 3 do
    for j:=1 to 3 do
    begin
      write('Digite o elemento (',i,',',j,') da matriz: ');
      readln(matriz[i,j]);
    end;

  sumMain := 0;
  for i:=1 to 3 do
    sumMain := sumMain + matriz[i,i];

  sumSecundary := 0;
  for i:=1 to 3 do
    sumSecundary := sumSecundary + matriz[i,4-i];

  writeln('Soma da diagonal principal: ', sumMain);
  writeln('Soma da diagonal secundaria: ', sumSecundary);

  readln;
end.