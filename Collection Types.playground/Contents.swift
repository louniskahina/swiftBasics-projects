//array
//lsut
//collection
//Mutability of Collections
var tab = [Int](arrayLiteral: 98,0,7)
tab = [88]
var someInts = [Int]()
someInts.append(9)
someInts = []
print("someInts is of type [Int] with \(someInts.count) items.")
var threeDoubles = Array(repeating: 0, count: 3)
var anothertab = Array(repeating: 89, count: 8)
var addtab = threeDoubles + anothertab
//var shoppingList : [String] = ["eggs", "milk"]
//you don’t have to write the type of the array if you’re initializing it with an array literal containing values of the same type

var shoppingList = ["eggs", 8] as [Any]
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList
shoppingList[2...4] = ["", 5, 8, 9]
shoppingList
shoppingList.insert("Maple Syrup", at: 0)
let mapleSyrup = shoppingList.remove(at: 0)
shoppingList
let apples = shoppingList.removeLast()
//Sets
//A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("a")
print("letters is of type Set<Character> with \(letters.count) items.")
letters = []
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var FavoriteGenres: Set = ["Rock", "Classical", "Hip hop"]





var namesOfIntegers = [Int: String]()

var tab1 : [Int]
tab1 = [3,4,5]
tab1.append(6)
tab1.remove(at: 0)
tab1.remove(at: (tab1.count)/2)
tab1.contains(3)
//tab1.contains(where: <#T##(Int) throws -> Bool#>)
let element = 4
var count = 0
for i in tab1 {
    if i == element{
         count += 1 }
}
count
for x in 0...tab1.count - 1 {
    if tab1[x] == element {
        count += 1
    }
    
    
}



