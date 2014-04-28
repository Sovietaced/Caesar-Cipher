-module(encrypt).   
-export([encrypt/2]). 

shift(C, RealShift) ->
	if 		
		C+RealShift =< $Z -> C+RealShift;
		true -> $A + (C+RealShift - $Z) -1
	end.

encrypt(Input, NumShift) -> 
	RealShift = NumShift rem 26,
	io:format("~s~n", [lists:map(fun(C) -> shift(string:to_upper(C), RealShift) end, Input)]).			