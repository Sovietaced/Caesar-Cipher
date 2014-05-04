fun shiftChar(c, numShift) = let
	val cint = Char.ord c
	in
	if cint - numShift <= 64 then Char.chr (90 - (64 - (cint - numShift)))
	else Char.chr (cint - numShift)
	end

fun decrypt(input, shift) = let
	val upperString = String.map Char.toUpper input
	val upperList = String.explode upperString
	val numShift = shift mod 26
	in
	String.implode (List.map (fn x => shiftChar(x, numShift)) upperList)
	end