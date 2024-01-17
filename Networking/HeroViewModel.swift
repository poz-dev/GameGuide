//
//  APICalls.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import SwiftUI
import Combine

class HeroViewModel: ObservableObject {
    
    @Published var heroes = [Hero]()
    
    private var cancellables: Set<AnyCancellable> = []
    
    static let shared = HeroViewModel()
    
    func fetchHeroData() {
        let urlString = APIUrls.heroesURL
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Hero].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error fetching hero data: \(error)")
                }
            }, receiveValue: { [weak self] heroesList in
                self?.heroes = heroesList
                print("Received heroes data: \(heroesList)")
            })
            .store(in: &cancellables)
    }
}
