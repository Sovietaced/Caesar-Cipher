program Encrypt;

var
  input: string;
  numShift: integer;

function shift(strInput: string; num: integer): string;
var
  i: integer;
  character: char;
begin
     if num >= 26 then
         num := num mod 26;
     for i := 1 to Length(strInput) do begin
         character := strInput[i];
         if((ord(character) + num) <= ord('Z')) then
	      strInput[i] := chr(ord(character) + num)
	  else
	      strInput[i] := chr(ord('A') + ((ord(character) + num) -1) - ord('Z'))
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
