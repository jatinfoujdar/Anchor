import SwiftUI

struct NeoPopQuickActions: View {
    @ObservedObject var viewModel: NeoPopQuickActionsViewModel

    var body: some View {
        NeoPopCard(
            surface: .neoSecondarySurface,
            highlight: .neoHighlight.opacity(0.5),
            edge: .neoEdge.opacity(0.7),
            cornerRadius: 28,
            edgeDepth: 10,
            floating: false
        ) {
            VStack(alignment: .leading, spacing: 16) {
                SectionTitle(viewModel: viewModel.sectionTitle)

                VStack(spacing: 12) {
                    ForEach(viewModel.actions) { action in
                        NeoPopButton(viewModel: action)
                    }
                }
            }
        }
    }
}
