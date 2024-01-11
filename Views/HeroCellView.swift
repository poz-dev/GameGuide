//
//  HeroCellView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 06.01.2024..
//

import SwiftUI

struct HeroCellView: View {
    
    let hero: Hero
    
    var body: some View {
 
        VStack {
            
            ZStack {
                VStack {
                    
                    Spacer()
                    
                    Image(hero.localized_name.replacingOccurrences(of: " ", with: "_"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 125, height: 75)
                        
                    
                    Text(hero.localized_name)
                        .font(.caption)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .padding(.bottom, 15.0)
                    
                   Spacer()
                }
                
                if let primaryAttribute = hero.primary_attr {
                    Image("\(primaryAttribute.rawValue.lowercased())")
                        .padding(.bottom, 80)
                        .padding(.leading, 101)
                }

            }
            
        }
        .frame(width: 125, height: 100)
        .cornerRadius(8)
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
        
  
    }
}
//    .background(RoundedRectangle(cornerRadius: 8)
//                        .fill(Color.white)
//                        .shadow(color: .black, radius: 4))
struct HeroCellView_Previews: PreviewProvider {
    static var previews: some View {
        let mockHero = Hero(
            id: 1,
            name: "Alchemist",
            localized_name: "Alchemist",
            primary_attr: .str,
            attack_type: .melee,
            roles: [.carry, .disabler],
            img: "mock_hero_image",
            icon: "mock_hero_icon",
            base_health: 500,
            base_health_regen: 2.0,
            base_mana: 300,
            base_mana_regen: 1.5,
            base_armor: 5.0,
            base_mr: 25,
            base_attack_min: 40,
            base_attack_max: 50,
            base_str: 22,
            base_agi: 18,
            base_int: 15,
            str_gain: 2.5,
            agi_gain: 2.0,
            int_gain: 1.5,
            attack_range: 150,
            projectile_speed: 900,
            attack_rate: 1.7,
            base_attack_time: 1,
            attack_point: 0.3,
            move_speed: 300,
            turn_rate: 0.6,
            cm_enabled: true,
            legs: 2,
            day_vision: 1800,
            night_vision: 800
        )
        HeroCellView(hero: mockHero)
    }
}
