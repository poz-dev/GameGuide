//
//  ItemDetailView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 29.01.2024..
//

import SwiftUI

struct ItemDetailView: View {
    
    let item: Item
    
    var body: some View {
        VStack {
                    // Customize the layout to display item details
            Text(item.dname ?? "Default name")
                        .font(.headline)
                    
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
    }
}

//struct ItemDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemDetailView()
//    }
//}
