//
//  HeroDetailView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 10.01.2024..
//

import SwiftUI
import Kingfisher

struct HeroDetailView: View {

    
    let hero: Hero
    
    @State private var isLoreViewPresented = false
    @State private var heroLore: String?
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                // MARK: - TOP IMAGE
                ZStack {
                    Image("anti-mage")
                        .resizable()
                        .frame(width: 240, height: 240, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    
                    if let primaryAttribute = hero.primary_attr {
                        Image(primaryAttribute.rawValue.lowercased())
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                            .offset(x: 100, y: -100)
                    }
                }
                .padding()
                
                HStack {
                    // MARK: - Icon image
                    let formattedHeroName = hero.localized_name
                        .replacingOccurrences(of: " ", with: "_")
                        .replacingOccurrences(of: "-", with: "")
                        .replacingOccurrences(of: "Zeus", with: "zuus")
                        .lowercased()
                    
                    if let iconURL = URL(string: APIUrls.heroIcon + formattedHeroName + ".png?") {
                        KFImage(iconURL)
                            .fade(duration: 0.25)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                    }
                    
                    Text("Roles: \(hero.roles?.map { $0.rawValue }.joined(separator: ", ") ?? "")")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Button("Show lore") {
                    isLoreViewPresented.toggle()
                   
                }
                .popover(isPresented: $isLoreViewPresented) {
                    if let heroLore = heroLore {
                        ScrollView {
                            VStack {
                                Text(heroLore)
                                    .foregroundColor(.black)
                                    .padding()
                            }
                        }
                    }
                }
                Divider()
                HeroStatsView(hero: hero)
                Divider()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white.edgesIgnoringSafeArea(.all))
            .navigationBarTitle(hero.localized_name, displayMode: .inline)
        }
    }
}
   


struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: mockHero)
    }
}

