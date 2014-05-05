object SolveFunctional {
    def main(args: Array[String]) {
      println("Enter a string")
      var str: String = Console.readLine
      println("Enter an integer")
      var num: Int = Console.readInt
      solve(str, num)
    }
    
    def solve(str: String, num: Int):Unit = {
      println("Caesar " + num + ": " + encrypt(str, num))
      if(num > 0){
        solve(str, num-1)
      }
    }
    
    def encrypt(str: String, num: Int) = {
	  var input : String = str.toUpperCase()
	  var numShift :Int = num % 26
	  input.map(x => shift(x, numShift))
	}
    
    def shift(c: Char, num: Int):Char = {
      if(c.toInt + num <= 90){
        return (c.toInt + num).toChar
      } else {
        var overflow :Int = 64 + (c.toInt + num - 90)
        return overflow.toChar
      }
    }
  }
