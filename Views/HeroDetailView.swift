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
      
        ScrollView(.vertical) {
            VStack {
                // MARK: - TOP IMAGE
                    ZStack {
                        Image("anti-mage")
                            .resizable()
                            .frame(width: 240, height: 240, alignment: .center)
                            .aspectRatio(contentMode: .fill)
                            .clipped()

                        Image("agi")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                            .offset(x: 100, y: -100)
                    }
                    
                    .padding()
                HStack() {
                    
                    Image("anti-mage.icon")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 30, height: 30)
                        
                        
                    Text("Roles: Carry, Initiator, Pusher, Escaping")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                }

                Spacer()
            
            
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.edgesIgnoringSafeArea(.all))
            .navigationBarTitle(hero.localized_name, displayMode: .inline)
        }
        
    }


struct HeroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetailView(hero: mockHero)
    }
}
