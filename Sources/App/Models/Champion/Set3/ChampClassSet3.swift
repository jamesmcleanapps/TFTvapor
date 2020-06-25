//
//  ChampClassSet3.swift
//  App
//
//  Created by James Mclean on 19/03/2020.
//


import Foundation


enum ChampClassSet3: String, CaseIterable, Codable {
    
    case blademaster, blaster, brawler, demolitionist, infiltrator, manaReaver = "mana-reaver", mercenary, mystic, paragon, protector, sniper, sorcerer, starship, vanguard
    
    
    static func getClassInfo(classStr: String) -> Details? {
        switch classStr {
        case "blademaster":
            return Details(main: "Blademasters' Basic Attacks have a chance on hit to trigger two additional attacks against their target. These additional attacks deal damage like Basic Attacks and trigger on-hit effects.",
                           benefit1: "3  -  30% Chance to trigger",
                           benefit2: "6  -  65% Chance to trigger",
                           benefit3: "9  -  100% Chance to trigger"
                           )
            
        case "blaster":
            return Details(main: "Every fourth Basic Attack from a Blast fires additional attacks at random enemies. These addiotional attacks deal damage like Basic Attacks and trigger on-hit effects.",
            benefit1: "2  -  3 Additional Attacks",
            benefit2: "4  -  6 Additional Attacks",
            benefit3: nil
            )
        case "brawler":
            return Details(main: "Brawlers gain bonus Maximum Health.",
            benefit1: "3  -  350 Health",
            benefit2: "6  -  600 Health",
            benefit3: nil
            )
        case "demolitionist":
            return Details(main: "Damage from Demolitionists' spellcasts stun their targets for 1.50 seconds. (Once per spellcast)",
            benefit1: "2  -  Active",
            benefit2: nil,
            benefit3: nil
            )
        case "infiltrator":
            return Details(main: "At the start of combat, Infiltrators move to the enemy's backline. Infiltrators gain Attack Speed for 6 seconds at the start of combat. Refreshes on takedown",
            benefit1: "2  -  40% Bonus Attack Speed",
            benefit2: "4  -  80% Bonus Attack Speed.",
            benefit3: "6  -  120% Bonus Attack Speed."
            )
        case "mana-reaver":
            return Details(main: "Mana-Reaver's Basic Attacks increase the mana cost of their target’s next spell by 40%.",
            benefit1: "2  -  40% increased cost",
            benefit2: nil,
            benefit3: nil
            )
        case "mercenary":
            return Details(main: "Mercenaries can buy upgrades for their Spells in the shop.",
            benefit1: "1  -  Active",
            benefit2: nil,
            benefit3: nil
            )
        case "mystic":
            return Details(main: "All allies gain Magic Resistance.",
            benefit1: "2  -  50 Magic Resistance",
            benefit2: "4  -  120 Magic Resistance",
            benefit3: nil
            )
            
        case "paragon":
            return Details(main: "Basic attacks from Star Guardian allies deal true damage. Attacks from all other allies deal magic damage.",
            benefit1: "1  -  Active")
            
        case "protector":
            return Details(main: "Protectors shield themselves for 4 seconds whenever they cast a spell. This shield doesn't stack.",
            benefit1: "2  -  30% Maximum Health Shield",
            benefit2: "4  -  40% Maximum Health Shield",
            benefit3: "6  -  55% Maximum Health Shield"
            )
        case "sniper":
            return Details(main: "Snipers deal increased damage for each hex between themselves and their target.",
            benefit1: "2  -  10% Damage Increase",
            benefit2: "4  -  18% Damage Increase",
            benefit3: nil
            )
        case "sorcerer":
            return Details(main: "All allies have increased Spell Power.",
            benefit1: "2  -  20% Spell Power",
            benefit2: "4  -  45% Spell Power",
            benefit3: "6  -  75% Spell Power"
            )
        case "starship":
            return Details(main: "Starships gain 40 mana per second, maneuver around the board, and are immune to movement impairing effects, but can't Basic Attack.",
            benefit1: "1  -  Active",
            benefit2: nil,
            benefit3: nil
            )
        case "vanguard":
            return Details(main: "Vanguard champions gain bonus Armor.",
            benefit1: "2  -  125 Armor",
            benefit2: "4  -  300 Armor",
            benefit3: "6  -  1000 Armor"
            )
            
        default:
            return nil
        }
    }
    
    
    static func minimumUnitsForBonus(chmpClass: ChampClassSet3) -> Int {
        switch chmpClass {
        case .blademaster:
            return 3
        case .blaster:
            return 2
        case .brawler:
            return 2
        case .demolitionist:
            return 2
        case .infiltrator:
            return 2
        case .manaReaver:
            return 2
        case .mercenary:
            return 1
        case .mystic:
            return 2
        case .paragon:
            return 1
        case .protector:
            return 2
        case .sniper:
            return 2
        case .sorcerer:
            return 2
        case .starship:
            return 1
        case .vanguard:
            return 2
        }
    }
    
    
    static func itemForBonus(champClass: ChampClassSet3) -> CombinedItem? {
        switch champClass {
        case .blademaster:
            return ItemsSet3.shared.bladeOfTheRuinedKing
        case .infiltrator:
            return ItemsSet3.shared.infiltratorsTalons
        case .protector:
            return ItemsSet3.shared.protectorsChestguard
        default:
            return nil
        }
    }
    
    static func bonusForItem(_ item: CombinedItem) -> ChampClassSet3? {
        switch item {
        case ItemsSet3.shared.bladeOfTheRuinedKing:
            return .blademaster
        case ItemsSet3.shared.infiltratorsTalons:
            return .infiltrator
        case ItemsSet3.shared.protectorsChestguard:
            return .protector
        default:
            return nil
        }
    }
    
}

