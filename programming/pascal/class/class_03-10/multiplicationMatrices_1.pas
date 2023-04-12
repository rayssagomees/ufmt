program multiplicationMatrices_1; // multiplicação de matrizes

var
  A: array[0..2, 0..1] of real; //3x2
  B: array[0..1, 0..3] of real; //2x4
  C: array[0..2, 0..3] of real; //3x4

  i, j, k: integer;

begin // principal
  A[0,0]:=1;  A[0,1]:=2;
  A[1,0]:=3;  A[1,1]:=4;
  A[2,0]:=5;  A[2,1]:=6;

  B[0,0]:=7;   B[0,1]:=8;   B[0,2]:=9;   B[0,3]:=10;
  B[1,0]:=11;  B[1,1]:=12;  B[1,2]:=13;  B[1,3]:=14;

  for i:= 0 to 2 do
  begin
      for k:= 0 to 3 do
      begin
          C[i,k]:=0;

          for j:=0 to 1 do
          begin
              C[i,k]:= C[i,k] + A[i,j]*B[j,k];
          end;
      end;
  end;

  for i:= 0 to 2 do
  begin
      for k:= 0 to 3 do
      begin
          write(C[i,k]:8:2, '  ');
      end;

      writeln;
  end;

  writeln; write('Fim.'); readln;
end.