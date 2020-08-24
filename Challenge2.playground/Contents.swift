import UIKit

// Get input than lowercase it
// Reverse the lowercased input creating a array
// Loop through the array and append each character to the empty string variable, this will form the reversed word
// Compare with the original

func isPalindrome(input: String) -> Bool {
    let originalWord = input.lowercased()
    let characters: [Character] = originalWord.reversed()
    var reversedWord = ""
    
    for char in characters {
        reversedWord.append(char)
    }
    
    return reversedWord == originalWord
}

// Answer above is correct, but here is a cleaner answer, we can actually transform the reversed collection in a string directly    :

func challenge2b(input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}

assert(isPalindrome(input: "rotator") ==  true, "Challenge 2 Failed")
assert(isPalindrome(input: "Rats live on no evil star") == true, "Challenge 2 Failed")
assert(isPalindrome(input: "Never odd or even") == false, "Challenge 2 Failed")
assert(isPalindrome(input: "Hello, world") == false, "Challenge 2 Failed")
