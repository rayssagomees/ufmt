program ProgVectorDynamic;

var
  V1: ^integer; //Ponteiro para um vetor de inteiros (pascal padrão)
  count, i: integer; //Auxiliares

begin
  write('Entre com o tamanho do vetor: ');
  readln(count);
  //getmen(V, count*SizeOf(integer));
  V1:= getmem(count*sizeOf(integer)); //Aloca memorial

  for i:= 0 to count-1 do
  begin
    V1[i]:= i + 3;
  end;
  for i:= 0 to count-1 do
  begin
    write('   V1[',i,'] = ', V1[i]);
  end;
  freemem(V1, count*SizeOf(integer)); //Libera memoria

  writeln;
  writeln('Fim');
  readln;


end.