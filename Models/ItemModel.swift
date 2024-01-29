//
//  ItemModel.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import Foundation


enum ItemColor: String {
    case rare =  "#1A87F9"
    case artifact =  "#E29B01"
    case secret_shop = "#FFFFFF"
    case consumable =  "#1D80E7"
    case common = "#2BAB01"
    case epic =  "#B812F9"
    case component =  "#FFFFFA"
}

struct Item: Codable, Identifiable {
    let hint: [String]?
    let id: Int?
    let img: String?
    let dname: String?
    let qual: String?
    let cost: Int?
    let notes: String?
    let attrib: [Attribute]?
    let mc: Bool?
    let cd: Int?
    let lore: String?
    let components: [String]?
    let created: Bool?
    let charges: Bool?
}

struct Attribute: Codable {
    let key: String?
    let header: String?
    let value: String?
}
