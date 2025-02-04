//
//  HomeView.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                    HStack {
                        Image(recipe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 75, height: 75)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                        VStack(alignment: .leading) {
                            Text(recipe.name)
                                .font(.headline)
                            Text(recipe.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        // Optional: Favorite button
                        if recipe.isFavorite {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                        }
                    }
                    .padding(1)
                }
            }
//            .linearGradientBackground()
            .navigationTitle("DishDash")
            .toolbar {
                NavigationLink(destination: CategoriesView()) {
                    Text("Categories")
                }
            }
        }
    }
    
    
}
