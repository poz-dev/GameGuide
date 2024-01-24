//
//  HeroAbilitiesViewModel.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 24.01.2024..
//
import Foundation

class AbilitiesViewModel: ObservableObject {
    typealias CompletionHandler = (Data?) -> Void

    func fetchAbilities(completion: @escaping CompletionHandler) {
        guard let url = URL(string: "https://api.opendota.com/api/constants/abilities") else {
            print("Invalid URL")
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let response = response as? HTTPURLResponse {
                print("API Response Status Code: \(response.statusCode)")
            }

            guard let data = data, error == nil else {
                print("Error fetching abilities data: \(error?.localizedDescription ?? "Unknown error")")
                completion(nil)
                return
            }

            print("Fetched abilities data successfully.")
            completion(data)
        }.resume()
    }
}

