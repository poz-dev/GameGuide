//
//  HeroLoreCall.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 18.01.2024..
//

//import Foundation
//import Combine
//
//class HeroLoreViewModel: ObservableObject {
//    @Published var heroLore: [String: String] = [:]
//    
//    private var cancellables: Set<AnyCancellable> = []
//
//    func fetchHeroLore() {
//        guard let url = URL(string: APIUrls.heroLore) else {
//            print("Invalid URL for hero lore")
//            return
//        }
//
//        URLSession.shared.dataTaskPublisher(for: url)
//            .map(\.data)
//            .decode(type: [String: String].self, decoder: JSONDecoder())
//            .receive(on: DispatchQueue.main)
//            .sink(receiveCompletion: { completion in
//                switch completion {
//                case .finished:
//                    break
//                case .failure(let error):
//                    print("Error fetching hero lore: \(error)")
//                }
//            }, receiveValue: { [weak self] loreData in
//                self?.heroLore = loreData
//            })
//            .store(in: &cancellables)
//    }
//}






