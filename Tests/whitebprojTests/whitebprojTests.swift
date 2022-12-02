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
        let testMessage = TextMessageOne(message: messageIndex.textOne)
        testWhiteboard.post(message: testMessage)
        let receivedMessage: TextMessageOne = testWhiteboard.getMessage()
        
        XCTAssertEqual(receivedMessage, testMessage)
    }
}
