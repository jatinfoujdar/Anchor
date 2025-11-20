import SwiftUI
import Combine

final class NeoPopIconViewModel: ObservableObject, Identifiable {
    let id = UUID()
    @Published var systemName: String

    init(systemName: String) {
        self.systemName = systemName
    }
}
