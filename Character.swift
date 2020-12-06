//
//  Character.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 9/3/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation

protocol CharacterClass {
    var name: String { get set }
    var level: Int { get set }
    var currentXP: Int { get set }
    
    var armorClass: Int { get set }
    var currentHitPoints: Int { get set }
    var maximumHitPoints: Int { get set }
    var currentManaPoints: Int { get set }
    var maximumManaPoints: Int { get set }
    var currentStamina: Int { get set }
    var maximumStamina: Int { get set }
    
    var strength: Int { get set }
    var dexterity: Int { get set }
    var constitution: Int { get set }
    var intelligence: Int { get set }
    var wisdom: Int { get set }
    var charisma: Int { get set }
    
    var agility: Int { get set }
    var arcana: Int { get set }
    var brawn: Int { get set }
    var evasion: Int { get set }
    var perception: Int { get set }
    var religion: Int { get set }
    var stealth: Int { get set }
    
    var gold: Int { get set }
    var gems: Int { get set }
    
    var mainHand: Weapon? { get set }
    var offHandOffensive: Weapon? { get set }
    var offHandDefensive: Armor? { get set }
    var armor: Armor? { get set }
    var accessory1: Accessory? { get set }
    var accessory2: Accessory? { get set }
    
    var weaponBag: [Weapon] { get set }
    var armorBag: [Armor] { get set }
    var itemBag: [Item] { get set }
    var weaponBagMax: Int { get set }
    var armorBagMax: Int { get set }
    var itemBagMax: Int { get set }
}

class Player: CharacterClass {
    var name: String = ""
    var level: Int = 1
    var currentXP: Int = 0
    
    var armorClass: Int = 0
    var currentHitPoints: Int = 0
    var maximumHitPoints: Int = 0
    var currentManaPoints: Int = 0
    var maximumManaPoints: Int = 0
    var currentStamina: Int = 0
    var maximumStamina: Int = 0
    
    var strength: Int = 1
    var dexterity: Int = 1
    var constitution: Int = 1
    var intelligence: Int = 1
    var wisdom: Int = 1
    var charisma: Int = 1
    
    var agility: Int = 0
    var arcana: Int = 0
    var brawn: Int = 0
    var evasion: Int = 0
    var perception: Int = 0
    var religion: Int = 0
    var stealth: Int = 0
    
    var gold: Int = 0
    var gems: Int = 0
    
    var mainHand: Weapon? = nil
    var offHandOffensive: Weapon? = nil
    var offHandDefensive: Armor? = nil
    var armor: Armor? = nil
    var accessory1: Accessory? = nil
    var accessory2: Accessory? = nil
    
    var weaponBag: [Weapon] = []
    var armorBag: [Armor] = []
    var itemBag: [Item] = []
    var weaponBagMax: Int = 4
    var armorBagMax: Int = 4
    var itemBagMax: Int = 8
}
