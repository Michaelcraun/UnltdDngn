//
//  Item.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 9/3/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation

enum ItemType {
    case restorative
}

enum Item {
    case potionOfHealing
    case potionOfSkill
    
    var itemType: ItemType {
        switch self {
        case .potionOfHealing: return .restorative
        case .potionOfSkill: return .restorative
        }
    }
    
    var description: String {
        switch self {
        case .potionOfHealing: return "Restores 10 hit points when used."
        case .potionOfSkill: return "Restores 10 skill points when used."
        }
    }
}
