import SwiftUI

extension LinearGradient {
    static let neoPinkGradient = LinearGradient(
        colors: [.neoPink.opacity(0.85), .neoHighlight.opacity(0.65)],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )

    static let neoAquaGradient = LinearGradient(
        colors: [.neoAqua.opacity(0.85), .white.opacity(0.55)],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )

    static let neoAmberGradient = LinearGradient(
        colors: [.neoAmber.opacity(0.9), .neoPink.opacity(0.55)],
        startPoint: .top,
        endPoint: .bottomTrailing
    )

    static let neoSlateGradient = LinearGradient(
        colors: [.neoSlate.opacity(0.85), .neoPrimarySurface.opacity(0.75)],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
}
