//
//  Enemy.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 9/6/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation
import SpriteKit

protocol Enemy {
    var name: String { get set }
    var sprites: [SKSpriteNode?] { get set }
    var level: Int { get set }
    var challenge: Double { get set }
    var armor: Armor { get set }
    
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
    
    var armorClass: Int { get set }
    var hitPoints: Int { get set }
    var manaPoints: Int { get set }
    
    //TODO: Treasure
    
    init()
}

class Bat: Enemy {
    var name: String = "Bat"
    var sprites: [SKSpriteNode?] = [SKSpriteNode(fileNamed: "bat0"),
                                   SKSpriteNode(fileNamed: "bat1"),
                                   SKSpriteNode(fileNamed: "bat2"),
                                   SKSpriteNode(fileNamed: "bat3")]
    var level: Int = 1
    var challenge: Double = 0.25
    var armor: Armor = .none
    
    var strength: Int = 1
    var dexterity: Int = 1
    var constitution: Int = 1
    var intelligence: Int = 1
    var wisdom: Int = 1
    var charisma: Int = 1
    
    var agility: Int
    var arcana: Int = 0
    var brawn: Int = 0
    var evasion: Int
    var perception: Int
    var religion: Int = 0
    var stealth: Int
    
    var armorClass: Int
    var hitPoints: Int
    var manaPoints: Int = 0
    
    required init() {
        
        agility = level + dexterity
        evasion = level + dexterity
        perception = level + wisdom
        stealth = level + dexterity
        
        armorClass = armor.armorBonus + evasion
        hitPoints = level * 2 + constitution
        
    }
}
