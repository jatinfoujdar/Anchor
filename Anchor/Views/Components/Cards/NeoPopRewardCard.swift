import SwiftUI

struct NeoPopRewardCard: View {
    @ObservedObject var viewModel: NeoPopRewardCardViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(viewModel.tag.uppercased())
                .font(.system(size: 10, weight: .semibold))
                .foregroundStyle(.white.opacity(0.7))
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.white.opacity(0.08))
                .clipShape(Capsule())

            VStack(alignment: .leading, spacing: 8) {
                Text(viewModel.title)
                    .font(.system(size: 20, weight: .semibold))
                    .textCase(.uppercase)
                    .foregroundStyle(.white)
                Text(viewModel.caption)
                    .font(.system(size: 13))
                    .foregroundStyle(.white.opacity(0.6))
                    .lineLimit(2)
            }

            Spacer()

            HStack {
                VStack(alignment: .leading, spacing: 3) {
                    Text(viewModel.ctaTitle.uppercased())
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundStyle(.white)
                    Text(viewModel.ctaSubtitle)
                        .font(.system(size: 11))
                        .foregroundStyle(.white.opacity(0.65))
                }
                Spacer()
                Image(systemName: viewModel.ctaIcon)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.white)
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 18)
                    .fill(viewModel.ctaBackground)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .stroke(Color.white.opacity(0.15), lineWidth: 0.8)
            )
        }
        .padding(18)
        .frame(width: 220, height: 250)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(viewModel.cardBackground)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.white.opacity(0.1), lineWidth: 1)
        )
    }
}
