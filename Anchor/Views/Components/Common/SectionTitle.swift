import SwiftUI

struct SectionTitle: View {
    @ObservedObject var viewModel: SectionTitleViewModel

    var body: some View {
        HStack(alignment: .center) {
            Text(viewModel.title.uppercased())
                .font(.system(size: 12, weight: .semibold))
                .foregroundStyle(.white.opacity(0.65))
            Spacer()
            Button(action: viewModel.action) {
                Text(viewModel.actionTitle.uppercased())
                    .font(.system(size: 11, weight: .medium))
                    .foregroundStyle(.white.opacity(0.5))
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}
