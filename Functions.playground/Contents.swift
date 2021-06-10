
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}



func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}



printAndCount(string: "hello, world")
// prints "hello, world" and returns a value of 12
printWithoutCounting(string: "hello, world")
// prints "hello, world" but doesn't return a value

//multiple return value

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
// Prints "min is -6 and max is 109"


//optional tuple
func minMax2(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax2(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}


func greeting(person: String) -> String {
    "Hello, " + person + "!"
    //print( "Hello, " + person + "!")
}

func greetingWithDefaultParam(person: String = "kahina") -> String {
    "hello " + person
}
print(greetingWithDefaultParam())

var greet : (String) -> (String) = greetingWithDefaultParam(person:)
print(greet("lounis"))


func greetor(gr: (String)->(String)) {
    print (gr("hey"))
    
}
greetor(gr: greet)
///-----------------------------------------------------NESTED FUNCTION---------------------------
func colle(b: Bool) -> (String, String) -> String {
    
    func s1s2(s1: String, s2: String) -> String {
       return "\(s1)"+"\(s2)"
    }
    
    func s2s1(s1: String, s2: String) -> String  {
       return "\(s2)"+"\(s1)"
    }
    return b ? s1s2 : s2s1
    
    
}

let colly = colle(b: false)
print(colly("ka","hi"))
///------------------------------------------------------------------------
//var col : (String, String, Bool)->(String) = colle(s1: "ka", s2: "hi", b: true)

print(greeting(person: "Dave"))

// for : for specifying argument labels
func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))

//Omitting Argument Labels
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    
}
someFunction(1, secondParameterName: 2)

//variadic parameters
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)


//In-Out Parameters

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
//variable
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"


func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
//Set this new variable to refer to the function called addTwoInts.”
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")


func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)





func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")
