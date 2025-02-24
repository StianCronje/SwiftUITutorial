//
//  Badge.swift
//  SwiftUITutorial
//
//  Created by Stian Cronje on 2/21/25.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(angle: Angle(degrees: Double(index)  / 8.0 ) * 360.0)
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .bottom)
                    .position(x: geometry.size.width / 2.0, y: 3.0 / 4.0 )
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
