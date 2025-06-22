import XCTest
@testable import Stroll

final class ChatViewModelTests: XCTestCase {
    var viewModel: ChatViewModel!

    override func setUp() {
        viewModel = ChatViewModel()
    }

    func testChatCount() {
        XCTAssertEqual(viewModel.chats.count, 6)
    }

    func testFirstChatName() {
        XCTAssertEqual(viewModel.chats.first?.name, "Amanda")
    }

    func testUnreadCountExistence() {
        let unreadChats = viewModel.chats.filter { $0.unreadCount > 0 }
        XCTAssertFalse(unreadChats.isEmpty)
    }

    func testYourMoveChats() {
        let yourMove = viewModel.chats.filter { $0.isYourMove }
        XCTAssertGreaterThan(yourMove.count, 0)
    }
}
