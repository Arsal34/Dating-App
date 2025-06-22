import SwiftUI

@main
struct DatingAppUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabViewContainer()
                .preferredColorScheme(.dark) 
        }
    }
}
