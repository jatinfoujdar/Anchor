import SwiftUI

struct NeoPopStatCard: View {
    @ObservedObject var viewModel: NeoPopStatCardViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(viewModel.title.uppercased())
                .font(.system(size: 11, weight: .medium))
                .foregroundStyle(.white.opacity(0.65))
            Text(viewModel.value)
                .font(.system(size: 17, weight: .semibold, design: .rounded))
                .foregroundStyle(.white)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(viewModel.gradient.opacity(0.45))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.2), lineWidth: 0.8)
        )
    }
}
