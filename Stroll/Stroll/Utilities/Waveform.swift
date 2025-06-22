import SwiftUI

struct WaveformEmojiView: View {
    let barHeights: [CGFloat] = [5, 10, 7, 12, 6,5, 8]

    var body: some View {
        HStack(spacing: 2) {
            ForEach(barHeights, id: \.self) { height in
                RoundedRectangle(cornerRadius: 2)
                    .fill(.purpleC)
                    .frame(width: 2, height: height)
            }
        }
    }
}
