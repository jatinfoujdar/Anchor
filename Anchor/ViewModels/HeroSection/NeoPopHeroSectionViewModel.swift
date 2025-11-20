import SwiftUI
import Combine

final class NeoPopHeroSectionViewModel: ObservableObject {
    @Published var tag: NeoPopTagViewModel
    @Published var dueDescription: String
    @Published var totalDue: String
    @Published var cardName: String
    @Published var statCards: [NeoPopStatCardViewModel]
    @Published var primaryButton: NeoPopButtonViewModel

    init(
        tag: NeoPopTagViewModel,
        dueDescription: String,
        totalDue: String,
        cardName: String,
        statCards: [NeoPopStatCardViewModel],
        primaryButton: NeoPopButtonViewModel
    ) {
        self.tag = tag
        self.dueDescription = dueDescription
        self.totalDue = totalDue
        self.cardName = cardName
        self.statCards = statCards
        self.primaryButton = primaryButton
    }
}
