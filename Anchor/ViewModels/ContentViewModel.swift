import SwiftUI
import Combine

final class ContentViewModel: ObservableObject {
    @Published var navBar = NeoPopNavBarViewModel(
        title: "cred",
        subtitle: "neopop workspace",
        icons: [
            NeoPopIconViewModel(systemName: "bell.fill"),
            NeoPopIconViewModel(systemName: "line.3.horizontal.decrease.circle")
        ]
    )

    @Published var heroSection = NeoPopHeroSectionViewModel(
        tag: NeoPopTagViewModel(title: "total due", icon: "clock"),
        dueDescription: "in 3 days",
        totalDue: "₹ 1,24,532",
        cardName: "hdfc bank infinia",
        statCards: [
            NeoPopStatCardViewModel(title: "statement", value: "₹ 1,38,210", gradient: .neoPinkGradient),
            NeoPopStatCardViewModel(title: "coins", value: "22,430", gradient: .neoAquaGradient)
        ],
        primaryButton: NeoPopButtonViewModel(title: "pay now", subtitle: "get 2x cred coins", style: .primary)
    )

    @Published var billSection = NeoPopBillSectionViewModel(
        sectionTitle: SectionTitleViewModel(title: "smart reminders", actionTitle: "view all"),
        bills: [
            NeoPopBillItemViewModel(title: "amex platinum", due: "₹ 42,120", status: "autopay on", accent: .neoPinkGradient),
            NeoPopBillItemViewModel(title: "axis magnus", due: "₹ 16,980", status: "pay by 28 nov", accent: .neoAquaGradient),
            NeoPopBillItemViewModel(title: "rent via upi", due: "₹ 24,000", status: "scheduled", accent: .neoAmberGradient)
        ]
    )

    @Published var rewardsSection = NeoPopRewardsSectionViewModel(
        sectionTitle: SectionTitleViewModel(title: "rewards for you", actionTitle: "see more"),
        rewards: [
            NeoPopRewardCardViewModel(title: "book my show", caption: "₹250 off on weekend shows", tag: "exclusive"),
            NeoPopRewardCardViewModel(title: "flipkart luxury", caption: "flat 12% on luxury edit", tag: "limited"),
            NeoPopRewardCardViewModel(title: "cred pay day", caption: "6% assured cashback", tag: "featured")
        ]
    )

    @Published var quickActionsSection = NeoPopQuickActionsViewModel(
        sectionTitle: SectionTitleViewModel(title: "quick actions", actionTitle: "customise"),
        actions: [
            NeoPopButtonViewModel(title: "split a bill", subtitle: "invite members & settle instantly", style: .floating),
            NeoPopButtonViewModel(title: "rent via cred", subtitle: "1.5% cashback on every transfer", style: .secondary),
            NeoPopButtonViewModel(title: "convert to emi", subtitle: "0% processing, tenure up to 18m", style: .secondary)
        ]
    )
}
