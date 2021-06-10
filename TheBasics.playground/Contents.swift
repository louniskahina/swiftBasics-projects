import UIKit
//https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
//Swift basics
///Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
var x = 0.0, y = 0.0, z = 0.0

///Type Annotations
var welcomeMessage: String
var red, green, blue: Double

///Naming Constants and Variables
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

///Printing Constants and Variables
///Comments
///Semicolons
///Integer Bounds
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
let minV = Int32.min
let maxV = Int32.max
///Int
///UInt
///Floating-Point Numbers
///Type Safety and Type Inference
let pi = 3.14159
///Numeric Literals
///Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

///Booleans
/*let i = 1
if i { //if i == 1}*/

let a : Bool
a = true

///Tuples
let http404Error = (404, "Not Found", "hey")
let (statusCode, statusMessage, salutation) = http404Error
print("The status code is \(salutation)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"
print("The status code is \(http404Error.0)")
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")

///Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
// we can’t use nil with non-optional constants and variables
var surveyAnswer: String?
// surveyAnswer is automatically set to nil

///If Statements and Forced Unwrapping
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

///Optional Binding
///to extract that value into a constant or variable, as part of a single action
/*  It has already been initialized with the value contained within the optional, and so you don’t use the ! */
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
///Implicitly Unwrapped Optionals
/*we can see an implicitly unwrapped optional as giving permission for the optional to be force-unwrapped if needed*/
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

let optionalString = assumedString
// The type of optionalString is "String?" and assumedString isn't force-unwrapped.

if assumedString != nil {
    print(assumedString!)
}
/* Don’t use an implicitly unwrapped optional when there’s a possibility of a variable becoming nil at a later point */
if let definiteString = assumedString {
    print(definiteString)
}


///Error Handling
/* A function indicates that it can throw an error by including the throws keyword in its declaration */
func canThrowAnError() throws {
    // this function may or may not throw an error
}
do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}


///Assertions and Preconditions

/*Assertions and preconditions are checks that happen at runtime. You use them to make sure an essential condition is satisfied before executing any further code*/

/*Assertions help you find mistakes and incorrect assumptions during development, and preconditions help you detect issues in production.*/

/* The difference between assertions and preconditions is in when they’re checked: Assertions are checked only in debug builds, but preconditions are checked in both debug and production builds. In production builds, the condition inside an assertion isn’t evaluated. This means you can use as many assertions as you want during your development process, without impacting performance in production. */


///Debugging with Assertions
let age = -43
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 isn't >= 0.
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
  //  assertionFailure("A person's age can't be less than zero.")
}

///Enforcing Preconditions
/* Use a precondition whenever a condition has the potential to be false, but must definitely be true for your code to continue execution */
// In the implementation of a subscript...
let index = 0
precondition(index > 0, "Index must be greater than zero.")
 
