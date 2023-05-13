program ProgMatrizDynamicModerno;

var
  //M2: array[0..1,0..2] of integer; //2x3 Alocação estática
  Matrix: array of array of integer; //Alocação dinâmica
  lin, col, i, j: integer;
begin
  lin:= 2; //2x3 //Ou solicita o usuário para digitar o número de linhas
  col:= 3;        //Ou solicita o usuário para digitar o número de colunas
  SetLength(Matrix, lin, col); //Aloca memoria
  for i:=0 to lin-1 do
  begin
    for j:= 0 to col-1 do
    begin
      Matrix[i,j]:= i + j + 3; //Apenas exemplo
    end;
  end;
  for i:=0 to lin-1 do
  begin
    for j:=0 to col-1 do
    begin
      write('  M[',i,',',j,'] = ', Matrix[i,j]);
    end;
    writeln; //muda de linha
  end;
  SetLength(Matrix,0,0); //libera memoria
  readln;

end.