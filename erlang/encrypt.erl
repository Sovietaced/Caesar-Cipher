-module(encrypt).    % This is the file 'fact.erl', the module and the filename must match
-export([encrypt/0]). % This exports the function 'fac' of arity 1 (1 parameter, no type, no name)
 
encrypt() -> io:get_line("Prompt> ").