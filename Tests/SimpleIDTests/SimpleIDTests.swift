import XCTest
@testable import SimpleID

final class SimpleIDTests: XCTestCase {
    func testCreate() {
        XCTAssertEqual(SimpleID().create(.mixedCharacters),"we")
    }
}
