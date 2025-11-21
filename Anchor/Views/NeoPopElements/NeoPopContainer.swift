//
//  NeoPopContainer.swift
//  Anchor
//
//  Created by jatin foujdar on 21/11/25.
//

import SwiftUI

struct NeoPopContainer: View {
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
                ScrollView{
                    NeoPopStatsCard()
                    NeoPopStatsCard()
                    NeoPopStatsCard()
                }
            }
            .padding(10)
        }
    }
}

#Preview{
    NeoPopContainer()
}
