import SwiftUI

struct ChatView: View {
    let viewModel: ChatViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.chats) { chat in
                    HStack {
                        Image(chat.profileImage)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            
                            HStack {
                                Text(chat.name)
                                    .font(.system(size: 14).bold())
                                    .lineLimit(1)
                                if chat.isNewChat {
                                    HStack(spacing: 6) {
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 5, height: 5)
                                        
                                        Text("New chat")
                                            .foregroundColor(.white)
                                            .font(.system(size: 10, weight: .medium))
                                    }
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 8)
                                    .background(.newChatBg)
                                    .clipShape(Capsule())
                                } else if chat.isYourMove {
                                    HStack(spacing: 6) {
                                        Text("Your Move")
                                            .foregroundColor(.white)
                                            .font(.system(size: 10, weight: .medium))
                                    }
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 8)
                                    .background(.ltGray)
                                    .clipShape(Capsule())
                                }
                                
                            }
                            if chat.isVoiceNote {
                                HStack {
                                    Image(systemName: "mic.fill")
                                        .foregroundColor(.purpleC)
                                    WaveformEmojiView()
                                    Text(chat.voiceNoteDuration ?? "")
                                        .foregroundColor(.purpleC)
                                }
                                .font(.caption)
                            } else {
                                if chat.unreadCount > 0 {
                                    Text(chat.message)
                                        .font(.system(size: 14).bold())
                                        .lineLimit(1)
                                } else {
                                    Text(chat.message)
                                        .font(.system(size: 14))
                                        .lineLimit(1)
                                }
                            }
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text(chat.time)
                                .font(.caption)
                                .foregroundColor(.purpleC)
                            
                            if chat.unreadCount > 0 {
                                Text("\(chat.unreadCount)")
                                    .font(.caption2)
                                    .padding(6)
                                    .background(Circle().fill(Color.purple))
                            } else if chat.isNewChat {
                                Image(.star)
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                }
            }
        }
    }
}
