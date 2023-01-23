//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by FM-PC-LT-178 on 03/01/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        TabView {
            MenuPage()
                .tabItem{
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem{
                    Image(systemName: "tag")
                    Text("Offers")
                }
           OrdersPage()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Orders")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem{
                    Image(systemName: "info.circle")
                    Text("Info")
                }

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro")
                .environmentObject(CartManager())
        }
    }
}
