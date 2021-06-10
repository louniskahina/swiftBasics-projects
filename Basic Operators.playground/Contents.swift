import UIKit
///https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html
///Assignment Operator
let (x, y) = (1, 2)
"hello, " + "world"

///Arithmetic Operators
///Remainder Operator == le reste de la division(modulo)
///Unary Minus Operator
///Unary Plus Operator
///Compound Assignment Operators
var a = 1
a += 2//a=a+1
///Comparison Operators
/*Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance.*/

(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "u") < (3, "b")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

///Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

///Nil-Coalescing Operator
let b = 12
var c : Int?
c != nil ? c! : b

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName

///Range Operators

///Closed Range Operator
for index in 1...5 {
    
}

///Half-Open Range Operator
let count = 5
for i in 0..<count {
    }

///One-Sided Ranges
let names = ["Anna", "Alex", "Brian", "Jack", "kahina"]
for name in names[2...] { // les deux premier non inclus
    print(name)
}
for name in names[...2] {
    print(name)
}
for name in names[..<2] {
    print(name)
}
///Logical Operators
///Logical NOT Operator
///Logical AND Operator
///Logical OR Operator
///Combining Logical Operators
///Explicit Parentheses
///
///
///





