import UIKit

// Convert the array to a single string
// Store the string length
// Remove the digits that are the same as the user input
// Subtract the original string length with the modiefed one

extension Collection where Iterator.Element == Int {
    
    func countOcurrencesOf(_ digit: String) -> Int {
        var strings = [String]()
        for item in self {
            strings.append(String(item))
        }
        
        let fullString = strings.joined(separator: "")
        let originalLength = fullString.count
       
        
        return originalLength - fullString.replacingOccurrences(of: digit, with: "").count
        
    }
}

//Tests

assert([5, 15, 55, 515].countOcurrencesOf("5") == 6, "Challenge 37 Failed")
assert([5, 15, 55, 515].countOcurrencesOf("1") == 2, "Challenge 37 Failed")
assert([55555].countOcurrencesOf("5") == 5, "Challenge 37 Failed")
assert([55555].countOcurrencesOf("1") == 0, "Challenge 37 Failed")
