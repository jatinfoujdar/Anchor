//
//  NeoPopStatCard.swift
//  Anchor
//
//  Created by jatin foujdar on 21/11/25.
//

import SwiftUI

struct NeoPopStatsCard: View {
    
    // Dummy placeholder values
    private let title: String = "TITLE"
    private let value: String = "123"
    private let gradient: LinearGradient = .neoPinkGradient

    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title.uppercased())
                .font(.system(size: 11, weight: .medium))
                .foregroundStyle(.white.opacity(0.65))
            
            Text(value)
                .font(.system(size: 17, weight: .semibold, design: .rounded))
                .foregroundStyle(.white)
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(gradient.opacity(0.45))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.2), lineWidth: 0.8)
        )
        
    }
}

#Preview{
    NeoPopStatsCard()
}
