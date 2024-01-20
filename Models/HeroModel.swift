//
//  HeroModel.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import Foundation
import SwiftUI

struct Hero: Codable, Identifiable {
    let id: Int
    let name: String
    let localized_name: String
    let primary_attr: PrimaryAttr?
    let attack_type: AttackType?
    let roles: [Role]?
    let img, icon: String?
    let base_health: Int?
    let base_health_regen: Double?
    let base_mana: Int?
    let base_mana_regen, base_armor: Double
    let base_mr, base_attack_min, base_attack_max, base_str: Int
    let base_agi, base_int: Int
    let str_gain, agi_gain, int_gain: Double
    let attack_range, projectile_speed: Int
    let attack_rate: Double
    let base_attack_time: Int
    let attack_point: Double
    let move_speed: Int
    let turn_rate: Double?
    let cm_enabled: Bool
    let legs: Int?
    let day_vision, night_vision: Int
  
}

enum  AttackType: String, Codable {
    case melee = "Melee"
    case ranged = "Ranged"
}

enum PrimaryAttr: String, Codable {
    case agi = "agi"
    case all = "all"
    case int = "int"
    case str = "str"
}

enum Role: String, Codable {
    case carry = "Carry"
    case disabler = "Disabler"
    case durable = "Durable"
    case escape = "Escape"
    case initiator = "Initiator"
    case nuker = "Nuker"
    case pusher = "Pusher"
    case support = "Support"
}



var mockHero: Hero = Hero (
        id: 1,
        name: "Anti-MAge",
        localized_name: "Anti-Mage",
        primary_attr: .str,
        attack_type: .melee,
        roles: [.carry, .disabler],
        img: "Anti-Mage",
        icon: "anti-mage_icon",
        base_health: 500,
        base_health_regen: 2.0,
        base_mana: 300,
        base_mana_regen: 1.5,
        base_armor: 5.0,
        base_mr: 25,
        base_attack_min: 40,
        base_attack_max: 50,
        base_str: 22,
        base_agi: 18,
        base_int: 15,
        str_gain: 2.5,
        agi_gain: 2.0,
        int_gain: 1.5,
        attack_range: 150,
        projectile_speed: 900,
        attack_rate: 1.7,
        base_attack_time: 1,
        attack_point: 0.3,
        move_speed: 300,
        turn_rate: 0.6,
        cm_enabled: true,
        legs: 2,
        day_vision: 1800,
        night_vision: 800
    )

