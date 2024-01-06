//
//  HomeView.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HeroViewModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                ForEach(0..<150) { index in
                    HeroCellView()
                }
                
                
            }.navigationTitle("Heroes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
