import XCTest
@testable import Stroll

final class UtilsTests: XCTestCase {

    func testFormatTimeReturnsSameString() {
        let input = "6:21 pm"
        XCTAssertEqual(Utils.formatTime(input), "6:21 pm")
    }

    func testIsTodayReturnsTrueForTimeFormat() {
        XCTAssertTrue(Utils.isToday("6:21 pm"))
    }

    func testIsTodayReturnsFalseForDate() {
        XCTAssertFalse(Utils.isToday("Wed"))
    }
}
