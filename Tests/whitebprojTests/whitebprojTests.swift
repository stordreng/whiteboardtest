import XCTest
@testable import whitebproj

final class whitebprojTests: XCTestCase {
    func messageInitialisationTest() throws {

        XCTAssertEqual(whitebproj().textOne, "Message Received")
        XCTAssertEqual(whitebproj().textTwo, "Roger That")
        XCTAssertEqual(whitebproj().textThree, "I am intact!")
    }

    func messageStructTest() throws {
        // how to write test for initialisation failure? eg, non enum passed. 
    }
}
