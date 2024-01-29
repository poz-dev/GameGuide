//
//  HomeView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HeroViewModel()
    @State private var items: [Item] = []

    @State private var selectedTab: Tab = .heroes
    
    enum Tab {
        case heroes
        case items
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
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
                }
                .navigationTitle("Heroes")
                .onAppear {
                    viewModel.fetchHeroData()
                }
            }
            .tabItem {
                Image(systemName: "person.3")
                Text("Heroes")
            }
            .tag(Tab.heroes)
            
            NavigationView {
                ItemsView(items: items)
                    .onAppear {
                        // Fetch items data
                        decodeItems()
                        // Assign fetched items to the state variable
                        items = [] // Add your fetched items here
                    }
            }
            .tabItem {
                Image(systemName: "bag")
                Text("Items")
            }
            .tag(Tab.items)
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


