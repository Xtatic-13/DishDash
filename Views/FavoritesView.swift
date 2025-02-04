//
//  FavoritesView.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import SwiftUI

struct FavoritesView: View {
    @StateObject private var viewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.recipes.filter { $0.isFavorite }) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                    HStack {
                        Image(recipe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        VStack(alignment: .leading) {
                            Text(recipe.name)
                                .font(.headline)
                            Text(recipe.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding(5)
                }
            }
            .linearGradientBackground()
            .navigationTitle("Favorites")
        }
    }
}
