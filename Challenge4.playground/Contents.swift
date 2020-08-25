import UIKit

// The range method checks if the position of a string inside another string, and it returns nil if it can't find it so it's very useful for this challenge 

extension String {
    func fuzzyContains(_ element: String) -> Bool {
        return self.range(of: element, options: .caseInsensitive) != nil
    }
}

let str = "Hello World"
str.fuzzyContains("World")


assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge 4 Failed")
