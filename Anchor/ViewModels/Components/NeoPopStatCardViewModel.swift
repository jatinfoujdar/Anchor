import SwiftUI
import Combine

final class NeoPopStatCardViewModel: ObservableObject, Identifiable {
    let id = UUID()
    @Published var title: String
    @Published var value: String
    @Published var gradient: LinearGradient

    init(title: String, value: String, gradient: LinearGradient) {
        self.title = title
        self.value = value
        self.gradient = gradient
    }
}
