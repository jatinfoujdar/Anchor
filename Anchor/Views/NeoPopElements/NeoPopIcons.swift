//
//  NeoPopIcons.swift
//  Anchor
//
//  Created by jatin foujdar on 21/11/25.
//

import SwiftUI

struct NeoPopIcons: View {
    
    // Replace with real values or keep defaults
    var systemName: String = "star.fill"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white.opacity(0.06))
                .frame(width: 44, height: 44)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white.opacity(0.12), lineWidth: 1)
                )
            
            Image(systemName: systemName)
                .foregroundStyle(.white)
                .font(.system(size: 18))
        }
    }
}
