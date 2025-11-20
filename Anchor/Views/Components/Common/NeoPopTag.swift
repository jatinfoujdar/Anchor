import SwiftUI

struct NeoPopTag: View {
    @ObservedObject var viewModel: NeoPopTagViewModel

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: viewModel.icon)
                .font(.system(size: 11))
            Text(viewModel.title)
                .font(.system(size: 11, weight: .medium))
                .textCase(.uppercase)
        }
        .foregroundStyle(.white.opacity(0.75))
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(Color.white.opacity(0.08))
        .clipShape(Capsule())
        .overlay(
            Capsule().stroke(Color.white.opacity(0.18), lineWidth: 0.8)
        )
    }
}
