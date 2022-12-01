import XCTest
@testable import whitebproj

final class whitebprojTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(whitebproj().textOne, "Message Received")
        XCTAssertEqual(whitebproj().textTwo, "Roger That")
        XCTAssertEqual(whitebproj().textThree, "I am intact!")
    }
}
