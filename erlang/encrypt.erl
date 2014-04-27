-module(encrypt).   
-export([encrypt/2]). 
 
encrypt(Input, Shift) -> io:fwrite("~s", [string:to_upper(Input)]).