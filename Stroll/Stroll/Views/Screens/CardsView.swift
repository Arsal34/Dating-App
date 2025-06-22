import SwiftUI

struct CardsView: View {
    let viewModel: ChatViewModel

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(viewModel.chats.prefix(3)) { chat in
                    ZStack {
                        Image(chat.profileImage)
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                            .blur(radius: 50)
                        
                        Image(.overlay)
                            .resizable()
                            .scaledToFit()
                            .opacity(0.4)
                            .ignoresSafeArea()
                        
                        
                        Text("Tap to answer")
                            .foregroundColor(.lightGray)
                            .font(.system(size: 10))
                            .offset(y: -15)
                        
                        VStack(alignment: .center, spacing: 4) {
                            Spacer()
                            Text("\(chat.name), \(chat.age)")
                                .foregroundColor(.white)
                                .font(.system(size: 15).bold())
                            Text(chat.question.isEmpty ? "What is your most favorite childhood memory?" : chat.message)
                                .font(.system(size: 10))
                                .foregroundColor(.lightPurple)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.horizontal, 15)
                        .padding(.bottom, 12)
                    }
                    .frame(width: 145, height: 205)
                    .cornerRadius(16)
                }
            }
            .padding(.horizontal)
        }
    }
}
