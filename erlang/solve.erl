-module(solve).   
-export([solve/2]). 

shift(C, RealShift) ->
	if 		
		C+RealShift =< $Z -> C+RealShift;
		true -> $A + (C+RealShift - $Z) -1
	end.

encrypt(Input, NumShift) -> 
	RealShift = NumShift rem 26,
	lists:map(fun(C) -> shift(string:to_upper(C), RealShift) end, Input).	

solve(Input, 0) ->
 	io:format("~s~n", [string:concat("Caesar 0: ",string:to_upper(Input))]);
solve(Input, NumShift) when NumShift > 0 -> 
	io:format("~s~n", [lists:concat(["Caesar ", NumShift, ": ", encrypt(Input, NumShift)])]),
	solve(Input, NumShift-1).
