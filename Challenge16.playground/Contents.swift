import UIKit

// 1. Loop through 1 to 100
// 2. Check Conditions


func fizzBuzz() {
    for num in 1...100 {
        if num % 3 == 0 && num % 5 == 0 { // This needs to be the first condition because it's the most specifc one
            print("Fizz Buzz")
        } else if num % 3 == 0 {
            print("Fizz")
        } else if num % 5 == 0 {
            print("Buzz")
        } else {
            print("\(num)")
        }
    }
}

fizzBuzz()


