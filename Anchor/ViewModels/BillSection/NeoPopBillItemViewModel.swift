import SwiftUI
import Combine

final class NeoPopBillItemViewModel: ObservableObject, Identifiable {
    let id = UUID()
    @Published var title: String
    @Published var due: String
    @Published var status: String
    @Published var accent: LinearGradient
    @Published var icon: String

    init(title: String, due: String, status: String, accent: LinearGradient, icon: String = "creditcard.fill") {
        self.title = title
        self.due = due
        self.status = status
        self.accent = accent
        self.icon = icon
    }
}
