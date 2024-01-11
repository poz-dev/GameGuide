//
//  HomeView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HeroViewModel()
    @StateObject var heroLore = HeroLore()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(viewModel.heroes, id: \.id) { hero in
                        NavigationLink(destination: HeroDetailView(hero: hero)) {
                            HeroCellView(hero: hero)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                    }
                }
                .padding(5)
                .navigationTitle("Heroes")
            }
            .onAppear {
                viewModel.fetchHeroData()
                heroLore.fetchHeroLore()
            }
        }
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}

