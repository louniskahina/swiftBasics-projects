
func testPrecondition(willRun: Bool) {
    precondition(willRun)
    print ("The function /(#function) completed")
}
testPrecondition(willRun: true) // The function testPrecondition(willRun:) completed
testPrecondition(willRun: false)
