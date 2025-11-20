import SwiftUI

struct NeoPopCard<Content: View>: View {
    var surface: Color
    var highlight: Color
    var edge: Color
    var cornerRadius: CGFloat = 32
    var edgeDepth: CGFloat = 12
    var floating: Bool = true
    @ViewBuilder var content: () -> Content

    var body: some View {
        ZStack(alignment: .topLeading) {
            
            // BACK EDGE
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(edge)
                .offset(x: edgeDepth, y: edgeDepth)

            // MAIN CARD
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(surface)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(highlight.opacity(0.8), lineWidth: 1)
                        .blur(radius: 0.3)
                        .blendMode(.screen)
                )
                .overlay(
                    LinearGradient(
                        colors: [.white.opacity(0.15), .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                )

            // 🚀 CONTENT SHOULD BE HERE, NOT IN OVERLAY
            content()
                .padding(20)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(.trailing, edgeDepth)
        .padding(.bottom, edgeDepth)
        .shadow(
            color: Color.white.opacity(floating ? 0.06 : 0.02),
            radius: floating ? 20 : 8,
            x: -edgeDepth / 2,
            y: -edgeDepth / 2
        )
        .shadow(
            color: Color.black.opacity(floating ? 0.5 : 0.3),
            radius: floating ? 30 : 15,
            x: edgeDepth,
            y: edgeDepth
        )
    }
}
