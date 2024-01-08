//
//  HomeView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HeroViewModel()
    
    var heroes = ["Anti-Mage", "Alchemist", "Axe"]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(heroes, id: \.self) { hero in
                        HeroCellView()
                            .aspectRatio(contentMode: .fit)
                            
                    }
                    
                    
                    
                }
                .padding(5)
                .navigationTitle("Heroes")
            }
        }
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
