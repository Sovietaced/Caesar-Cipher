-module(decrypt).   
-export([decrypt/2]). 

shift(C, RealShift) ->
	if 		
		C-RealShift >= $A -> C-RealShift;
		true -> $Z - ($A - (C-RealShift)) +1
	end.

decrypt(Input, NumShift) -> 
	RealShift = NumShift rem 26,
	io:format("~s~n", [lists:map(fun(C) -> shift(string:to_upper(C), RealShift) end, Input)]).			