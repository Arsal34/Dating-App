import SwiftUI

struct HeaderView: View {
    let viewModel: ChatViewModel

    var body: some View {
        VStack(alignment: .leading){
            HStack {
                VStack(alignment: .leading){
                    HStack {
                        Text("Your Turn")
                            .font(.title).bold()
                        
                        Text("\(viewModel.chats.filter { $0.isYourMove }.count)")
                            .padding(5)
                            .background(Circle().fill(Color.purple))
                            .foregroundColor(.black)
                    }
                    ZStack(alignment: .bottom) {
                        Text("Make your move, they are waiting 🎵")
                            .font(.system(size: 12).italic())
                            .foregroundColor(.lightGray)
                    }
                    
                    
                }
                Spacer()
                ProfileProgressView(imageName: .marie, progress: 0.9, score: 90)
            }
            .padding(.init(top: 20, leading: 17, bottom: 23, trailing: 17))
        }
    }
}
