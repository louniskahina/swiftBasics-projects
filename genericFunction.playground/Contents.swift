let intArray = [2,6,8,99,0,4,222]
let charArray = ["a","v","f","g","b","d"]

func findLetterIndex(_ array: [String], letter: String) ->Int? {
    for (index, element) in array.enumerated() {
        if element == letter {
            return index
        }
    }
    
    return nil
}

findLetterIndex(charArray, letter: "g")

func linearSearch<T: Comparable>(array:[T], key: T) -> Int? {
    for (index, element) in array.enumerated() {
        if element == key {
            return index
        }
    }
    
    return nil
    
}

linearSearch(array: intArray, key: 4)
linearSearch(array: charArray, key: "g")
