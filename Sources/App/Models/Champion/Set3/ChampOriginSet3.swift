//
//  ChampOriginSet3.swift
//  App
//
//  Created by James Mclean on 19/03/2020.
//


import Foundation


enum ChampOriginSet3: String, CaseIterable, Codable {
    
    case celestial, chrono, cybernetic, darkStar = "dark star",  mechPilot = "mech pilot", rebel, spacePirate = "space pirate", starGuardian = "star guardian", valkyrie, void
    
    static func getOriginInfo(origin: String) -> Details? {
        switch origin {
            
        case "celestial":
            return Details(main: "All allies heal for a percent of the damage they deal with spells and attacks.",
            benefit1: "2  -  15% Healing",
            benefit2: "4  -  35% Healing",
            benefit3: "6  -  60% Healing"
            )
                           
        case "chrono":
            return Details(main: "All allies gain 15% Attack Speed.",
            benefit1: "2  -  every 8 seconds",
            benefit2: "4  -  every 4 seconds",
            benefit3: "6  -  every 2 seconds"
            )
        case "cybernetic":
            return Details(main: "Cybernetic champions with at least one item gain Health and Attack Damage.",
            benefit1: "3  -  350 Health & 35 Attack Damage",
            benefit2: "6  -  700 Health & 70 Attack Damage",
            benefit3: nil
            )
        case "dark star":
            return Details(main: "When a Dark Star Champion dies, all other allied Dark Star Champions gain Attack Damage and Spell Power",
            benefit1: "3  -  +20 AD and Spell Power",
            benefit2: "6  -  +25 AD and Spell Power",
            benefit3: "9  -  +35 AD and Spell Power"
            )
        case "mech pilot":
            return Details(main: "At the start of combat, three random Mech-Pilots are teleported into a Super-Mech. The Super-Mech has the combined Health, Attack Damage, and Traits of its Pilots, as well as 3 random items from among them. When the Super-Mech dies, the pilots are ejected and continue to fight.",
            benefit1: "3  -  Active",
            benefit2: nil,
            benefit3: nil
            )
        case "rebel":
            return Details(main: "At the start of combat, Rebels gain a shield and increased damage for each adjacent Rebel.",
            benefit1: "3  -  150 Shield & 10% Damage",
            benefit2: "6  -  210 Shield & 12% Damage",
            benefit3: "9  -  330 Shield & 15% Damage"
            )
        case "space pirate":
            return Details(main: "Whenever a Space Pirate lands a killing blow on a Champion there is a chance to drop extra loot.",
            benefit1: "2  -  50% for 1 Gold",
            benefit2: "4  -  50% for 1 Gold and 25% for a component item",
            benefit3: nil
            )
        case "star guardian":
            return Details(main: "Star Guardian's spellcasts grant Mana to other Star Guardians. (Spreads among them)",
            benefit1: "3  -  30 Total Mana",
            benefit2: "6  -  50 Total Mana",
            benefit3: nil
            )
        case "valkyrie":
            return Details(main: "Valkyrie attacks and spells always critically strike targets below 40% health.",
            benefit1: "2  -  Active",
            benefit2: nil,
            benefit3: nil
            )
        case "void":
            return Details(main: "Attacks and spells from Void Champions deal true damage.",
            benefit1: "3  -  Active",
            benefit2: nil,
            benefit3: nil
            )
            
        default:
            return nil
        }
    }
    
    
    static func minimumUnitsForBonus(origin: ChampOriginSet3) -> Int {
    switch origin {
    case .celestial:
        return 2
    case .chrono:
        return 2
    case .cybernetic:
        return 3
    case .darkStar:
        return 3
    case .mechPilot:
        return 3
    case .rebel:
        return 3
    case .spacePirate:
        return 2
    case .starGuardian:
        return 3
    case .valkyrie:
        return 2
    case .void:
        return 3
        }
    }
    
    
    static func itemForBonus(origin: ChampOriginSet3) -> CombinedItem? {
        switch origin {
        case .celestial:
            return ItemsSet3.shared.celestialOrb
        case .rebel:
            return ItemsSet3.shared.rebelMedal
        case .starGuardian:
            return ItemsSet3.shared.starGuardiansCharm
        case .darkStar:
            return ItemsSet3.shared.darkStarsHeart
        default:
            return nil
        }
    }
    
    static func bonusForItem(_ item: CombinedItem) -> ChampOriginSet3? {
        switch item {
        case ItemsSet3.shared.celestialOrb:
            return .celestial
        case ItemsSet3.shared.rebelMedal:
            return .rebel
        case ItemsSet3.shared.starGuardiansCharm:
            return starGuardian
        case ItemsSet3.shared.darkStarsHeart:
            return .darkStar
        default:
            return nil
        }
    }
    
}

