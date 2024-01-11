//
//  HeroDetailView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 10.01.2024..
//

import SwiftUI

struct HeroDetailView: View {
    
    let hero: Hero
    
    var body: some View {
        
        ScrollView {
            VStack {
                
            // MARK: - Hero image
                
                Image(hero.localized_name.replacingOccurrences(of: " ", with: "_"))
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .frame(width: 260, height: 120, alignment: .center)
                    .shadow(color: .gray, radius: 4)
                
                // MARK: - Hero short description
                
                Text("")
                    
                
            
            }
            
        }
        .navigationTitle("\(hero.localized_name)")
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: mockHero)
    }
}
