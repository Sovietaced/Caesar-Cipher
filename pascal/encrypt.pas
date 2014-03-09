program Encrypt;

var
  input: string;
  numShift: integer;

function shift(strInput: string; num: integer): string;
var
  i: integer;
begin
     for i := 1 to Length(strInput) do begin
       writeln(ord(strInput[i]));
       strInput[i] := chr(ord(strInput[i]) + 1)
     end;
     
     shift := strInput;
end;

begin
  writeln('Enter a string');
  readln(input);
  writeln('Enter a number');
  readln(numShift);
  
  input := upcase(input);
  input := shift(input, numShift);
  writeln(input)
end.
