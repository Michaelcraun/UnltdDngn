//
//  Weapon.swift
//  UnlimitedDungeon
//
//  Created by Michael Craun on 9/3/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation

enum Weapon {
    case battleaxe
    case dagger
    case flail
    case glaive
    case greataxe
    case greatsword
    case halberd
    case handaxe
    case lance
    case lightHammer
    case longsword
    case mace
    case maul
    case morningstar
    case pike
    case quarterstaff
    case rapier
    case scimitar
    case shortsword
    case sickle
    case warPick
    case warhammer
    case whip
    
    var damageMinimum: Int {
        switch self {
        case .battleaxe: return 2       //1d8
        case .dagger: return 0          //1d4
        case .flail: return 2           //1d8
        case .glaive: return 3          //1d10
        case .greataxe: return 4        //1d12
        case .greatsword: return 5      //2d6
        case .halberd: return 3         //1d10
        case .handaxe: return 1         //1d6
        case .lance: return 4           //1d12
        case .lightHammer: return 0     //1d4
        case .longsword: return 2       //1d8
        case .mace: return 1            //1d6
        case .maul: return 5            //2d6
        case .morningstar: return 2     //1d8
        case .pike: return 3            //1d10
        case .quarterstaff: return 1    //1d6
        case .rapier: return 2          //1d8
        case .scimitar: return 1        //1d6
        case .shortsword: return 1      //1d6
        case .sickle: return 0          //1d4
        case .warPick: return 2         //1d8
        case .warhammer: return 2       //1d8
        case .whip: return 0            //1d4
        }
    }
    
    var damageMaximum: Int {
        switch self {
        case .battleaxe: return 5       //1d8
        case .dagger: return 3          //1d4
        case .flail: return 5           //1d8
        case .glaive: return 6          //1d10
        case .greataxe: return 7        //1d12
        case .greatsword: return 8      //2d6
        case .halberd: return 6         //1d10
        case .handaxe: return 4         //1d6
        case .lance: return 7           //1d12
        case .lightHammer: return 3     //1d4
        case .longsword: return 5       //1d8
        case .mace: return 4            //1d6
        case .maul: return 8            //2d6
        case .morningstar: return 5     //1d8
        case .pike: return 6            //1d10
        case .quarterstaff: return 4    //1d6
        case .rapier: return 5          //1d8
        case .scimitar: return 4        //1d6
        case .shortsword: return 4      //1d6
        case .sickle: return 3          //1d4
        case .warPick: return 5         //1d8
        case .warhammer: return 5       //1d8
        case .whip: return 3            //1d4
        }
    }
    
    var weaponRange: Int {
        switch self {
        case .battleaxe: return 1
        case .dagger: return 1
        case .flail: return 1
        case .glaive: return 2
        case .greataxe: return 1
        case .greatsword: return 1
        case .halberd: return 2
        case .handaxe: return 1
        case .lance: return 2
        case .lightHammer: return 1
        case .longsword: return 1
        case .mace: return 1
        case .maul: return 1
        case .morningstar: return 1
        case .pike: return 2
        case .quarterstaff: return 1
        case .rapier: return 1
        case .scimitar: return 1
        case .shortsword: return 1
        case .sickle: return 1
        case .warPick: return 1
        case .warhammer: return 1
        case .whip: return 2
        }
    }
    
    var strBonus: Int {
        switch self {
        case .battleaxe: return 2       //1d8
        case .dagger: return 0          //1d4
        case .flail: return 2           //1d8
        case .glaive: return 3          //1d10
        case .greataxe: return 4        //1d12
        case .greatsword: return 5      //2d6
        case .halberd: return 3         //1d10
        case .handaxe: return 1         //1d6
        case .lance: return 4           //1d12
        case .lightHammer: return 0     //1d4
        case .longsword: return 2       //1d8
        case .mace: return 1            //1d6
        case .maul: return 5            //2d6
        case .morningstar: return 2     //1d8
        case .pike: return 3            //1d10
        case .quarterstaff: return 1    //1d6
        case .rapier: return 2          //1d8
        case .scimitar: return 1        //1d6
        case .shortsword: return 1      //1d6
        case .sickle: return 0          //1d4
        case .warPick: return 2         //1d8
        case .warhammer: return 2       //1d8
        case .whip: return 0            //1d4
        }
    }
    
    var dexBonus: Int {
        switch self {
        case .battleaxe: return 1       //1d8
        case .dagger: return 0          //1d4
        case .flail: return 1           //1d8
        case .glaive: return 2          //1d10
        case .greataxe: return 3        //1d12
        case .greatsword: return 4      //2d6
        case .halberd: return 2         //1d10
        case .handaxe: return 0         //1d6
        case .lance: return 3           //1d12
        case .lightHammer: return 0     //1d4
        case .longsword: return 1       //1d8
        case .mace: return 0            //1d6
        case .maul: return 4            //2d6
        case .morningstar: return 1     //1d8
        case .pike: return 2            //1d10
        case .quarterstaff: return 0    //1d6
        case .rapier: return 1          //1d8
        case .scimitar: return 0        //1d6
        case .shortsword: return 0      //1d6
        case .sickle: return 0          //1d4
        case .warPick: return 1         //1d8
        case .warhammer: return 1       //1d8
        case .whip: return 0            //1d4
        }
    }
    
//    var intBonus: Int {
//        switch self {
//        case .battleaxe: return 0
//        case .dagger: return 0
//        case .flail: return 0
//        case .glaive: return 0
//        case .greataxe: return 0
//        case .greatsword: return 0
//        case .halberd: return 0
//        case .handaxe: return 0
//        case .lance: return 0
//        case .lightHammer: return 0
//        case .longsword: return 0
//        case .mace: return 0
//        case .maul: return 0
//        case .morningstar: return 0
//        case .pike: return 0
//        case .quarterstaff: return 0
//        case .rapier: return 0
//        case .scimitar: return 0
//        case .shortsword: return 0
//        case .sickle: return 0
//        case .warPick: return 0
//        case .warhammer: return 0
//        case .whip: return 0
//        }
//    }
    
    var isHeavy: Bool {
        switch self {
        case .glaive: return true
        case .greataxe: return true
        case .greatsword: return true
        case .halberd: return true
        case .maul: return true
        case .pike: return true
        default: return false
        }
    }
    
    var isLight: Bool {
        switch self {
        case .dagger: return true
        case .handaxe: return true
        case .lightHammer: return true
        case .scimitar: return true
        case .shortsword: return true
        case .sickle: return true
        default: return false
        }
    }
    
    var isFinesse: Bool {
        switch self {
        case .dagger: return true
        case .rapier: return true
        case .scimitar: return true
        case .shortsword: return true
        case .whip: return true
        default: return false
        }
    }
    
    var isVersatile: Bool {
        switch self {
        case .battleaxe: return true
        case .longsword: return true
        case .quarterstaff: return true
        case .warhammer: return true
        default: return false
        }
    }
    
    var isTwoHanded: Bool {
        switch self {
        case .glaive: return true
        case .greataxe: return true
        case .greatsword: return true
        case .halberd: return true
        case .maul: return true
        case .pike: return true
        default: return false
        }
    }
    
    //TODO: Assign gold and gem values
    var goldValue: Int {
        switch self {
        case .battleaxe: return 0
        case .dagger: return 0
        case .flail: return 0
        case .glaive: return 0
        case .greataxe: return 0
        case .greatsword: return 0
        case .halberd: return 0
        case .handaxe: return 0
        case .lance: return 0
        case .lightHammer: return 0
        case .longsword: return 0
        case .mace: return 0
        case .maul: return 0
        case .morningstar: return 0
        case .pike: return 0
        case .quarterstaff: return 0
        case .rapier: return 0
        case .scimitar: return 0
        case .shortsword: return 0
        case .sickle: return 0
        case .warPick: return 0
        case .warhammer: return 0
        case .whip: return 0
        }
    }
}
