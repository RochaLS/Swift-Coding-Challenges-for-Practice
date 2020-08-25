import UIKit

// String are collections so sorting then comparing the the sorted array workds for this challenge

func sameChar(firstWord: String, secondWord: String) -> Bool  {
    return firstWord.sorted() == secondWord.sorted()
}

assert(sameChar(firstWord: "abca", secondWord: "abca") == true, "Challenge 3 Failed")
assert(sameChar(firstWord: "abc", secondWord: "cba") == true, "Challenge 3 Failed")
assert(sameChar(firstWord: " a1 b2 ", secondWord: " b1 a2 ") == true, "Challenge 3 Failed")
assert(sameChar(firstWord: "abc", secondWord: "abca") == false, "Challenge 3 Failed")
assert(sameChar(firstWord: "abc", secondWord: "Abc") == false, "Challenge 3 Failed")
assert(sameChar(firstWord: "abc", secondWord: "cbAa") == false, "Challenge 3 Failed")
assert(sameChar(firstWord: "abcc", secondWord: "abca") == false, "Challenge 3 Failed")
