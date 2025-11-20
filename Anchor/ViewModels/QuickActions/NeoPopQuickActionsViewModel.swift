import SwiftUI
import Combine

final class NeoPopQuickActionsViewModel: ObservableObject {
    @Published var sectionTitle: SectionTitleViewModel
    @Published var actions: [NeoPopButtonViewModel]

    init(sectionTitle: SectionTitleViewModel, actions: [NeoPopButtonViewModel]) {
        self.sectionTitle = sectionTitle
        self.actions = actions
    }
}
