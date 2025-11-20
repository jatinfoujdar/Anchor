import SwiftUI
import Combine

final class NeoPopRewardsSectionViewModel: ObservableObject {
    @Published var sectionTitle: SectionTitleViewModel
    @Published var rewards: [NeoPopRewardCardViewModel]

    init(sectionTitle: SectionTitleViewModel, rewards: [NeoPopRewardCardViewModel]) {
        self.sectionTitle = sectionTitle
        self.rewards = rewards
    }
}
