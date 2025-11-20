import SwiftUI
import Combine

final class SectionTitleViewModel: ObservableObject {
    @Published var title: String
    @Published var actionTitle: String
    var action: () -> Void

    init(title: String, actionTitle: String, action: @escaping () -> Void = {}) {
        self.title = title
        self.actionTitle = actionTitle
        self.action = action
    }
}
