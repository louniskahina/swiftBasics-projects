import UIKit
///https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
///String Literals
///Multiline String Literals
let singleLineString = "These \"are\" the same."
let multilineString = """

These are the same "\n
    first line /
seconde line.\
final one

"""
print(multilineString)
let softWrappedQuotation = """
    The White Rabbit put on his spectacles.
        "Where shall I begin,
    please your Majesty?" he asked.
    "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop.
"""
print(softWrappedQuotation)
///
///Special Characters in String Literals
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
let newline = #"hahaha \#n hihihi"#
print(newline)

///Initializing an Empty String
var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}
///String Mutability
var variableString = "Horse" //we can't do this if it's a constant string
variableString += " and carriage"
 
///Strings are value types
///Working with Charaters
for character in "Dog!🐶" {
    print(character)
}
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

///Concatenating string and characters
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

///string interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(#"Write an interpolated string in Swift using \(multiplier)."#)
print(#"6 times 7 is \#(6 * 7)."#)
///Counting Characters
///Accessing and Modifying a String
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
[greeting.startIndex]
[greeting.endIndex]
// G
//greeting[greeting.endIndex]
greeting[greeting.index(before:greeting.endIndex)]
//[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}

for index in greeting.indices {
    print("\(greeting[index]) ")
}
//insert
var wwelcome = "hello"
wwelcome.insert("!", at: wwelcome.endIndex)
wwelcome.insert(contentsOf: " there", at: wwelcome.index(before: wwelcome.endIndex))
//remove
welcome.remove(at: welcome.index(before: welcome.endIndex))


let range = wwelcome.index(wwelcome.endIndex, offsetBy: -6)..<wwelcome.endIndex
wwelcome.removeSubrange(range)
///Substrings

var a = "42"
var b = a
b += "1"
a
 
//let chainechar = "345678908"
//let ind = chainechar.index(before: chainechar.endIndex)
//chainechar[ind]
//let index = greeting.index(greeting.startIndex, offsetBy: 7)
//greeting[index]


var chainechar = "123456789"
let ind = greeting.index(greeting.startIndex, offsetBy: chainechar.count - 1)
chainechar[ind]
//chainechar.insert("!", at: chainechar.startIndex)
chainechar.insert("!", at: ind)
//chainechar.index(chainechar.count)

