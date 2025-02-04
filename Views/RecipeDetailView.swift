//
//  RecipeDetailView.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipped()
                
                VStack(alignment: .center, spacing: 10) {
                    Text(recipe.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(recipe.description)
                        .font(.body)
                        .foregroundColor(.white)
                    
                    Text("Ingredients")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        
                    
                    
                    Text("• Ingredient 1\n• Ingredient 2\n• Ingredient 3")
                        .font(.body)
                        .foregroundColor(.white)
                }
                .padding()
            }
        }
        .linearGradientBackground()
        .navigationTitle(recipe.name)
    }
}
