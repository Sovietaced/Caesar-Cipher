object Solve {
    def main(args: Array[String]) {
      println("Enter a string")
      var str: String = Console.readLine
      println("Enter an integer")
      var num: Int = Console.readInt
      
      for( i <- 0 to num){
        print("Caesar " + (num - i) + ": ")
        shift(str, i)
      }
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
	    if((char.toInt - numShift) >= 'A'.toInt){
	      output = output.concat((char.toInt - numShift).toChar.toString)
	    }
	    else{
	      output = output.concat(('Z'.toInt - ((numShift - 1) - (char.toInt - 'A'.toInt))).toChar.toString)
	    }
      } 
      println(output)
	}
  }
