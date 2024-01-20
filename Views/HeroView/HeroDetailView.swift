//
//  HeroDetailView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 10.01.2024..
//

import SwiftUI

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
                    
                    Image("anti-mage.icon")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                    
                    
                    
                    Text("Roles: \(hero.roles?.map { $0.rawValue }.joined(separator: ", ") ?? "")")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            
            Button("Show lore") {
                
                
            }
            .popover(isPresented: $isLoreViewPresented) {
//                if let heroLore: HeroLore {
                    ScrollView {
                        VStack {
//                            Text(heroLore)
//                                .foregroundColor(.black)
//                                .padding()
                        }
                    }.background(Color.white.edgesIgnoringSafeArea(.all))
                }
            
            HeroStatsView(hero: hero)
              
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white.edgesIgnoringSafeArea(.all))
            .navigationBarTitle(hero.localized_name, displayMode: .inline)
            
            
            
            
            
        }
        
    }


struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: mockHero)
    }
}
