-module(encrypt).   
-export([encrypt/2]). 
 
encrypt(Input, Shift) -> io:format("~s~n", [lists:map(fun(C) -> C+Shift end, Input)]).