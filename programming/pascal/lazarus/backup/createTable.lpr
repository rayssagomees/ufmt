program createTable;

var
  output: text;
  i: integer;    
  minhaString: string;

begin
  assign(output, 'table1.txt');
  rewrite(output);

  for i := 0 to 3 do
  begin
    write(output, (i * 0.2 + 1):0:1);
    write(output, ' ');
  end;

  writeln(output, (i * 0.2 + 1):0:1);
  minhaString := Copy(minhaString, 1, Length(minhaString) - 3);

  close(output);
end.
