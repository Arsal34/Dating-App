import SwiftUI

struct TabViewContainer: View {
    var body: some View {
        TabView {
            ChatListView()
                .tabItem {
                    Image(.cards)
                }

            Text("Bonfire View")
                .tabItem {
                    Image(.bonfire)

                }

            ChatListView()
                .tabItem {
                    Image(.matches)

                }

            Text("Profile View")
                .tabItem {
                    Image(.profile)
                }
        }
    }
}

#Preview {
    TabViewContainer()
}
