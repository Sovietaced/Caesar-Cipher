object EncryptFunctional {
    def main(args: Array[String]) {
      println("Enter a string")
      var str: String = Console.readLine
      println("Enter an integer")
      var num: Int = Console.readInt
      encrypt(str, num)
    }
    
    def encrypt(str: String, num: Int) = {
	  var input : String = str.toUpperCase()
	  var numShift :Int = num % 26
	  input.map(x => shift(x, numShift))
	}
    
    def shift(c: Char, num: Int) = {
      if(c.toInt + num <= 90){
        print((c.toInt + num).toChar);
      } else {
        var overflow :Int = 64 + (c.toInt + num - 90)
        print(overflow.toChar)
      }
    }
  }
