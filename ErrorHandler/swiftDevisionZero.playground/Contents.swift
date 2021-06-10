
//let index = -8
//assert(index > 0, "Index must be greater than zero.")
//precondition(index > 0, "Index must be greater than zero.")


 //define my own error type
enum DivErrors : Error {
    case Invalid
}



func devide(num1 : Int, num2: Int) throws -> Int{
    if num2 == 0 {throw DivErrors.Invalid}
    return num1 / num2
}



do {
    try devide( num1: 5 , num2: 0)
    print("it's ok")}
catch
{
   print("error !! you are not allowed to divide by zero")
}



