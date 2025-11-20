import SwiftUI
import Combine

final class NeoPopRewardCardViewModel: ObservableObject, Identifiable {
    let id = UUID()
    @Published var title: String
    @Published var caption: String
    @Published var tag: String
    @Published var ctaTitle: String
    @Published var ctaSubtitle: String
    @Published var ctaIcon: String
    @Published var ctaBackground: LinearGradient
    @Published var cardBackground: LinearGradient

    init(
        title: String,
        caption: String,
        tag: String,
        ctaTitle: String = "activate",
        ctaSubtitle: String = "instant redemption",
        ctaIcon: String = "arrow.right",
        ctaBackground: LinearGradient = LinearGradient(
            colors: [.neoSlate.opacity(0.8), .neoPrimarySurface.opacity(0.7)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ),
        cardBackground: LinearGradient = LinearGradient(
            colors: [.neoSecondarySurface, .neoPrimarySurface.opacity(0.85)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    ) {
        self.title = title
        self.caption = caption
        self.tag = tag
        self.ctaTitle = ctaTitle
        self.ctaSubtitle = ctaSubtitle
        self.ctaIcon = ctaIcon
        self.ctaBackground = ctaBackground
        self.cardBackground = cardBackground
    }
}
