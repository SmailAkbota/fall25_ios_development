//
//  test.swift
//  shopping_cart_assignment
//
//  Created by Акбота Смаил on 24.10.2025.
//
import Foundation

func runTests() {

    let book = Product(
        id: "1",
        name: "The Swift Programming Language",
        price: 45.0,
        description: "Учебник по Swift от Apple",
        category: .books
    )

    let tshirt = Product(
        id: "2",
        name: "KBTU T-Shirt",
        price: 25.0,
        description: "Фирменная футболка KBTU",
        category: .clothing
    )

    let ring = Product(
        id: "3",
        name: "Silver Ring",
        price: 80.0,
        description: "Серебряное кольцо ручной работы",
        category: .jewelry
    )

    let toy = Product(
        id: "4",
        name: "Lego Set",
        price: 60.0,
        description: "Конструктор Lego City",
        category: .toys
    )

    let cart = ShoppingCart()

    cart.addItem(product: book, quantity: 1)
    cart.addItem(product: tshirt, quantity: 2)
    cart.addItem(product: ring, quantity: 1)

    print("\n--- 📋 СОДЕРЖИМОЕ КОРЗИНЫ ---")
    print("Subtotal: \(cart.subtotal)")
    print("Item count: \(cart.itemCount)")

  
    cart.discountCode = "SAVE10"
    print("Total with discount (SAVE10): \(cart.total)")

    // 5️⃣ Обновляем количество товара
    cart.updateItemQuantity(productId: "2", quantity: 3)
    print("\nПосле обновления футболки до 3 штук:")
    print("Subtotal: \(cart.subtotal)")

    // 6️⃣ Удаляем один товар
    cart.removeItem(productId: "3")
    print("\nПосле удаления кольца:")
    print("Subtotal: \(cart.subtotal)")
    print("Item count: \(cart.itemCount)")

    // 7️⃣ Добавляем новый товар
    cart.addItem(product: toy, quantity: 2)
    print("\nДобавили игрушки:")
    print("Subtotal: \(cart.subtotal)")
    print("Item count: \(cart.itemCount)")

    // 8️⃣ Создаём адрес доставки
    let address = Address(
        street: "Dostyk Avenue 89",
        city: "Almaty",
        zipCode: "050000",
        country: "Kazakhstan"
    )

    // 9️⃣ Создаём заказ из корзины
    let order = Order(from: cart, shippingAddress: address)
    print("\n✅ Заказ создан! ID: \(order.orderId)")
    print("📦 В заказе товаров: \(order.itemCount)")
    print("💰 Итого: \(order.total) ₸")
    print("\nАдрес доставки:\n\(order.shippingAddress.formattedAddress)")

    // 🔟 Проверяем неизменяемость заказа
    cart.clearCart()
    print("\n--- Проверка неизменяемости ---")
    print("🛒 Товаров в корзине после очистки: \(cart.itemCount)")
    print("📦 Товаров в заказе (остались): \(order.itemCount)")
}
