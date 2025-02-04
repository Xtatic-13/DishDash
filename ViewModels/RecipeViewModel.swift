//
//  RecipeViewModel.swift
//  DishDash
//
//  Created by siddhatech on 29/01/25.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published var recipes: [Recipe] = [
        Recipe(name: "Dark Forest Cake", image: "cake.png", description: "Fulfil your choco cravings"),
        Recipe(name: "Burger King", image: "burger.png", description: "Tasty and delicious Burgers"),
        Recipe(name: "Naturals Ice Cream", image: "icecream.png", description: "Rich and moist dessert."),
        Recipe(name: "Margherita Pizza", image: "pizza.png", description: "Classic Italian pizza with fresh mozzarella and basil."),

        Recipe(name: "Pasta Alfredo", image: "pasta.png", description: "Creamy white sauce pasta with Parmesan cheese."),

        Recipe(name: "Sushi Platter", image: "sushi.png", description: "An assortment of fresh sushi and sashimi."),

        Recipe(name: "Paneer Butter Masala", image: "paneer.png", description: "A rich and creamy Indian curry with cottage cheese."),

        Recipe(name: "Chicken Biryani", image: "biryani.png", description: "Aromatic rice dish cooked with marinated chicken and spices."),

        Recipe(name: "Mango Smoothie", image: "smoothie.png", description: "Refreshing mango blend with yogurt and honey."),

        Recipe(name: "Chocolate Lava Cake", image: "lava_cake.png", description: "Warm chocolate cake with a gooey molten center."),

        Recipe(name: "Caesar Salad", image: "salad.png", description: "Fresh romaine lettuce with Caesar dressing and croutons."),

        Recipe(name: "French Fries", image: "fries.png", description: "Crispy and golden potato fries, lightly salted."),

        Recipe(name: "Blueberry Pancakes", image: "pancakes.png", description: "Fluffy pancakes topped with fresh blueberries and syrup.")

    ]
    
    @Published var selectedCategory: String = "All"
    let categories = ["All", "Breakfast", "Lunch", "Dinner", "Dessert"]
    
    // Optional: Function to toggle favorite status
    func toggleFavorite(for recipe: Recipe) {
        if let index = recipes.firstIndex(where: { $0.id == recipe.id }) {
            recipes[index].isFavorite.toggle()
        }
    }
}
