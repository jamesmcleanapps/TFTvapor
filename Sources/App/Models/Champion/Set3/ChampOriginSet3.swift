//
//  ChampOriginSet3.swift
//  App
//
//  Created by James Mclean on 19/03/2020.
//


import Foundation


enum ChampOriginSet3: String, CaseIterable, Codable {
    
    case astro, battlecast, celestial, chrono, cybernetic, darkStar = "dark star",  mechPilot = "mech pilot", rebel, spacePirate = "space pirate", starGuardian = "star guardian"
    
    static func getOriginInfo(origin: String) -> Details? {
        switch origin {
            
        case "astro":
            return Details(main: "Astros have 30 reduced mana cost",
                           benefit1: "3  -  Active"
            )
            
        case "battlecast":
            return Details(main: "Upon dealing or taking 10 instances of damage, Battlecast champions heal if below half health or deal damage to the nearest enemy if above half health.",
                           benefit1: "2  -  80 Healing or Damage",
                           benefit2: "4  -  180 Healing or Damage",
                           benefit3: "6  -  480 Healing or Damage",
                           benefit4: "8  -  880 Healing or Damage"
            )
            
        case "celestial":
            return Details(main: "All allies heal for a percent of the damage they deal with spells and attacks.",
            benefit1: "2  -  15% Healing",
            benefit2: "4  -  45% Healing",
            benefit3: "6  -  150% Healing"
            )
                           
        case "chrono":
            return Details(main: "All allies gain 15% Attack Speed.",
            benefit1: "2  -  every 8 seconds",
            benefit2: "4  -  every 3.5 seconds",
            benefit3: "6  -  every 1.5 seconds",
            benefit4: "8  -  every 0.75 seconds"
            )
        case "cybernetic":
            return Details(main: "Cybernetic champions with at least one item gain Health and Attack Damage.",
            benefit1: "3  -  300 Health & 35 Attack Damage",
            benefit2: "6  -  550 Health & 70 Attack Damage",
            benefit3: nil
            )
        case "dark star":
            return Details(main: "When an ally dies, all other allied Dark Star Champions gain Attack Damage and Spell Power",
            benefit1: "2  -  +8 AD and Spell Power",
            benefit2: "4  -  +18 AD and Spell Power",
            benefit3: "6  -  +28 AD and Spell Power",
            benefit4: "8  -  +38 AD and Spell Power"
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
            benefit1: "3  -  15 Total Mana",
            benefit2: "6  -  25 Total Mana",
            benefit3: "9  -  45 Total Mana"
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
        return 2
    case .mechPilot:
        return 3
    case .rebel:
        return 3
    case .spacePirate:
        return 2
    case .starGuardian:
        return 3
    case .astro:
        return 3
    case .battlecast:
        return 2
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
        case .battlecast:
            return ItemsSet3.shared.battlecastHexcore
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
            case ItemsSet3.shared.battlecastHexcore:
            return .battlecast
        default:
            return nil
        }
    }
    
}

