//
//  ItemsView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 22.01.2024..
//

import SwiftUI

struct ItemsView: View {
    var body: some View {
        
        
        NavigationView {
            
            ScrollView {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }.navigationTitle("Items")
        }
    }
}

struct ItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsView()
    }
}
