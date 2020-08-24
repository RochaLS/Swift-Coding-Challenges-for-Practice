import UIKit
import Foundation


func challenge1(input: String) -> Bool {
    var previousLetter = input.first
    var counter = 0
    
    // Return false if it's repeated
    for letter in input {
        if letter == previousLetter && counter != 0 { // Checking the counter to see if it's the fist loop iteration
            counter += 1
            return false
        }
        previousLetter = letter
        counter += 1
    }
    return true
}

// This answer above works, but a better approach would be using a set, because a set can't have any duplicates, so we would just need to compare the length of set with the length of the input:

func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}


assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true,
       "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")


