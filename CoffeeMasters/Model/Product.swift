//
//  Product.swift
//  CoffeeMasters
//
//  Created by FM-PC-LT-178 on 17/01/2023.
//

import Foundation

struct Product: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
