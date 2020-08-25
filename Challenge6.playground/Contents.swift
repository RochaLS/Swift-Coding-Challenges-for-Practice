import UIKit

// 1. Lopp trough string
// 2. Store checked chars on the array
// 3. Compare checked chars with new chars on the loop
// 4. Append if char is not in the array
// 5. Convert array to a string using joined()

func removeDuplicateCharactersOf(_ string: String) -> String {
    var chars = [String]()
    var counter = 0
    
    for char in string {
        if !chars.contains(String(char)) || counter == 0 {
            chars.append(String(char))
            counter += 1
        }
    }
    
    return chars.joined(separator: "")
    
}



assert(removeDuplicateCharactersOf("wombat") == "wombat", "Challenge 6 failed")
assert(removeDuplicateCharactersOf("hello") == "helo", "Challenge 6 failed")
assert(removeDuplicateCharactersOf("Mississippi") == "Misp", "Challenge 6 failed")
