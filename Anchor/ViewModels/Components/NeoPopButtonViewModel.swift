import SwiftUI
import Combine

final class NeoPopButtonViewModel: ObservableObject, Identifiable {
    enum Style {
        case primary
        case secondary
        case floating

        var colors: (background: LinearGradient, border: Color) {
            switch self {
            case .primary:
                return (.neoPinkGradient, Color.white.opacity(0.3))
            case .secondary:
                return (.neoSlateGradient, Color.white.opacity(0.15))
            case .floating:
                return (.neoAquaGradient, Color.white.opacity(0.35))
            }
        }

        var baseColor: Color {
            switch self {
            case .primary:
                return .neoPink
            case .secondary:
                return .neoSlate
            case .floating:
                return .neoHighlight
            }
        }

        var isFloating: Bool {
            if case .floating = self { return true }
            return false
        }
    }

    let id = UUID()
    @Published var title: String
    @Published var subtitle: String?
    @Published var style: Style
    var action: () -> Void

    init(title: String, subtitle: String? = nil, style: Style, action: @escaping () -> Void = {}) {
        self.title = title
        self.subtitle = subtitle
        self.style = style
        self.action = action
    }
}
