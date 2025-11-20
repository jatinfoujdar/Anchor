import SwiftUI

struct NeoPopHeroSection: View {
    @ObservedObject var viewModel: NeoPopHeroSectionViewModel

    var body: some View {
        NeoPopCard(
            surface: .neoPrimarySurface,
            highlight: .neoHighlight,
            edge: .neoEdge,
            cornerRadius: 32,
            edgeDepth: 12,
            floating: true
        ) {
            VStack(alignment: .leading, spacing: 20) {
                HStack(alignment: .center) {
                    NeoPopTag(viewModel: viewModel.tag)
                    Spacer()
                    Text(viewModel.dueDescription)
                        .font(.system(size: 12))
                        .textCase(.uppercase)
                        .foregroundStyle(Color.white.opacity(0.6))
                }

                VStack(alignment: .leading, spacing: 6) {
                    Text(viewModel.totalDue)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                    Text(viewModel.cardName)
                        .font(.system(size: 15))
                        .textCase(.uppercase)
                        .foregroundStyle(.white.opacity(0.65))
                }

                HStack(spacing: 12) {
                    ForEach(viewModel.statCards) { stat in
                        NeoPopStatCard(viewModel: stat)
                    }
                }

                NeoPopButton(viewModel: viewModel.primaryButton)
            }
        }
    }
}
