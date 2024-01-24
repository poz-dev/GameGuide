//
//  HomeView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HeroViewModel()
    @StateObject var abilitiesViewModel = AbilitiesViewModel()
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
                    abilitiesViewModel.fetchAbilities { data in
                               if let data = data {
                                   do {
                                       let json = try JSONSerialization.jsonObject(with: data, options: [])
                                       print("Raw JSON Data:")
                                       print(json)

                                       let abilities = try JSONDecoder().decode([AbilityModel].self, from: data)
                                       print("Fetched Abilities:")
                                       for ability in abilities {
                                           print("Name: \(ability.dname ?? "N/A"), Description: \(ability.desc ?? "N/A")")
                                       }
                                   } catch {
                                       print("Error decoding abilities data: \(error.localizedDescription)")
                                   }
                               } else {
                                   print("Failed to fetch abilities.")
                               }
                           }
                
                    
                }
            }
            
            // MARK: - Tabi items
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
  
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}

