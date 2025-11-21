//
//  NeoPopStatCard.swift
//  Anchor
//
//  Created by jatin foujdar on 21/11/25.
//
import SwiftUI

struct NeoPopStatsCard: View {
    
    private let title: String = "TITLE"
    private let value: String = "123"
    private let gradient: LinearGradient = .neoAmberGradient

    var body: some View {
        HStack(spacing: 12) {
            
           
            NeoPopIcons()
            
                .padding(.horizontal, 10)
           
            VStack(alignment: .leading, spacing: 6) {
                Text(title.uppercased())
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.white.opacity(0.65))
                
                Text(value)
                    .font(.system(size: 17, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white)
            }
        }
        .padding(14)
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
