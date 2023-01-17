//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by FM-PC-LT-178 on 03/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world banger!")
                .padding()
            Button("Clicke me") {
                print("hey you just clicked me")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
