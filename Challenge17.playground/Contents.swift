import UIKit

//Create a empty numbers array
// Loop trough the range given by the user
// Append these to the array
// Shuffle array

func randomNumber(min: Int, max: Int) -> Int {
    var numbers = [Int]()
    
    for n in min...max {
        numbers.append(n)
    }
    
    return numbers.shuffled()[0]
    
}

randomNumber(min: 1, max: 5)

// Simple solution using random():

func challenge17a(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

// Tests

assert(randomNumber(min: 1, max: 5) == 1 || randomNumber(min: 1, max: 5) == 2 || randomNumber(min: 1, max: 5) == 3 || randomNumber(min: 1, max: 5) == 4 || randomNumber(min: 1, max: 5) == 5, "Challenge 17 Failed")
assert(randomNumber(min: 8, max: 10) == 8 || randomNumber(min: 8, max: 10) == 9 || randomNumber(min: 8, max: 10) == 10, "Challenge 17 Failed")
assert(randomNumber(min: 12, max: 12) == 12, "Challenge 17 Failed")
assert(randomNumber(min: 12, max: 18) == 12 || randomNumber(min: 12, max: 18) == 12 || randomNumber(min: 12, max: 18) == 13 || randomNumber(min: 12, max: 18) == 15 || randomNumber(min: 12, max: 18) == 16 || randomNumber(min: 12, max: 18) == 17 || randomNumber(min: 12, max: 18) == 18, "Challenge 17 Failed")
