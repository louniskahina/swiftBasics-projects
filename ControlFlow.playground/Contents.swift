/*let base = 3
let power = 10
var answer = 1
for index in 1...power {
    answer *= base
    print("\(base) to the power of \(index) is \(answer)")
}
print("\(base) to the power of \(power) is \(answer)")
/*The underscore character (_) used in place of a loop variable causes the individual values to be ignored and doesn’t provide access to the current value during each iteration of the loop.
 
*/
let minuteInterval = 5
for tickMark in stride(from: 0, to: 80, by: minuteInterval) {
  print(tickMark)
}
var board = [Int](repeating: 0, count:  8)


let somePoint = (1, 0)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

///Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}



///guard

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])
//https://learnappmaking.com/swift-guard-let-statement-how-to/
let number = 8
let tic = 4
guard tic < number else {
   fatalError("!")
}
print("yes")*/

//For in loops
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("hey, \(name)!")
}


for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//While Loops
//A while loop performs a set of statements until a condition becomes false. These kinds of loops are best used when the number of iterations isn’t known before the first iteration begins. Swift provides two kinds of while loops:

//while evaluates its condition at the start of each pass through the loop.
//repeat-while evaluates its condition at the end of each pass through the loop.
var i = 1
while i <= 3 {
    print("\(i) times 6 is \(i * 6)")
    i += 1
}

//repeat While
var ind = 1
repeat {
    print("\(ind) times 7 is \(ind * 7)")
    ind += 1
} while ind < 0

//fallthrough

let integerToDescribe = 99
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19, 99:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

//continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        break //continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)
// Prints "grtmndsthnklk"


