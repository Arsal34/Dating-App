import SwiftUI

struct ChatRowWidget: View {
    let chat: ChatUser

    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                HStack {
                    Text(chat.name)
                        .font(.headline)
                    if chat.isYourMove {
                        Text("Your move")
                            .font(.caption)
                            .padding(4)
                            .background(AppColors.chipBackground)
                            .cornerRadius(8)
                    }
                }
                if chat.isVoiceNote {
                    HStack {
                        Image(systemName: "mic.fill")
                        Text(chat.voiceNoteDuration ?? "")
                    }
                    .font(.caption)
                } else {
                    Text(chat.message)
                        .font(.caption)
                        .lineLimit(1)
                        .foregroundColor(AppColors.textSecondary)
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(Utils.formatTime(chat.time))
                    .font(.caption)
                if chat.unreadCount > 0 {
                    Text("\(chat.unreadCount)")
                        .font(.caption2)
                        .padding(6)
                        .background(Circle().fill(AppColors.accentPurple))
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}
