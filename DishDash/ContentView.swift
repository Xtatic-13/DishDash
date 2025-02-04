//
//  ContentView.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomeView()
        }
        .linearGradientBackground()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
