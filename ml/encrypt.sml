fun shiftChar(c, numShift) = let
	val cint = Char.ord c
	in
	if cint + numShift > 90 then Char.chr (64 + (cint + numShift - 90))
	else Char.chr (cint + numShift)
	end

fun encrypt(input, shift) = let
	val upperString = String.map Char.toUpper input
	val upperList = String.explode upperString
	val numShift = shift mod 26
	in
	String.implode (List.map (fn x => shiftChar(x, numShift)) upperList)
	end