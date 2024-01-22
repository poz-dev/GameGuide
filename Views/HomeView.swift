//
//  HomeView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HeroViewModel()
    @State private var selectedTab: Tab = .heroes
    
    enum Tab {
        case heroes
        case items
    }


    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            NavigationView {
                // MARK: ScrollView
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
                }
            }
            .tabItem {
                Image(systemName: "person.3")
                Text("Heroes")
            }.tag(Tab.heroes)
            
            ItemsView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Items")
                }
                    .tag(Tab.items)
        }
    }
    
    /*
     var body: some View {
             TabView(selection: $selectedTab) {
                 NavigationView {
                     ScrollView {
                         
                         .padding(5)
                         .navigationTitle("Heroes")
                     }
                     .onAppear {
                         viewModel.fetchHeroData()
                     }
                 }
                 .tabItem {
                     Image(systemName: "person.3")
                     Text("Heroes")
                 }
                 .tag(Tab.heroes)

                 // Replace ItemView() with your actual implementation
                 ItemView()
                     .tabItem {
                         Image(systemName: "bag")
                         Text("Items")
                     }
                     .tag(Tab.items)
             }
         }

     */
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}

