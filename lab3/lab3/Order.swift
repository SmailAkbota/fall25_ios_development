//
//  Order.swift
//  shopping_cart_assignment
//
//  Created by Акбота Смаил on 24.10.2025.
//

import Foundation

struct Order {
    let orderId: String
    let items: [CartItem]
    let subtotal: Double
    let discountAmount: Double
    let total: Double
    let timestamp: Date
    let shippingAddress: Address
    
    var itemCount: Int {
        return items.reduce(0) { $0 + $1.quantity }
    }
    
    init(from cart: ShoppingCart, shippingAddress: Address) {
        self.orderId = UUID().uuidString
        self.items = cart.items // Копируем товары (struct - создается копия!)
        self.subtotal = cart.subtotal
        self.discountAmount = cart.discountAmount
        self.total = cart.total
        self.timestamp = Date()
        self.shippingAddress = shippingAddress
    }
}
