import SwiftUI
import Combine

final class NeoPopNavBarViewModel: ObservableObject {
    @Published var title: String
    @Published var subtitle: String
    @Published var icons: [NeoPopIconViewModel]

    init(title: String, subtitle: String, icons: [NeoPopIconViewModel]) {
        self.title = title
        self.subtitle = subtitle
        self.icons = icons
    }
}
