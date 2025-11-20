import SwiftUI

struct NeoPopButton: View {
    @ObservedObject var viewModel: NeoPopButtonViewModel

    var body: some View {
        Button(action: viewModel.action) {
            HStack(spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(viewModel.title.uppercased())
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                    if let subtitle = viewModel.subtitle {
                        Text(subtitle)
                            .font(.system(size: 12))
                            .foregroundStyle(.white.opacity(0.65))
                    }
                }
                Spacer()
                Image(systemName: "arrow.right")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 14)
            .background(
                RoundedRectangle(cornerRadius: 22)
                    .fill(viewModel.style.colors.background)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 22)
                    .stroke(viewModel.style.colors.border, lineWidth: 1)
            )
        }
        .buttonStyle(NeoPopPressStyle())
    }
}
