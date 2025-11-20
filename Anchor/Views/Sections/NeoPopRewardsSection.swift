import SwiftUI

struct NeoPopRewardsSection: View {
    @ObservedObject var viewModel: NeoPopRewardsSectionViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            SectionTitle(viewModel: viewModel.sectionTitle)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(viewModel.rewards) { reward in
                        NeoPopRewardCard(viewModel: reward)
                    }
                }
                .padding(.vertical, 2)
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
        }
    }
}
