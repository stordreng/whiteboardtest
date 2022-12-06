import XCTest
import Whiteboard
@testable import whitebproj

final class whitebprojTests: XCTestCase {

    var testWhiteboard: Whiteboard!

    override func setUp(){

        testWhiteboard = Whiteboard()

    }
    override func tearDown(){
        let resetMessageOne = TextMessageOne(message: "")
        let resetMessageTwo = TextMessageTwo(message: "")
        let resetMessageThree = TextMessageThree(message: "")
        testWhiteboard.post(message:resetMessageOne)
        testWhiteboard.post(message:resetMessageTwo)
        testWhiteboard.post(message:resetMessageThree)

    }

    func testMessage() throws {


        let firstTestMessage = TextMessageOne(message: "messageIndex.textOne")
        testWhiteboard.post(message: firstTestMessage)

        let secondTestMessage = TextMessageTwo(message: "messageIndex.textTwo")
        testWhiteboard.post(message: secondTestMessage)

        let thirdTestMessage = TextMessageThree(message: "messageIndex.textThree")
        testWhiteboard.post(message: thirdTestMessage)

        let receivedOne: TextMessageOne = testWhiteboard.getMessage()
        let receivedTwo: TextMessageTwo = testWhiteboard.getMessage()
        let receivedThree: TextMessageThree = testWhiteboard.getMessage()
        
        XCTAssertEqual(receivedOne, firstTestMessage)
        XCTAssertEqual(receivedTwo, secondTestMessage)
        XCTAssertEqual(receivedThree, thirdTestMessage)
    }
}
