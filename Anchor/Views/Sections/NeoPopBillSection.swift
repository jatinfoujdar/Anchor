import SwiftUI

struct NeoPopBillSection: View {
    @ObservedObject var viewModel: NeoPopBillSectionViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            SectionTitle(viewModel: viewModel.sectionTitle)

            VStack(spacing: 12) {
                ForEach(viewModel.bills) { bill in
                    NeoPopBillRow(viewModel: bill)
                }
            }
        }
    }
}
