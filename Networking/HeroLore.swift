//
//  HeroLore.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 10.01.2024..
//

import SwiftUI

struct HeroLoreModel: Codable {
    let lore: String
}

class HeroLore: ObservableObject {
    @Published var lore: String = ""
    
    init() {
        fetchHeroLore()
    }
    
    func fetchHeroLore() {
        let urlString = APIUrls.heroLore
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response.statusCode)")
                return
            }
            
            guard let data = data else { return }
            
            do {
                let heroLore = try JSONDecoder().decode(HeroLoreModel.self, from: data)
                self.lore = heroLore.lore
                print("DEBUG: Hero Lore - \(self.lore)")
            } catch let error {
                print("DEBUG: Error \(error)")
            }
        }.resume()
    }
}



