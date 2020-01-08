//
//  ChampionClassSet2.swift
//  App
//
//  Created by James Mclean on 05/11/2019.
//

import Foundation

enum ChampionClassSet2: String, CaseIterable, Codable {
    case alchemist, assassin, avatar, berserker, blademaster, druid, mage, mystic, predator, ranger, soulbound, summoner, warden

    static func getClassInfo(classStr: String) -> Details? {
        switch classStr {
        case "alchemist":
            return Details(main: "Alchemists ignore collision and never stop moving.",
                           benefit1: nil,
                           benefit2: nil,
                           benefit3: nil)
        case "assassin":
            return Details(main: "At the start of  combat, Assassins leap to the farthest enemy. Assassins gain bonus Critical Strike Damage and Chance.",
                           benefit1: "3  -  +50% Critical Strike Damage & +10% Critical Strike Chance",
                           benefit2: "6  -  +150% Critical Strike Damage & +20% Critical Strike Chance",
                           benefit3: nil)
        case "avatar":
            return Details(main: "Avatar champions change between 1 of 10 elements.",
                           benefit1: nil,
                           benefit2: nil,
                           benefit3: nil)
        case "berserker":
            return Details(main: "At the start of combat, Berserkers leap to the nearest enemy. They have a chance to hit all units in a cone in front of them with their attacks.",
                           benefit1: "3  -  45% Chance",
                           benefit2: "6  -  100% Chance + 25 Attack Damage for all Berserkers",
                           benefit3: nil)
        case "blademaster":
            return Details(main: "Blademaster Basic Attacks have a 40% chance to trigger additional attacks against their target. These additional attacks deal damage like Basic Attacks and trigger on-hit effects.",
                           benefit1: "2  -  1 Additional Attack",
                           benefit2: "4  -  2 Additional Attack",
                           benefit3: "6  -  3 Additional Attack")
        case "druid":
            return Details(main: "Druids regenerate 45 health each second.",
                           benefit1: "2  -  Druids regenerate 45 health each second.",
                           benefit2: nil,
                           benefit3: nil)
        case "mage":
            return Details(main: "Mages have a chance on cast to instead Doublecast.",
                           benefit1: "3  -  50% Chance",
                           benefit2: "6  -  100% Chance",
                           benefit3: nil)
        case "mystic":
            return Details(main: "All allies gain increased Magic Resist.",
                           benefit1: "2  -  40 Magic Resist",
                           benefit2: "4  -  120 Magic Resist",
                           benefit3: nil)
        case "predator":
            return Details(main: "Predators instantly kill enemies they damage who are below 25% health.",
                           benefit1: "3  -  Kill enemies they damage who are below 25% health.",
                           benefit2: nil,
                           benefit3: nil)
        case "ranger":
            return Details(main: "Every 3 seconds, Rangers have a chance to double their Attack Speed for 3 seconds.",
                           benefit1: "2  -  35% Chance to Double Attack Speed",
                           benefit2: "4  -  80% Chance to Double Attack Speed",
                           benefit3: "6  -  100% Chance to activate a 2.5x Attack Speed Bonus")
        case "soulbound":
            return Details(main: "The first Soulbound champion to die will instead continue fighting as an untargetable spirit until all other Soulbound champions are dead.", benefit1: "2  -  Soulbound Active", benefit2: nil, benefit3: nil)
        case "summoner":
            return Details(main: "Summoned units have increased health and duration.",
                           benefit1: "3  -  30% Increase",
                           benefit2: "6  -  120% Increase",
                           benefit3: nil)
        case "warden":
            return Details(main: "Wardens gain increased total Armor",
                           benefit1: "2  -  +150% Armor",
                           benefit2: "4  -  +300% Armor",
                           benefit3: "6  -  +450% Armor")
        default:
            return nil
        }
    }
    
    static func minimumUnitsForBonus(chmpClass: ChampionClassSet2) -> Int {
        switch chmpClass {
        case .alchemist:
            return 1
        case .assassin:
            return 3
        case .avatar:
            return 1
        case .berserker:
            return 3
        case .blademaster:
            return 2
        case .druid:
            return 2
        case .mage:
            return 3
        case .mystic:
            return 2
        case .predator:
            return 3
        case .ranger:
            return 2
        case soulbound:
            return 2
        case .summoner:
            return 3
        case .warden:
            return 2
        }
    }
    
    static func itemForBonus(champClass: ChampionClassSet2) -> CombinedItem? {
        switch champClass {
        case .assassin:
            return ItemsSet2.shared.youmuusGhostblade
        case .blademaster:
            return ItemsSet2.shared.bladeOfTheRuinedKing
        case .warden:
            return ItemsSet2.shared.wardensMail
        case .mage:
            return ItemsSet2.shared.magesCap
        case .berserker:
            return ItemsSet2.shared.berserkersAxe
        default:
            return nil
        }
    }
    
    static func bonusForItem(_ item: CombinedItem) -> ChampionClassSet2? {
        switch item {
        case ItemsSet2.shared.youmuusGhostblade:
            return .assassin
        case ItemsSet2.shared.bladeOfTheRuinedKing:
            return .blademaster
        case ItemsSet2.shared.wardensMail:
            return .warden
        case ItemsSet2.shared.magesCap:
            return .mage
        case ItemsSet2.shared.berserkersAxe:
            return .berserker
        default:
            return nil
        }
    }
    
}
