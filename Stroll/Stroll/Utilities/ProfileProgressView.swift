import SwiftUI

struct ProfileProgressView: View {
    let imageName: ImageResource
    let progress: CGFloat
    let score: Int

    var body: some View {
        VStack(spacing: -8) {
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.3), lineWidth: 6)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        AngularGradient(
                            gradient: Gradient(colors: [
                                Color(red: 76/255, green: 141/255, blue: 37/255),
                                Color(red: 54/255, green: 99/255, blue: 26/255, opacity: 0),
                                Color(red: 54/255, green: 99/255, blue: 26/255)
                            ]),
                            center: .center,
                            startAngle: .degrees(180),
                            endAngle: .degrees(540)
                        ),
                        style: StrokeStyle(lineWidth: 6, lineCap: .round)
                    )
                    .rotationEffect(.degrees(-180))
                
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .padding(6) 
            }
            .frame(width: 45, height: 45)

            Text("\(score)")
                .font(.system(size: 10, weight: .bold))
                .foregroundColor(.white)
                .padding(.vertical, 6)
                .padding(.horizontal, 20)
                .background(Color(red: 19/255, green: 22/255, blue: 31/255))
                .clipShape(Capsule())
        }
    }
}
