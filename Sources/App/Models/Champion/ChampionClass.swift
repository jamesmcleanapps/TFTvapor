//
//  ChampionClass.swift
//  App
//
//  Created by James Mclean on 30/09/2019.
//

import Foundation
import Vapor

enum ChampionClass: String, CaseIterable, Codable, ReflectionDecodable {
    case assassin, blademaster, brawler, elementalist, guardian, gunslinger, knight, ranger, shapeshifter, sorcerer
    
    static func getClassInfo(classStr: String) -> ClassDetails {
        switch classStr {
        case "assassin":
            return ClassDetails(
                main: "Assassins leap to the farthest enemy at the start of combat and have increased Crit Chance and Crit Damage.",
                benefit1: "3  -  +75% Crit Damage & +10% Crit Chance",
                benefit2: "6  -  +150% Crit Damage & +20% Crit Chance",
                benefit3: "9  -  +225% Crit Damage & +30% Crit Chance"
            )
        case "blademaster":
            return ClassDetails(
                main: "Blademasters have a 35% chance to strike additional times each attack.",
                benefit1: "3  -  One Additional Strike",
                benefit2: "6  -  Two Additional Strikes",
                benefit3: "9  -  Three Additional Strikes")
            
        case "brawler":
            return ClassDetails(
                main: "Brawlers receive bonus maximum health.",
                benefit1: "2  -  +250 Bonus Health",
                benefit2: "4  -  +500 Bonus Health",
                benefit3: "6  -  +900 Bonus Health")
        case "elementalist":
            return ClassDetails(
                main: "Elementalists gain double mana from attacks.",
                benefit1: "3  -  At the start of combat, summon a Golem", benefit2: nil, benefit3: nil)
        case "guardian":
            return ClassDetails(
                main: "At the start of combat, Guardians grant adjacent allies bonus armor. This effect stacks but Guardians do not benefit from the bonus.",
                benefit1: "2  -  At the start of combat, all Guardians grant adjacent allies +35 armor.",
                benefit2: nil,
                benefit3: nil)
        case "gunslinger":
            return ClassDetails(
                main: "After attacking, Gunslingers have a 50% chance to fire additional attacks.",
                benefit1: "2  -  Attack 1 other random enemy",
                benefit2: "4  -  Attack 2 other random enemies",
                benefit3: "6  -  Attack 3 other random enemies")
        case "knight":
            return ClassDetails(
                main: "Knights block damage from all sources.",
                benefit1: "2  -  15 Damage Blocked",
                benefit2: "4  -  30 Damage Blocked",
                benefit3: "6  -  55 Damage Blocked")
        case "ranger":
            return ClassDetails(
                main: "Rangers have a chance to double their attack speed for the next 3s.",
                benefit1: "2  -  25% Chance to Double Attack Speed",
                benefit2: "4  -  70% Chance to Double Attack Speed",
                benefit3: nil)
        case "shapeshifter":
            return ClassDetails(
                main: "Shapeshifters gain bonus maximum Health when they transform.",
                benefit1: "3  -  +60% Bonus Maximum Health",
                benefit2: "6  -  +100% Bonus Maximum Health",
                benefit3: nil)
        case "sorcerer":
            return ClassDetails(
                main: "Sorcerers gain double mana from attacking and allies have increased spell damage.",
                benefit1: "3  -  +40%  Bonus Ability Power",
                benefit2: "6  -  +100% Bonus Ability Power",
                benefit3: "9  -  +175% Bonus Ability Power")
        default:
            return ClassDetails(main: "None", benefit1: nil, benefit2: nil, benefit3: nil)
        }
    }
    
    static func minimumUnitsForBonus(origin: ChampionClass) -> Int {
        switch origin {
        case .assassin:
            return 3
        case .blademaster:
            return 3
        case .brawler:
            return 2
        case .elementalist:
            return 3
        case .guardian:
            return 2
        case .gunslinger:
            return 2
        case .knight:
            return 1
        case .ranger:
            return 2
        case .shapeshifter:
            return 3
        case .sorcerer:
            return 3
        }
    }
    
    static func itemForBonus(champClass: ChampionClass) -> CombinedItem? {
        switch champClass {
        case .assassin:
            return Items.shared.youmuusGhostblade
        case .blademaster:
            return Items.shared.bladeOfTheRuinedKing
        case .knight:
            return Items.shared.knightsVow
        case .sorcerer:
            return Items.shared.yuumi
        default:
            return nil
        }
    }
    
    static func bonusForItem(_ item: CombinedItem) -> ChampionClass? {
        switch item {
        case Items.shared.youmuusGhostblade:
            return .assassin
        case Items.shared.bladeOfTheRuinedKing:
            return .gunslinger
        case Items.shared.knightsVow:
            return .knight
        case Items.shared.yuumi:
            return .sorcerer
        default:
            return nil
        }
    }
    
    static func reflectDecoded() throws -> (ChampionClass, ChampionClass) {
        return (.ranger, .shapeshifter)
    }
    
}

struct ClassDetails: Codable {
    var main: String
    var benefit1: String?
    var benefit2: String?
    var benefit3: String?
}

extension ClassDetails: Content {}
