
//variable globale
//déclarer en static
//acceder sans instation
//pour la overrid -> class
//on peut pas faire l heritage
//static pour les attributs



class FixedLengthRange {
    var firstValue: Int = 0
    let length: Int = 0
    
    init() {
    }
}

let rangeOfThreeItems = FixedLengthRange()

let rangeOfThreeItems1 = FixedLengthRange()

rangeOfThreeItems.firstValue = 1

rangeOfThreeItems1.firstValue = 1







struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// the range represents integer values 0, 1, and 2
rangeOfThreeItems.firstValue = 6
//rangeOfThreeItems.length = 8


let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//rangeOfFourItems.firstValue = 6

//lazy properties
class DataImporter {
    var filename = "kahina.txt"
}
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("new data")
manager.data.append("more data")
//

//https://www.youtube.com/watch?v=xKoua1Mi6qE
struct Calculator {
static func calculateGamesPlayed() -> Int {
    var games: [Int] = []
    for i in 1...4_000 {games.append(i)}
    return games.last!
}
    
}
struct Player {
    var name: String
    var team: String
    var position: String
    lazy var introduction = {
        return "now entering the game : \(name), \(position) for the \(team)"
    }()
    //var gamesPlayed = {return Calculator.calculateGamesPlayed()}()
    lazy var gamesPlayed = {return Calculator.calculateGamesPlayed()}()
}
var jordan = Player(name: "ka", team: "hi", position: "na")
print(jordan.introduction)


//computed properties
//dont store a value, they provide getter and an optional setter
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"

struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

//Property observers
//willSet is called just before the value is stored.
//didSet is called immediately after the new value is stored.

class StepCounter {
    var totalSteps: Int = 8 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps


// MARK: - methodes

//Note that you can’t call a mutating method on a constant of structure type, because its properties can’t be changed, even if they’re variable properties, as described in Stored Properties of Constant Structure Instances:

struct Ppoint {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Ppoint(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")
//let fixedPoint = Ppoint(x: 3.0, y: 3.0)
//fixedPoint.moveBy(x: 2.0, y: 3.0)

struct Pointself {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Pointself(x: x + deltaX, y: y + deltaY)
    }
}
var pppoint = Pointself(x: 1.0, y: 1.0)
pppoint.moveBy(x: 7, y: 60)
print(pppoint.x)
print(pppoint.y)




 



