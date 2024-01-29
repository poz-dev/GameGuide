//
//  ItemsView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 29.01.2024..
//

import SwiftUI

struct ItemsView: View {
    let items: [Item]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 16) {
                ForEach(items) { item in
                    ItemDetailView(item: item) // Use ItemView here, not ItemsView
                        .aspectRatio(1, contentMode: .fit)
                }
            }
            .padding()
        }
        .navigationTitle("Items")
    }
}


//struct ItemsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemsView()
//    }
//}
