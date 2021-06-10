//function that doesn't have name of its own and captures any values from its environment
//with closures we can put a fonction's code in a variable
//normal function
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
//closure
let comp : (String, String) -> Bool = { s1,s2 in
  return s1 > s2
}
//simplified closure : implicit returns from single expression closures
//let closCom : { s1, s2 in s1 > s2 }

///inferring type from context
//let compare : (a:Int,b:Int) -> Bool = {}
//pourquoi elles sont souvent utilisé dans les url sessions
//tous ce que une fonction peut faire, une closure le fait aussi
//le contraire non

// MARK: - presentation Ala
//passing closure inside a function like completion handler
func calcul(_ a: Int, b: Int, closure: (Int)->()) {
    let sum = a + b
    closure(sum)
}

calcul(10, b: 5, closure: {value in print(value)} )

// MARK: - Closures vs func
//https://medium.com/flawless-app-stories/closure-vs-function-vs-protocol-in-swift-94d0ecd03406#:~:text=is%20the%20output-,Difference%20between%20Function%20and%20Closure,closure%20has%20in%20the%20keyword.
//function
func addfunction(numbers:[Int]) -> Int {
    var number = 0
    for num in numbers {
        number = number + num
    }
    return number
}
//closure
let toc = {(numbers : [Int]) -> Int in
    var number = 0
    for num in numbers {
        number = number + num
    }
    return number
}
print(toc([1,9,7,6,100]))


let addednumber = addfunction(numbers : [2,8,9,60])
print(addednumber)
///Closures can capture and store references to any constants or variables from the context in which they are defined. We can say that closure is also a type of function.

let simpleClosure = {
    print("heyyy")
}
simpleClosure()

let simpleClosurewithParamNoReturnType : (String) -> () = {name in print(name)}
simpleClosurewithParamNoReturnType("kahina")
let simpleClosurewithParam : (String) -> (String) = {name in
    let welcome = name + " ho"
    return welcome
}
let ko = simpleClosurewithParam("kahina")
print(ko)
// MARK: - Closures Are Reference Types

// MARK: - Capturing values
//https://www.hackingwithswift.com/sixty/6/11/capturing-values
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel()

result("London")
result("London")
result("London")
result("London")
result("Algeria")



