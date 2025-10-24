//
//  CartItem.swift
//  shopping_cart_assignment
//
//  Created by Акбота Смаил on 23.10.2025.
//

import Foundation
struct CartItem{
    let product:Product
    var quantity:Int
    
    var totalPrice:Double{
        Double(quantity) * product.price
    }
    mutating func updateQuantity(_ newValue:Int){
        guard newValue > 0 else {  return}
        quantity=newValue
    }
    mutating func increaseQuantity(){
        quantity+=1
    }
   
}

    
