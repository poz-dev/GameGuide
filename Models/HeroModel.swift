//
//  HeroModel.swift
//  GameGuide
//
//  Created by Kresimir Ivanjko on 03.01.2024..
//

import Foundation

struct Hero: Codable {
    let id: Int?
    let name: String?
    let localized_name: String?
}
    
//    let primaryAttr: PrimaryAttr?
//    let attackType: AttackType?
//    let roles: [Role]?
//    let img, icon: String?
//    let baseHealth: Int?
//    let baseHealthRegen: Double?
//    let baseMana: Int?
//    let baseManaRegen, baseArmor: Double?
//    let baseMr, baseAttackMin, baseAttackMax, baseStr: Int?
//    let baseAgi, baseInt: Int?
//    let strGain, agiGain, intGain: Double?
//    let attackRange, projectileSpeed: Int?
//    let attackRate: Double?
//    let baseAttackTime: Int?
//    let attackPoint: Double?
//    let moveSpeed: Int?
//    let turnRate: Double?
//    let cmEnabled: Bool?
//    let legs: Int?
//    let dayVision, nightVision: Int?
//
//
//
//
//
//    enum CodingKeys: String, CodingKey {
//        case id, name
//        case localizedName = "localized_name"
//        case primaryAttr = "primary_attr"
//        case attackType = "attack_type"
//        case roles, img, icon
//        case baseHealth = "base_health"
//        case baseHealthRegen = "base_health_regen"
//        case baseMana = "base_mana"
//        case baseManaRegen = "base_mana_regen"
//        case baseArmor = "base_armor"
//        case baseMr = "base_mr"
//        case baseAttackMin = "base_attack_min"
//        case baseAttackMax = "base_attack_max"
//        case baseStr = "base_str"
//        case baseAgi = "base_agi"
//        case baseInt = "base_int"
//        case strGain = "str_gain"
//        case agiGain = "agi_gain"
//        case intGain = "int_gain"
//        case attackRange = "attack_range"
//        case projectileSpeed = "projectile_speed"
//        case attackRate = "attack_rate"
//        case baseAttackTime = "base_attack_time"
//        case attackPoint = "attack_point"
//        case moveSpeed = "move_speed"
//        case turnRate = "turn_rate"
//        case cmEnabled = "cm_enabled"
//        case legs
//        case dayVision = "day_vision"
//        case nightVision = "night_vision"
//
//    }
//}
//
//enum  : String, Codable {
//    case melee = "Melee"
//    case ranged = "Ranged"
//}
//
//enum PrimaryAttr: String, Codable {
//    case agi = "agi"
//    case all = "all"
//    case int = "int"
//    case str = "str"
//}
//
//enum Role: String, Codable {
//    case carry = "Carry"
//    case disabler = "Disabler"
//    case durable = "Durable"
//    case escape = "Escape"
//    case initiator = "Initiator"
//    case nuker = "Nuker"
//    case pusher = "Pusher"
//    case support = "Support"
//}
//
//typealias Welcome = [Hero]

