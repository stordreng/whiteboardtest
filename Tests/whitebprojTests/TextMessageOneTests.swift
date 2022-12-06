import XCTest

@testable import whitebproj

final class TextMessageOneTests:XCTestCase {

    func testInit() {
        let test = TextMessageOne(message: "test")
        XCTAssertEqual(test.textMessage, "test")
    }

    func testStaticSlot(){
        XCTAssertEqual(TextMessageOne.whiteboardSlot, .messageOne)
    }
    
}
