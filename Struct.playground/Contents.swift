struct Town {
    let name : String
    var citizens : [String]
    var resources : [String:Int]
    //methode
    func fortify(){
        print("defenses increased")
    }
    //initialiser
    init(townName : String, people : [String], stats : [String : Int]) {
        name = townName
        citizens = people
        resources = stats
    }
    
    
}

/*
var myTown = Town()

myTown.citizens
myTown.resources["grain"]
myTown.citizens.append("encoremoi")
myTown.citizens.count
myTown.fortify()*/



var anotherTown = Town(townName: "kahina", people: ["grrr"], stats: ["coconut" : 100])


class NoteC {
    var title: String
    var descrip: String
    
}

struct NoteS {
    var title: String
    var descrip: String
    
}

var n = NoteS(title: <#String#>, descrip: <#String#>)
var n2 = n
var c = NoteC()
var c2 = c


