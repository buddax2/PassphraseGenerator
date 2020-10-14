import XCTest
@testable import PassphraseGenerator

final class PassphraseGeneratorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PassphraseGenerator().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
