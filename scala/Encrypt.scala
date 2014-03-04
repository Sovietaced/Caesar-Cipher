object Encrypt {
    def main(args: Array[String]) {
      println("Enter a string")
      var str: String = Console.readLine
      println("Enter an integer")
      var num: Int = Console.readInt
      shift(str, num)
    }
    
    def shift(str: String, num: Int) = {
      var output : String = ""
	  var input : String = str.toUpperCase()
	  var numShift :Int = num
	  
	  // Handle multiple wraps
	  if(num >= 26){
	    numShift = num % 26
	  }
      
	  for( i <- 0 to input.length()-1){
	    // Get the character
	    var char : Char = input.charAt(i)
	    if((char.toInt + numShift) <= 'Z'.toInt){
	      output = output.concat((char.toInt + numShift).toChar.toString)
	    }
	    else{
	      output = output.concat(('A'.toInt + (((char.toInt + numShift) -1) - 'Z'.toInt)).toChar.toString)
	    }
      } 
      println(output)
	}
  }
