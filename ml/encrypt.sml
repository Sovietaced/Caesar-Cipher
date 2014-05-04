fun encrypt(input, shift) = let
	(* toUppercase *)
	val charlist = String.explode input
	val upper = List.map Char.toUpper charlist
	val yep = String.implode upper
	in
	print(yep)
	end