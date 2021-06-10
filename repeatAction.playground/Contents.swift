import Foundation
var timer: Timer?
func callMe() {
    func doSomrThing(str: String) {
        print(str)
    }

    doSomrThing(str: "first time")

    timer = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: true, block: { (timer) in
        doSomrThing(str: "after 4 second")
    })
}

