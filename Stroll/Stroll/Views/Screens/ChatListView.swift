import SwiftUI

enum ChatTab {
    case chats
    case pending
}

struct ChatListView: View {
    @ObservedObject var viewModel = ChatViewModel()
    @State private var selectedTab: ChatTab = .chats

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                HeaderView(viewModel: viewModel)
                               
                CardsView(viewModel: viewModel)
                
                HStack(spacing: 15) {
                    Button(action: {
                        selectedTab = .chats
                    }) {
                        Text("Chats")
                            .font(.title2).bold()
                            .underline(selectedTab == .chats)
                            .foregroundColor(selectedTab == .chats ? .white : Color(red: 95/255, green: 95/255, blue: 96/255))

                    }
                    
                    Button(action: {
                        selectedTab = .pending
                    }) {
                        Text("Pending")
                            .font(.title2).bold()
                            .underline(selectedTab == .pending)
                            .foregroundColor(selectedTab == .pending ? .white : Color(red: 95/255, green: 95/255, blue: 96/255))
                    }
                }
                .padding([.top, .horizontal])
                .padding(.bottom, 3)

                
                Text("The ice is broken. Time to hit it off")
                    .font(.system(size: 12).italic())
                    .foregroundColor(.lightGray)
                    .padding(.horizontal)
                
                Group {
                    switch selectedTab {
                    case .chats:
                        ChatView(viewModel: viewModel)
                    case .pending:
                        Spacer()
                        Text("Pending Chats")
                        Spacer()
                    }
                }
            }
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.black.opacity(0.0), location: 0.0071),
                    .init(color: Color.black.opacity(0.65), location: 0.4545),
                    .init(color: Color.black.opacity(0.804), location: 0.6002),
                    .init(color: Color(red: 5/255, green: 5/255, blue: 5/255), location: 0.9929)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(height: 70)
        }
    }
}

#Preview {
    var vm = ChatViewModel()
    ChatListView(viewModel: vm)
}
