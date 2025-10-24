//
//  Product.swift
//  shopping_cart_assignment
//
//  Created by Акбота Смаил on 18.10.2025.
//

import Foundation
struct Product:Identifiable{
    let id  :   String
    let name: String
    var price: Double
    let description: String
    let category: Category
    
    
    
    enum Category{
        case books
        case clothing
        case jewelry
        case toys
        
        
    }
    var displayPrice: String {
        return String(format: "$%.2f",price)
    }

    init(id: String, name: String, price: Double, description: String, category: Category) {
        guard price > 0 else {
            fatalError("Price must be greater than 0")
        }
        self.id = id
        self.name = name
        self.price = price
        self.description = description
        self.category = category
    }
}
