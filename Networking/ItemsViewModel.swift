//
//  ItemsViewModel.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 25.01.2024..
//

import Foundation




















// Define the Attribute struct
//struct Attribute: Codable {
//    let key: String?
//    let header: String?
//    let value: String?
//}
//
//// Define the Item struct
//struct Item: Codable {
//    let hint: [String]
//    let id: Int
//    let img: String
//    let dname: String
//    let qual: String
//    let cost: Int
//    let notes: String
//    let attrib: [Attribute]
//    let mc: Bool
//    let cd: Int
//    let lore: String
//    let components: String?
//    let created: Bool?
//    let charges: Bool?
//}
//
//// Create the ViewModel
//class ItemsViewModel: ObservableObject {
//    @Published var items: [String: Item] = [:] // Use a dictionary to hold items
//
//    func fetchItems(itemNames: [String]) {
//        for itemName in itemNames {
//            guard let url = URL(string: "\(APIUrls.itemsURL)/\(itemName)") else {
//                print("Invalid URL for item: \(itemName)")
//                continue
//            }
//
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                guard let data = data, error == nil else {
//                    print("Error fetching item \(itemName): \(error?.localizedDescription ?? "Unknown error")")
//                    return
//                }
//
//                do {
//                    let decoder = JSONDecoder()
//                    let item = try decoder.decode(Item.self, from: data)
//                    // Use the item name as the key to store the item details
//                    DispatchQueue.main.async {
//                        self.items[itemName] = item
//                        print(itemName)
//                    }
//                } catch {
//                    print("Error decoding item \(itemName): \(error.localizedDescription)")
//                }
//            }.resume()
//        }
//    }
//}
//
//
//
//// MARK: - Item ID
//
//class ItemsIDViewModel: ObservableObject {
//    @Published var itemIDs: [String: String] = [:]
//
//    func fetchItemIDs() {
//        guard let url = URL(string: APIUrls.itemsID) else {
//            print("Invalid URL")
//            return
//        }
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data, error == nil else {
//                print("Error fetching item IDs: \(error?.localizedDescription ?? "Unknown error")")
//                return
//            }
//
//            do {
//                let decoder = JSONDecoder()
//                self.itemIDs = try decoder.decode([String: String].self, from: data)
//            } catch {
//                print("Error decoding item IDs: \(error.localizedDescription)")
//            }
//        }.resume()
//    }
//}








