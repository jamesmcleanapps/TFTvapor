//
//  Champion.swift
//  App
//
//  Created by James Mclean on 30/09/2019.
//

import Foundation
import Vapor
import FluentMySQL

final class Champion: Codable, Hashable {
    var id: Int?
    var name: String
    var nickname: String
    var tier: ChampionTier
    var cost: Int
    var rating: ChampionRating
    var ultimate: Ultimate
    var championOrigin: [ChampionOrigin] = []
    var championClass: [ChampionClass] = []
    var championOriginSet3: [ChampOriginSet3] = []
    var championClassSet3: [ChampClassSet3] = []
    var championElementSet2: [ChampionElementSet2] = []
    var championClassSet2: [ChampionClassSet2] = []
    var bestItems: [CombinedItem]?
    var stats: Stats
    
    
    init(name: String, nickname: String, tier: ChampionTier, cost: Int, rating: ChampionRating, ultimate: Ultimate, championOrigin: [ChampionOrigin], championClass: [ChampionClass], bestItems: [CombinedItem], stats: Stats) {
        
        self.name = name
        self.nickname = nickname
        self.tier = tier
        self.cost = cost
        self.rating = rating
        self.ultimate = ultimate
        self.championOrigin = championOrigin
        self.championClass = championClass
        self.bestItems = bestItems
        self.stats = stats
        
    }
    
    // initializer for set 2 Champ
    init(name: String, nickname: String, tier: ChampionTier, cost: Int, rating: ChampionRating, ultimate: Ultimate, championElement: [ChampionElementSet2], championClass: [ChampionClassSet2], bestItems: [CombinedItem], stats: Stats) {
        
        self.name = name
        self.nickname = nickname
        self.tier = tier
        self.cost = cost
        self.rating = rating
        self.ultimate = ultimate
        self.championElementSet2 = championElement
        self.championClassSet2 = championClass
        self.bestItems = bestItems
        self.stats = stats
        
    }
    
    // initializer for set 3 champ
    init(name: String, nickname: String, tier: ChampionTier, cost: Int, rating: ChampionRating, ultimate: Ultimate, championOriginSet3: [ChampOriginSet3], championClassSet3: [ChampClassSet3], bestItems: [CombinedItem], stats: Stats) {
        
        self.name = name
        self.nickname = nickname
        self.tier = tier
        self.cost = cost
        self.rating = rating
        self.ultimate = ultimate
        self.championOriginSet3 = championOriginSet3
        self.championClassSet3 = championClassSet3
        self.bestItems = bestItems
        self.stats = stats
        
    }
    
    static func == (lhs: Champion, rhs: Champion) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name.hashValue)
    }
    
    func setRating(to rating: ChampionRating) {
        self.rating = rating
    }
    
//    func getTierColor() -> UIColor {
//        switch tier {
//        case .one:
//            return .white
//        case .two:
//            return Colors.LVL_TWO_TRIM_GREEN
//        case .three:
//            return Colors.LVL_THREE_TRIM_BLUE
//        case .four:
//            return Colors.LVL_FOUR_TRIM_PURPLE
//        case .five:
//            return Colors.LVL_FIVE_TRIM_GOLD
//        }
//    }
}


extension Champion: MySQLModel {}
extension Champion: Content {}
extension Champion: Migration{}
extension Champion: Parameter{}
