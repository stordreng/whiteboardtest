import XCTest

@testable import whitebproj

final class TextMessageThreeTests:XCTestCase {

    func testInit() {
        let test = TextMessageThree(message: "test3")
        XCTAssertEqual(test.textMessage, "test3")
    }

    func testStaticSlot(){
        XCTAssertEqual(TextMessageThree.whiteboardSlot, .messageThree)
    }
    
}