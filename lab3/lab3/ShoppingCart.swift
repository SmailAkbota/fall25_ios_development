//
//  ShoppingCart.swift
//  shopping_cart_assignment
//
//  Created by Акбота Смаил on 23.10.2025.
//

import Foundation
class ShoppingCart {
    private(set) var items: [CartItem] = []
    var discountCode: String?
    
    init() {
        self.items = []
        self.discountCode = nil
    }
    
    
    // Добавить товар в корзину
    func addItem(product: Product, quantity: Int = 1) {
        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            items[index].quantity += quantity
        } else {
            let newItem = CartItem(product: product, quantity: quantity)
            items.append(newItem)
        }
    }
    
    // Удалить товар по productId
    func removeItem(productId: String) {
        items.removeAll { $0.product.id == productId }
    }
    
    // Обновить количество товара
    func updateItemQuantity(productId: String, quantity: Int) {
        if let index = items.firstIndex(where: { $0.product.id == productId }) {
            if quantity <= 0 {
                items.remove(at: index)
            } else {
                items[index].updateQuantity(quantity)
            }
        }
    }
    
    // Очистить корзину
    func clearCart() {
        items.removeAll()
    }
    
    
    var subtotal: Double {
        items.reduce(0.0) { $0 + $1.totalPrice }
    }
    // Подсчёт суммы скидки
    var discountAmount: Double {
        guard let code = discountCode else { return 0 }
        switch code {
        case "SAVE10":
            return subtotal * 0.10
        case "SAVE20":
            return subtotal * 0.20
        default:
            return 0
        }
    }
    
    // Общая сумма с учётом скидки
    var total: Double {
        return subtotal - discountAmount
    }
    
    // Количество всех товаров
    var itemCount: Int {
        return items.reduce(0) { $0 + $1.quantity }
    }
    
    // Проверка, пустая ли корзина
    var isEmpty: Bool {
        return items.isEmpty
    }
}
