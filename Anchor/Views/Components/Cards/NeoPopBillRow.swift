import SwiftUI

struct NeoPopBillRow: View {
    @ObservedObject var viewModel: NeoPopBillItemViewModel

    var body: some View {
        HStack(spacing: 14) {
            RoundedRectangle(cornerRadius: 16)
                .fill(viewModel.accent)
                .frame(width: 48, height: 48)
                .overlay(
                    Image(systemName: viewModel.icon)
                        .font(.system(size: 18))
                        .foregroundStyle(.white)
                )

            VStack(alignment: .leading, spacing: 3) {
                Text(viewModel.title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
                Text(viewModel.status.uppercased())
                    .font(.system(size: 11))
                    .foregroundStyle(.white.opacity(0.55))
            }

            Spacer()

            Text(viewModel.due)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 14)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.white.opacity(0.04))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.white.opacity(0.1), lineWidth: 1)
        )
    }
}
