import SwiftUI
import Combine

final class NeoPopBillSectionViewModel: ObservableObject {
    @Published var sectionTitle: SectionTitleViewModel
    @Published var bills: [NeoPopBillItemViewModel]

    init(sectionTitle: SectionTitleViewModel, bills: [NeoPopBillItemViewModel]) {
        self.sectionTitle = sectionTitle
        self.bills = bills
    }
}
