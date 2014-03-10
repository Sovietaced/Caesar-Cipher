program Encrypt;

uses sysutils;

var
  input: string;
  numShift: integer;
  i: integer;

function shift(strInput: string; num: integer): string;
var
  i: integer;
  character: char;
begin
     if num >= 26 then
         num := num mod 26;
     for i := 1 to Length(strInput) do begin
         character := strInput[i];
         if((ord(character) - num) >= ord('A')) then
	      strInput[i] := chr(ord(character) - num)
	  else
	      strInput[i] := chr(ord('Z') - ((num - 1) - (ord(character) - ord('A'))))
     end;
     
     shift := strInput;
end;

begin
  writeln('Enter a string');
  readln(input);
  writeln('Enter a number');
  readln(numShift);
  
  input := upcase(input);
  
  for i := 1 to numShift do begin
      writeln('Caesar ' + IntToStr(numShift - i) + ': ' + shift(input, i));
  end;
end.
