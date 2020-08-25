import UIKit

// 1. Create a counter variable starting on 0
// 2. Loop through the word and increase counter if word has the char
// 3. Return counter

func countOcurrencesOf(char: Character, in word: String) -> Int {
    var counter = 0
    
    for charToCompare in word {
        if charToCompare == char {
            counter += 1
        }
    }
    return counter
}

// Another nice solution would be removing the characters from the string and then comparing the number of chars remaining with the the original word and then subtracting it:

func challenge5d(input: String, count: String) -> Int {
    let modified = input.replacingOccurrences(of: count, with:
        "")
    return input.count - modified.count
}

// Tests


assert(countOcurrencesOf(char: "a", in: "The rain in Spain") == 2, "Challenge 5 Failed")
assert(countOcurrencesOf(char: "i", in: "Mississippi") == 4, "Challenge 5 Failed")
assert(countOcurrencesOf(char: "i", in: "Hacking with Swift") == 3, "Challenge 5 Failed")
