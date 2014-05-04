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

fun solve(i, s) = (
	print("Caesar " ^ Int.toString(s) ^  ": " ^ encrypt(i, s) ^ "\n");
	if s > 0 then solve(i, s-1) else NONE )