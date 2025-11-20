import SwiftUI
import Combine

final class NeoPopTagViewModel: ObservableObject, Identifiable {
    let id = UUID()
    @Published var title: String
    @Published var icon: String

    init(title: String, icon: String) {
        self.title = title
        self.icon = icon
    }
}
