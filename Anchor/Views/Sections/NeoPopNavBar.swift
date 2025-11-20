import SwiftUI

struct NeoPopNavBar: View {
    @ObservedObject var viewModel: NeoPopNavBarViewModel

    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 4) {
                Text(viewModel.title)
                    .font(.system(size: 28, weight: .heavy, design: .rounded))
                    .kerning(4)
                    .foregroundStyle(Color.white)
                Text(viewModel.subtitle)
                    .font(.system(size: 11))
                    .textCase(.uppercase)
                    .foregroundStyle(.white.opacity(0.5))
            }
            Spacer()
            HStack(spacing: 12) {
                ForEach(viewModel.icons) { icon in
                    NeoPopIcon(viewModel: icon)
                }
            }
        }
        .padding(.bottom, 8)
    }
}
