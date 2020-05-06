import XCTest
@testable import Composed

final class ComposedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Composed().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
