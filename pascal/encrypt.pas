program Encrypt;

Uses sysutils;

var 
  input: string;
  numShift: integer;
begin
  writeln('Enter a string');
  readln(input);
  writeln('Enter a number');
  readln(numShift);
  
  UpperCase(input);
end.
