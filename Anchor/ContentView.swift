//
//  ContentView.swift
//  Anchor
//
//  Created by jatin foujdar on 20/11/25.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var viewModel: NeoPopHeroSectionViewModel
    
    var body: some View {
        NeoPopCard(
            surface: .neoPrimarySurface,
            highlight: .neoHighlight,
            edge: .neoEdge,
            cornerRadius: 32,
            edgeDepth: 12,
            floating: true
        ) {
            VStack(alignment: .leading, spacing: 20) {
                HStack(alignment: .center) {
                    Text("viewModel: viewModel.tag")
                    Spacer()
                    Text("viewModel.dueDescription")
                        .font(.system(size: 12))
                        .textCase(.uppercase)
                        .foregroundStyle(Color.white.opacity(0.6))
                }
                .padding()
            }
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 32)
    }
}

#Preview {
    ContentView()
        
}
