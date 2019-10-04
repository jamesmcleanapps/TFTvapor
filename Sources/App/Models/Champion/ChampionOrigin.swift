//
//  ChampionOrigin.swift
//  App
//
//  Created by James Mclean on 30/09/2019.
//

import Foundation
import Vapor

enum ChampionOrigin: String, CaseIterable, Codable, ReflectionDecodable {
    case demon, dragon, exile, glacial, hextech, imperial, noble, ninja, pirate, phantom, robot, wild, void, yordle
    
    static func getOriginInfo(origin: String) -> String {
        switch origin {
        case "demon":
            return "Demon basic attacks have a 40% chance to burn 20 mana from their target and return mana to the attacker"
        case "dragon":
            return "Deploying both Dragons makes them 75% resistant to magic damage."
        case "exile":
            return "Exiles start combat with a shield if no other champions are adjacent to them at the start of combat."
        case "glacial":
            return "Deploying multiple Glacials grants their attacks a chance to stun their target, increasing with more Glacials."
        case "robot":
            return "Robots start combat with full mana."
        case "imperial":
            return "Deploying multiple Imperials grants one random Imperial double damage. Deploying every Imperial grants all of them double damage."
        case "noble":
            return "Deploying multiple Nobles grants one random champion armor, magic resistance and on-attack healing. Deploying every Noble grants your whole team armor, magic resistance and on-attack healing."
        case "ninja":
            return "Deploying exactly one Ninja grants it AD and AP. Deploying every Ninja grants all of them even more."
        case "pirate":
            return "Deploying enough Pirates grants you extra gold at the end of each round."
        case "phantom":
            return "Deploying enough Phantoms curses a random enemy at the start of combat, dropping their starting health."
        case "wild":
            return "Deploying multiple Wilds grants them attack speed as they attack. Deploying enough Wilds grants your whole team attack speed as they attack."
        case "void":
            return "2: A random Void champ deals true dameage.    4: All Void champions deal true damage"
        case "yordle":
            return "Deploying multiple Yordles causes attacks against them to sometimes miss, increasing with more Yordles."
        case "hextech":
            return "When combat begins, launch a pulse bomb that disables items for some time."
        default:
            return ""
        }
    }
    
    static func minimumUnitsForBonus(origin: ChampionOrigin) -> Int {
        switch origin {
        case .demon:
            return 2
        case .dragon:
            return 2
        case .exile:
            return 1
        case .glacial:
            return 2
        case .hextech:
            return 2
        case .imperial:
            return 2
        case .ninja:
            return 1
        case .noble:
            return 3
        case .phantom:
            return 2
        case .pirate:
            return 3
        case .robot:
            return 1
        case .void:
            return 3
        case .wild:
            return 2
        case .yordle:
            return 3
        }
    }
    
    static func itemForBonus(origin: ChampionOrigin) -> CombinedItem? {
        switch origin {
        case .demon:
            return Items.shared.darkin
        case .glacial:
            return Items.shared.frozenMallet
        case .yordle:
            return Items.shared.mittens
        default:
            return nil
        }
    }
    
    static func bonusForItem(_ item: CombinedItem) -> ChampionOrigin? {
        switch item {
        case Items.shared.darkin:
            return .demon
        case Items.shared.frozenMallet:
            return .glacial
        case Items.shared.mittens:
            return .yordle
        default:
            return nil
        }
    }
    
    static func reflectDecoded() throws -> (ChampionOrigin, ChampionOrigin) {
        return (.demon, .dragon)
    }
}
