//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by FM-PC-LT-178 on 18/01/2023.
//

import SwiftUI

struct OrderItem: View {
    var item:(Product, Int)
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        HStack{
            Text("\(item.1)x")
            Text("\(item.0.name)")
            Spacer()
            Text("$\(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("AccentColor"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }.padding()
        
        
        
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "test", description: "testing desc", price: 20, image: ""), 5))
            .environmentObject(CartManager())
    }
}
