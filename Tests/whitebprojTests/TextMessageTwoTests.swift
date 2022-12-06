import XCTest

@testable import whitebproj

final class TextMessageTwoTests:XCTestCase {

    func testInit() {
        let test = TextMessageTwo(message: "test")
        XCTAssertEqual(test.textMessage, "test")
    }

    func testStaticSlot(){
        XCTAssertEqual(TextMessageTwo.whiteboardSlot, .messageTwo)
    }
    
}