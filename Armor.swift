//
//  Armor.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 9/3/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation

enum ArmorType {
    case light
    case medium
    case heavy
    case shield
    case none
}

enum Armor: String {
    case none = ""
    case padded = "Padded Armor"
    case leather = "Leather Armor"
    case studdedLeather = "Studded Leather Armor"
    case hide = "Hide Armor"
    case chainShirt = "Chain Shirt"
    case scaleMail = "Scale Mail Armor"
    case breastplate = "Breastplate"
    case halfPlate = "Half Plate"
    case ringMail = "Ring Mail"
    case chainMail = "Chain Mail"
    case splint = "Splint Armor"
    case plate = "Plate Armor"
    case shield = "Shield"
    
    var armorType: ArmorType {
        switch self {
        case .none: return .none
        case .padded: return .light
        case .leather: return .light
        case .studdedLeather: return .light
        case .hide: return .medium
        case .chainShirt: return .medium
        case .scaleMail: return .medium
        case .breastplate: return .medium
        case .halfPlate: return .medium
        case .ringMail: return .heavy
        case .chainMail: return .heavy
        case .splint: return .heavy
        case .plate: return .heavy
        case .shield: return .shield
        }
    }
    
    var armorBonus: Int {
        switch self {
        case .none: return 0
        case .padded: return 1
        case .leather: return 1
        case .studdedLeather: return 1
        case .hide: return 1
        case .chainShirt: return 1
        case .scaleMail: return 1
        case .breastplate: return 1
        case .halfPlate: return 1
        case .ringMail: return 1
        case .chainMail: return 1
        case .splint: return 1
        case .plate: return 1
        case .shield: return 1
        }
    }
    
    var stealthDisadvantage: Bool {
        switch self {
        case .none: return false
        case .padded: return true
        case .leather: return false
        case .studdedLeather: return false
        case .hide: return false
        case .chainShirt: return false
        case .scaleMail: return true
        case .breastplate: return false
        case .halfPlate: return true
        case .ringMail: return true
        case .chainMail: return true
        case .splint: return true
        case .plate: return true
        case .shield: return false
        }
    }
    
    var offHandEquippable: Bool {
        switch self {
        case .none: return false
        case .padded: return false
        case .leather: return false
        case .studdedLeather: return false
        case .hide: return false
        case .chainShirt: return false
        case .scaleMail: return false
        case .breastplate: return false
        case .halfPlate: return false
        case .ringMail: return false
        case .chainMail: return false
        case .splint: return false
        case .plate: return false
        case .shield: return true
        }
    }
}
