//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by FM-PC-LT-178 on 03/01/2023.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
   @StateObject var menuManager =  MenuManager()
   @StateObject var cartManager =  CartManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
