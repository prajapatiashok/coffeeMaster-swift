//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by FM-PC-LT-178 on 17/01/2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart :[(Product, Int)] = []
}
