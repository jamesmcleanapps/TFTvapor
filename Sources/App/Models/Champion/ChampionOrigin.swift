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
    
    static func getOriginInfo(origin: String) -> OriginDetails {
        switch origin {
        case "demon":
            return OriginDetails(
                main: "Demon basic attacks have a 40% chance to burn 20 mana from their target and gain mana in return.",
                benefit1: "2  -  15 Mana Returned",
                benefit2: "4  -  30 Mana Returned",
                benefit3: "6  -  45 Mana Returned")
        case "dragon":
            return OriginDetails(
                main: "Dragons gain increased resistance to Magic Damage",
                benefit1: "2  -  All Dragons gain 75% resistance to Magic Damage",
                benefit2: nil,
                benefit3: nil)
        case "exile":
            return OriginDetails(
                main: "If an Exile has no adjacent allies at the start of combat, they gain a shield equal to 100% of their maximum health.",
                benefit1: "1  -  Gain a shield equal to 100% of maximum health.",
                benefit2: nil,
                benefit3: nil)
        case "glacial":
            return OriginDetails(
                main: "Attacks from Glacials have a chance to stun for 1.5s.",
                benefit1: "2  -  20% Chance to Stun",
                benefit2: "4  -  33% Chance to Stun",
                benefit3: "6  -  50% Chance to Stun")
            
        case "hextech":
            return OriginDetails(
                main: "At the start of combat, launch a pulse bomb that temporarily disables nearby enemy items for 5 seconds.",
                benefit1: "2  -  Within 1 Hex",
                benefit2: "4  -  Within 2 Hexes",
                benefit3: nil)
        
        case "imperial":
            return OriginDetails(
                main: "Imperials deal double damage.",
                benefit1: "2  -  One Random Imperial",
                benefit2: "4  -  All Imperials",
                benefit3: nil)
            
        case "ninja":
            return OriginDetails(
                main: "Ninjas gain bonus Attack Damage and Ability Power. Ninja trait only activates when you have exactly 1 or all 4 Ninjas.",
                benefit1: "1  -  Ninja gains +50 Attack Damage and Ability Power",
                benefit2: "4  -  Ninjas gain +80 Attack Damage and Ability Power",
                benefit3: nil)
            
        case "noble":
            return OriginDetails(
                main: "Noble buff grants 50 armor and 50 magic resistance and basic attacks restore 30 health on-hit.",
                benefit1: "3  -  1 Random Ally",
                benefit2: "6  -  All Allies",
                benefit3: nil)
            
        case "phantom":
            return OriginDetails(
                main: "Phantoms curse a random enemy at the start of combat, setting their HP to 100.",
                benefit1: "2  -  Curse a random enemy at the start of combat, setting their HP to 100",
                benefit2: nil,
                benefit3: nil)
            
        case "pirate":
            return OriginDetails(
                main: "Pirates earn up to 4 additional gold after combat against another player.",
                benefit1: "3  -  Earn up to 4 additional gold after combat against another player",
                benefit2: nil,
                benefit3: nil)
        
        case "robot":
            return OriginDetails(
                main: "Robots start combat at full mana.",
                benefit1: "1  -  Robots start combat at full mana",
                benefit2: nil,
                benefit3: nil)
            
        case "void":
            return OriginDetails(
                main: "Void units deal true damage.",
                benefit1: "2  -  One random void champion deals true damage this combat",
                benefit2: "4  -  All your void champions deal true damage this combat",
                benefit3: nil)
            
        case "wild":
            return OriginDetails(
                main: "Wild attacks generate stacks of Fury (up to 5). Each stack gives 10% attack speed.",
                benefit1: "2  -  Wild allies only",
                benefit2: "4  -  All allies and their basic attacks can't miss",
                benefit3: nil)
        
        case "yordle":
            return OriginDetails(
                main: "Yordles have a chance to dodge enemy attacks.",
                benefit1: "3  -  30% Chance to Dodge",
                benefit2: "6  -  60% Chance to Dodge",
                benefit3: "9  -  90% Chance to Dodge")
        default:
            return OriginDetails(main: " ", benefit1: nil, benefit2: nil, benefit3: nil)
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

struct OriginDetails: Codable {
    var main: String
    var benefit1: String?
    var benefit2: String?
    var benefit3: String?
}

extension OriginDetails: Content {}
