//
//  CategoriesView.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import SwiftUI

struct CategoriesView: View {
    @StateObject private var viewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.categories, id: \.self) { category in
                    HStack {
                        Text(category)
                        Spacer()
                        if viewModel.selectedCategory == category {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        viewModel.selectedCategory = category
                    }
                }
            }
            .linearGradientBackground()
            .navigationTitle("Categories")
        }
    }
}
