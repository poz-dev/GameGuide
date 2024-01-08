//
//  HeroCellView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 06.01.2024..
//

import SwiftUI

struct HeroCellView: View {
    var body: some View {
        
        
        VStack {
            ZStack {
                VStack {
                    
                    Spacer()
                    
                    Image("Anti-Mage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 75)
                        
                    
                    Text("Anti-Mage")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.bottom, 10)
                    
                   Spacer()
                }
                
                Image("agility.attribute.icon")
                    .padding(.bottom, 80)
                    .padding(.leading, 101)

            }
            
        }
        .frame(width: 120, height: 100)
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
  
    }
}

struct HeroCellView_Previews: PreviewProvider {
    static var previews: some View {
        HeroCellView()
    }
}
