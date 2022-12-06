import XCTest

@testable import whitebproj

final class GlobalWhiteboardSlotTests:XCTestCase {
    func testInit() {
        XCTAssertEqual(GlobalWhiteboardSlot.messageOne.rawValue, 1)
        XCTAssertEqual(GlobalWhiteboardSlot.messageTwo.rawValue, 2)
        XCTAssertEqual(GlobalWhiteboardSlot.messageThree.rawValue, 3)
    }

}