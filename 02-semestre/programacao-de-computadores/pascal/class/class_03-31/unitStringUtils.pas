unit unitStringUtils;

{$ mode objfpc}{$He}

interface

uses
    Classes, SysUtils;

function SplitString(var str: string; delimiter: char):integer;

implementation

function SplitString(var str: string; delimiter: char):integer;
var
    p, headInt: integer;
    head: string;
begin
    p:= Pos(delimiter, str);
    if p > 0 then
    begin
        head:= Copy(str, 1, p-1);
        str:=Copy(str, p+1, 10000);
        Val(head, headInt);
        SplitString:= headInt;
    end
    else
    begin
        Val(str, headInt);
        SplitString:= headInt;
    end;
end;

begin
    
end.