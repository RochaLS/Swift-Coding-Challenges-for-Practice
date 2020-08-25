import UIKit



func swapNumbers( first: inout Int, second: inout Int) {
    swap(&first, &second)
}

//Tests

var a = 13
var b = 8

print(a, b)

swapNumbers(first: &a, second: &b)

print(a, b)

assert(a == 8 && b == 13, "Challenge 19 Failed")

// Solution using tuples:

//(a, b) = (b, a)
