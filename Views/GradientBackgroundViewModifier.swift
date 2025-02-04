//
//  GradientBackgroundViewModifier.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import SwiftUI

struct LinearGradientBackground: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.white.opacity(0.7), Color.black]),
                startPoint: .top,
                endPoint: .bottom
                
            )
            .ignoresSafeArea() // Ensure background covers entire screen

            content // Places the actual content on top
        }
    }
}

// Extension
extension View {
    func linearGradientBackground() -> some View {
        self.modifier(LinearGradientBackground())
    }
}


