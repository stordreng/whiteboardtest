import XCTest
import Whiteboard
@testable import whitebproj

final class whitebprojTests: XCTestCase {
    func messageInitialisationTest() throws {

        XCTAssertEqual(whitebproj().textOne, "Message Received")
        XCTAssertEqual(whitebproj().textTwo, "Roger That")
        XCTAssertEqual(whitebproj().textThree, "I am intact!")
    }

    func messageStructTest() throws {
        // how to write test for initialisation failure? eg, non enum passed. - is this redundant?
        let testWhiteboard = Whiteboard()
        let messageIndex = whitebproj()

        let firstTestMessage = TextMessageOne(message: messageIndex.textOne)
        testWhiteboard.post(message: firstTestMessage)

        let secondTestMessage = TextMessageTwo(message: messageIndex.textTwo)
        testWhiteboard.post(message: secondTestMessage)

        let thirdTestMessage = TextMessageThree(message: messageIndex.textThree)
        testWhiteboard.post(message: thirdTestMessage)

        let receivedOne: TextMessageOne = testWhiteboard.getMessage()
        let receivedTwo: TextMessageTwo = testWhiteboard.getMessage()
        let receivedThree: TextMessageThree = testWhiteboard.getMessage()
        
        XCTAssertEqual(receivedOne, firstTestMessage)
        XCTAssertEqual(receivedTwo, secondTestMessage)
        XCTAssertEqual(receivedThree, thirdTestMessage)
    }
}
