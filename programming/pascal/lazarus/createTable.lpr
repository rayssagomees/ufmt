program createTable;

var
  output: text;
  i: integer;

begin
  assign(output, 'table1.txt');
  rewrite(output);

  for i := 0 to 3 do
  begin
    write(output, (i * 0.2 + 1):0:1);
    if i < 3 then
      write(output, ' ')
    else
      writeln(output, '.');
  end;

  close(output);
end.
