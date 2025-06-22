import SwiftUI

struct ChatUser: Identifiable {
    let id = UUID()
    let profileImage: ImageResource
    let name: String
    let age: Int
    let message: String
    let time: String
    let isVoiceNote: Bool
    let voiceNoteDuration: String?
    let isYourMove: Bool
    let unreadCount: Int
    let question: String
    let isNewChat: Bool
}
