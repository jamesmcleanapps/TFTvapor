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

    static func getClassInfo(classStr: String) -> String {
        switch classStr {
        case "assassin":
            return "Deploying multiple Assassins grants them increased critical strike damage and critical chance, increasing with more Assassins."
        case "blademaster":
            return "Deploying multiple Blademasters grants their attacks a chance to hit extra times, increasing with more Blademasters."
        case "brawler":
            return "Deploying multiple Brawlers grants them extra health, increasing with more Brawlers."
        case "elementalist":
            return "Deploying enough Elementalists summons an Elemental to fight for you at the start of combat."
        case "guardian":
            return "Deploying both Guardians grants 50 armor to allies that start combat adjacent to them."
        case "gunslinger":
            return "Deploying multiple Gunslingers grants their attacks a chance to hit additional targets, increasing with more Gunslingers."
        case "knight":
            return "Deploying multiple Knights lets your team block damage from incoming attacks, increasing with more Knights."
        case "ranger":
            return "Deploying multiple Rangers grants them a chance to gain a burst of attack speed, increasing with more Rangers."
        case "shapeshifter":
            return "Deploying enough Shapeshifters grants them health on transformation."
        case "sorcerer":
            return "Deploying multiple Sorcerers grants your team ability power, increasing with more Sorcerers."
        default:
            return ""
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
