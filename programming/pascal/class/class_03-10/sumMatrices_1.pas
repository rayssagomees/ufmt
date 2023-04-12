program sumMatrices_1; // soma de matrizes

var 
	A: array[0..1, 0..2] of real; // 2 linhas e 3 colunas ou 2x3
	B: array[0..1, 0..2] of real; // 2 linhas e 3 colunas ou 2x3
	S: array[0..1, 0..2] of real; // 2 linhas e 3 colunas ou 2x3 

	i, j: integer;

begin // principal
	A[0,0]:= 1; A[0,1]:=2; A[0,2]:=3;	// 1a. linha
    A[1,0]:= 4; A[1,1]:=5; A[1,2]:=6;	// 2a. linha
	
	B[0,0]:= 7; A[0,1]:=8; A[0,2]:=9;	    // 1a. linha
	B[1,0]:= 10; A[1,1]:=11; A[1,2]:=12;	// 2a. linha

	for i:= 0 to 1 do 
	begin 
		for j:= 0 to 2 do
		begin
			S[i, j]:= A[i, j] + B[i, j]; 
		end;
	end;
	for i:= 0 to 1 do //-----------
	begin
		for j:= 0 to 2 do
		begin
			write('S[' ,i,',',j, '] = ', S[i, j]:0:2, ' ');
			// write(S[i, j]:8:2); //14 colunas sendo 2 para os decimais
		end;
		writeln;
	end;
	readln;
end.