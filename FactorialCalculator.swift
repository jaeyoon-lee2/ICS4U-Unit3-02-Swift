/*
This program gets some integer input,
calculates the intger using recursion and shows the factorial integer.
author  Jay Lee
version 1.0
since   2020-05-06
*/

enum InvalidInputError : Error {
  case invalidInput
}

// This function uses recursion to reverse the string.
func Factorial(someInteger: Int) -> Int {
  if (someInteger == 1 || someInteger == 0) {
    return 1
  } else {
    return someInteger * Factorial(someInteger : someInteger - 1)
  }
}

// Input
print("Enter the number to be factorial(!) (only positive integer): ", terminator:"")
do {
  guard let someInteger = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  if (someInteger >= 0) {
    // Output
    print("\(someInteger)! = \(Factorial(someInteger : someInteger))")
  } else {
    print("Only positive!")
  }
} catch {
  print("Invalid input.")
}
print("\nDone.")
