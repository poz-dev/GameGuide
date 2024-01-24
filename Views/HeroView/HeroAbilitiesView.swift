//
//  HeroAbilitiesView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 24.01.2024..
//

import SwiftUI

struct HeroAbilitiesView: View {
    
    @StateObject var abilitiesViewModel = AbilitiesViewModel()
    @State private var abilities: [AbilityModel] = []
    
    var body: some View {
        
        
        VStack {
            Text("Abilities")
                .font(.subheadline)
            
            Text("Mana Break")
            
            Image(systemName: "person")
            
            Text("Burns an opponent's mana on each attack and deals damage equal to a percentage of the mana burnt. Enemies with no mana left are temporarily slowed.")
          
                        
            
        }
    }
}

struct HeroAbilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        HeroAbilitiesView()
    }
}
