//
//  HeroStatsView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 20.01.2024..
//

import SwiftUI

struct HeroStatsView: View {
    
    let hero: Hero
    
    private func statView(imageName: String, value: String) -> some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            
            VStack(alignment: .leading) {
                
                Text(value)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
    
    private func attributeView(imageName: String, value: String) -> some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                
             Text(value)
                .font(.subheadline)
                .foregroundColor(.black)
        }
    }
    
    var body: some View {
        
        
        VStack {
            
            HStack {
                Spacer()
                VStack {
                    attributeView(imageName: "str", value: "\(hero.base_str) +\(hero.str_gain)")
                }
                Spacer()
                VStack {
                    attributeView(imageName: "agi", value: "\(hero.base_agi) +\(hero.agi_gain)")
                }
                Spacer()
                VStack {
                    attributeView(imageName: "int", value: "\(hero.base_int) +\(hero.int_gain)")
                }
                Spacer()
            }
            
            
            // MARK: - Hero properties
            HStack(alignment: .top) {
              
                Spacer()
                
                
                    VStack(alignment: .leading) {
                        
                        Text("Attack")
                            .font(.title3)
                            .foregroundColor(.gray)
                        statView(imageName: "damage.icon", value: "\(hero.base_attack_min)-\(hero.base_attack_max)")
                        statView(imageName: "attack_time.icon", value: "\(hero.attack_rate)")
                        statView(imageName: "attack_range.icon", value: "150")
                    }.padding()
                
                
                Spacer()
                
                VStack(alignment: .leading) {
                    
                    Text("Defense")
                        .font(.title3)
                        .foregroundColor(.gray)
                    statView(imageName: "armor.icon", value: "\(hero.base_armor)")
                }.padding()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    
                    Text("Mobility")
                        .font(.title3)
                        .foregroundColor(.gray)
                    statView(imageName: "move_speed.icon", value: "\(hero.move_speed)")
                    statView(imageName: "vision.icon", value: "\(hero.day_vision)")
                }.padding()
                Spacer()
            }
        }
        
    }
    
    
    struct HeroStatsView_Previews: PreviewProvider {
        static var previews: some View {
            HeroStatsView(hero: mockHero)
        }
    }
}

