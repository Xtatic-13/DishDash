//
//  Recipe.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    var isFavorite: Bool = false // Optional: For favorites functionality
}
