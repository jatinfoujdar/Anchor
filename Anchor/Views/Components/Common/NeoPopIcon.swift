import SwiftUI

struct NeoPopIcon: View {
    @ObservedObject var viewModel: NeoPopIconViewModel

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white.opacity(0.06))
                .frame(width: 44, height: 44)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white.opacity(0.12), lineWidth: 1)
                )
            Image(systemName: viewModel.systemName)
                .foregroundStyle(.white)
                .font(.system(size: 18))
        }
    }
}
