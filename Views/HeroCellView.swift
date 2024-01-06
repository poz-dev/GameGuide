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

                ZStack(alignment: .topTrailing) {


                    Image("Anti-Mage")
                        .resizable()
                        .frame(width: 120, height: 55)
                       .aspectRatio(contentMode: .fit)
                        
                        .cornerRadius(8)

                    Image("agility.attribute.icon")
                        .padding(1)

                }

                Spacer()

                Text("Anti-Mage")
                    .font(.headline)
                    .padding(.bottom)

            }
            .frame(width: 120, height: 100, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
    }
}

struct HeroCellView_Previews: PreviewProvider {
    static var previews: some View {
        HeroCellView()
    }
}
