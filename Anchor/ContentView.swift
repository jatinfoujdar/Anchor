//
//  ContentView.swift
//  Anchor
//
//  Created by jatin foujdar on 20/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NeoPopNavBar(viewModel: viewModel.navBar)
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
