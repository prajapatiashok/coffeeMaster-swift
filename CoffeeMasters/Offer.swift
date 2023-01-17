//
//  Offer.swift
//  CoffeeMasters
//
//  Created by FM-PC-LT-178 on 17/01/2023.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        VStack {
            Text(title)
                .padding()
                .font(.title)
            Text(description)
                .padding()
        }
        
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "Title 1", description: "This is the description One")
            Offer(title: "Title 1", description: "This is the description One")
                .previewLayout(.fixed(width: 300, height: 250))
        }
    }
}
