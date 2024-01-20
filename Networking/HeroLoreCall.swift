//
//  HeroLoreCall.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 18.01.2024..
//

import Foundation
import Combine

class HeroLoreAPI {
    static func fetchHeroLore(heroID: Int) -> AnyPublisher<String, Error> {
        let loreURL = "\(APIUrls.heroLore)/\(heroID)"
        
        guard let url = URL(string: loreURL) else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: HeroLoreResponse.self, decoder: JSONDecoder())
            .map(\.lore)
            .eraseToAnyPublisher()
    }
}

struct HeroLoreResponse: Codable {
    let lore: String
}

