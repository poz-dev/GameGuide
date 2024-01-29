//
//  ItemViewModel.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 29.01.2024..
//

import Foundation
import SwiftUI

// Define the ItemID struct for mapping item IDs
struct ItemID: Codable {
    let id: Int
    let name: String
}

// Function to decode item IDs
func mapItemIDs() -> [ItemID]? {
    guard let url = Bundle.main.url(forResource: "item_ids", withExtension: "json") else {
        return nil
    }

    do {
        let data = try Data(contentsOf: url)
        let itemIDs = try JSONDecoder().decode([String: String].self, from: data)
            .sorted { $0.key < $1.key }
        let mappedItemIDs = itemIDs.compactMap { (key, value) in
            guard let id = Int(key) else {
                fatalError("Invalid item ID: \(key)")
            }
            return ItemID(id: id, name: value)
        }
        return mappedItemIDs
    } catch {
        print("Error decoding JSON for item IDs: \(error)")
        return nil
    }
}

// Function to decode item data
func decodeItems() {
    guard let itemIDs = mapItemIDs() else {
        print("Failed to fetch item IDs")
        return
    }

    let itemIDDictionary = Dictionary(uniqueKeysWithValues: itemIDs.map { ($0.name, $0.id) })

    do {
        guard let itemsFileURL = Bundle.main.url(forResource: "items", withExtension: "json") else {
            print("Items file not found")
            return
        }
        let itemsData = try Data(contentsOf: itemsFileURL)
        
        // Debug: Print the JSON data
        print("Raw JSON data:")
        print(String(data: itemsData, encoding: .utf8) ?? "Unable to decode data")

        let items = try JSONDecoder().decode([String: Item].self, from: itemsData)

        // Iterate through the items and print all properties
        for (name, item) in items {
            guard let id = itemIDDictionary[name] else {
                print("Item ID not found for name: \(name)")
                continue
            }

            // Print all properties of the item
            print("Item Name: \(name), ID: \(id)")
            print("Hint: \(item.hint)")
            print("Image: \(item.img)")
            print("DisplayName: \(item.dname)")
            print("Quality: \(item.qual)")
            print("Cost: \(item.cost)")
            print("Notes: \(item.notes)")
            print("Attributes:")
            if let attributes = item.attrib {
                for attribute in attributes {
                    print("- Key: \(attribute.key), Header: \(attribute.header), Value: \(attribute.value)")
                }
            }
            print("MC: \(item.mc)")
            print("Cooldown: \(item.cd)")
            print("Lore: \(item.lore)")
            print("Components: \(item.components ?? [])")
            print("Created: \(item.created)")
            print("Charges: \(item.charges)")
            print("------")
        }
    } catch {
        print("Error decoding JSON for items: \(error)")
    }
}

extension Item {
    static let mockItem: Item = Item(hint: ["Hint 1", "Hint 2"], id: 1,
                                      img: "mock_image_url",
                                      dname: "Blink",
                                      qual: "Mock Quality",
                                      cost: 100,
                                      notes: "Mock Notes",
                                      attrib: [Attribute(key: "Mock Attribute Key",
                                                         header: "Mock Attribute Header",
                                                         value: "Mock Attribute Value")],
                                      mc: true,
                                      cd: 10,
                                      lore: "Mock Lore",
                                      components: ["Component 1", "Component 2"],
                                      created: true,
                                      charges: false)
}
