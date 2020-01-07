//
//  ChampionElementSet2.swift
//  App
//
//  Created by James Mclean on 05/11/2019.
//

import Foundation



enum ChampionElementSet2: String, CaseIterable, Codable {
    case cloud, crystal, desert, electric, glacial, inferno, light, lunar, mountain, ocean, poison, shadow, steel, variable, woodland
    
    static func getElementInfo(element: String) -> Details? {
        switch element {
        case "cloud":
            return Details(main: "All allies gain dodge chance.",
                                 benefit1: "2  -  +20% Dodge Chance",
                                 benefit2: "3  -  +25% Dodge Chance",
                                 benefit3: "4  -  +35% Dodge Chance")
            
        case "crystal":
            return Details(main: "Crystal Champions have a maximum amount of damage they can take from a single hit.",
                                 benefit1: "2  -  100 Max Damage",
                                 benefit2: "4  -   60 Max Damage",
                                 benefit3: nil)
        case "desert":
            return Details(main: "Reduces each enemy's armor.",
                                 benefit1: "2  -  50% Armor Reduction",
                                 benefit2: "4  -  90% Armor Reduction",
                                 benefit3: nil)
        case "electric":
            return Details(main: "Electric champions shock nearby enemies whenever they deal or receive a critical strike.",
                                 benefit1: "2  -  80 Damage",
                                 benefit2: "3  -  250 Damage",
                                 benefit3: "4  -  500 Damage")
        case "glacial":
            return Details(main: "Basic Attacks from Glacials have a chance to stun their target for 1.50 seconds.",
                                 benefit1: "2  -  20% Chance to Stun",
                                 benefit2: "4  -  35% Chance to Stun",
                                 benefit3: "6  -  50% Chance to Stun")
        case "inferno":
            return Details(main: "Inferno spell damage or critical strikes burn the ground beneath the target, dealing a percent of that spell's pre-mitigation damage as magic damage over 4 seconds.",
                                 benefit1: "3  -  70% Damage, 1 Hex on Fire",
                                 benefit2: "6  -  140% Damage, 3 Hex on Fire",
                                 benefit3: "9  -  210% Damage, 5 Hex on Fire")
        case "light":
            return Details(main: "Whenever a Light Champion dies, all other Light Champions gain Attack Speed and are healed for 25% of their Maximum Health.",
                                 benefit1: "3  -  +15% Attack Speed",
                                 benefit2: "6  -  +25% Attack Speed",
                                 benefit3: "9  -  +35% Attack Speed")
            
        case "lunar":
            return Details(main: "Every 7 seconds, your team gains 20% Critical Strike Chance, 20% Critical Strike Damage, and 10% Spell Power (Stacks up to 4 times).",
                           benefit1: "2 - Lunar Enabled",
                           benefit2: nil,
                           benefit3: nil)
        case "mountain":
            return Details(main: "At the start of the combat, a random ally receives a 1500 health Stoneshield.",
                                 benefit1: "2  -  1 ally gains 1500 shield",
                                 benefit2: nil,
                                 benefit3: nil)
        case "ocean":
            return Details(main: "All allies gain additional mana every 4 seconds.",
                                 benefit1: "2  -  +15 Mana",
                                 benefit2: "4  -  +30 Mana",
                                 benefit3: "6  -  +60 Mana")
        case "poison":
            return Details(main: "Poison Champions apply Neurotoxin when they deal damage, increasing the target's mana cost by 50%.",
                                 benefit1: "3  -  All Poison Champs reduce targets mana cost",
                                 benefit2: nil,
                                 benefit3: nil)
        case "shadow":
            return Details(main: "Shadow champions gain bonus damage for 4 seconds. Resets when they participate in a takedown.",
                                 benefit1: "3  -  +60% damage",
                                 benefit2: "6  -  +140% damage and resets when any shadow champion gets a takedown",
                                 benefit3: nil)
        case "steel":
            return Details(main: "Steel Champions gain damage immunity for a few seconds when they are reduced below 50% health.",
                           benefit1: "2  -  2 seconds of immunity",
                           benefit2: "3  -  3 seconds of immunity",
                           benefit3: "4  -  4 seconds of immunity")
        case "variable":
            return Details(main: "Changes each game based on the Element that was randomly chosen in that particular game. It can be one of the following: Wind, Mountain, Ocean, or Inferno. This also coincides with the new Elemental Hex mechanic!",
                                 benefit1: nil,
                                 benefit2: nil,
                                 benefit3: nil)
        case "woodland":
            return Details(main: "At the beginning of the round, a random Forest champion clones themselves.",
                                 benefit1: "3  -  1 Clone",
                                 benefit2: nil,
                                 benefit3: nil)
        default:
            return nil
        }
    }
    
    static func minimumUnitsForBonus(element: ChampionElementSet2) -> Int {
        switch element {
        case .cloud:
            return 2
        case .crystal:
            return 2
        case .desert:
            return 2
        case .electric:
            return 2
        case .glacial:
            return 2
        case .inferno:
            return 3
        case .light:
            return 3
        case .lunar:
            return 2
        case .mountain:
            return 2
        case .ocean:
            return 2
        case .poison:
            return 3
        case .shadow:
            return 3
        case .steel:
            return 2
        case .variable:
            return 5
        case .woodland:
            return 3
        }
    }
    
    static func itemForBonus(element: ChampionElementSet2) -> CombinedItem? {
        switch element {
        case .glacial:
            return ItemsSet2.shared.frozenMallet
        case.inferno:
            return ItemsSet2.shared.infernosCinder
        case .light:
            return ItemsSet2.shared.talismanOfLight
        default:
            return nil
        }
    }
    
    static func bonusForItem(_ item: CombinedItem) -> ChampionElementSet2? {
        switch item {
        case ItemsSet2.shared.frozenMallet:
            return .glacial
        case ItemsSet2.shared.infernosCinder:
            return .inferno
        case ItemsSet2.shared.talismanOfLight:
            return .light
        default:
            return nil
        }
    }
}
