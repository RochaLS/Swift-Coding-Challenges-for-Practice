import UIKit

// Check if both inputs are positive
// Loop based on the power
// Use a counter to track when the loop should stop
// Store result for the next iteration

func myPow(num: Int, power: Int) -> Int? {
    
    guard num >= 0 && power >= 0 else {
        return nil
    }
    
    var result: Int = num
    var counter = 1
    
    while counter != power {
        result *= num
        counter += 1
    }
    
    return result
}


// Tests:

assert(Double(myPow(num: 4, power: 3)!) == pow(4, 3), "Challenge 18 Failed")
assert(Double(myPow(num: 2, power: 8)!) == pow(2, 8), "Challenge 18 Failed")
