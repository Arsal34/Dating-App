import Foundation
import Combine

final class ChatViewModel: ObservableObject {
    @Published var chats: [ChatUser] = []

    init() {
        loadChats()
    }

    private func loadChats() {
        chats = [
            ChatUser(profileImage: .amanda, name: "Amanda", age: 22, message: "Lol I love house music too", time: "6:21 pm", isVoiceNote: false, voiceNoteDuration: nil, isYourMove: true, unreadCount: 0, question: "What is your most favorite childhood memory?", isNewChat: true),
            ChatUser(profileImage: .malte, name: "Malte", age: 31, message: "Looking forward to your reply!", time: "Yesterday", isVoiceNote: false, voiceNoteDuration: nil, isYourMove: true, unreadCount: 2, question: "What is the most important quality in friendships to you?", isNewChat: false),
            ChatUser(profileImage: .jessica, name: "Jessica", age: 24, message: "", time: "6:21 pm", isVoiceNote: true, voiceNoteDuration: "00:58", isYourMove: false, unreadCount: 0, question: "What is the most important quality in friendships to you?", isNewChat: false),
            ChatUser(profileImage: .sile, name: "Sila", age: 25, message: "You: I love the people there tbh, have you been?", time: "Wed", isVoiceNote: false, voiceNoteDuration: nil, isYourMove: false, unreadCount: 0, question: "What is the most important quality in friendships to you?", isNewChat: false),
            ChatUser(profileImage: .marie, name: "Marie", age: 27, message: "Hahaha that's interesting, it does seem like people here are startin...", time: "6:21 pm", isVoiceNote: false, voiceNoteDuration: nil, isYourMove: true, unreadCount: 4, question: "What is the most important quality in friendships to you?", isNewChat: false),
            ChatUser(profileImage: .jessica, name: "Jessica", age: 24, message: "", time: "6:21 pm", isVoiceNote: false, voiceNoteDuration: nil, isYourMove: true, unreadCount: 0, question: "What is the most important quality in friendships to you?", isNewChat: false)
        ]
    }
}
