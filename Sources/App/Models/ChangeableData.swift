

extension Items {
    
    func setItemRatings() {
        let sRated = [bladeOfTheRuinedKing, guardianAngel, guinsoosRageblade, hush, morellonomicon, runaansHurricane, giantSlayer, thiefsGloves]
        let aRated = [bloodthirster, darkin, dragonsClaw, forceOfNature, frozenHeart, frozenMallet, hextechGunblade, infinityEdge, ionicSpark, ludensEcho, phantomDancer, rabadonsDeathcap, redemption, warmogsArmor, yuumi, quicksilver, mittens]
        let bRated = [cursedBlade, knightsVow, locket, rapidFirecannon, redBuff, seraphsEmbrace, spearOfShojin, statikkShiv, swordBreaker, thornmail, titanicHydra, youmuusGhostblade, zekesHerald, zephyr, jeweledGauntlet, handOfJustice, icebornGauntlet, trapClaw]
        let cRated = [repeatingCrossbow]
        
        sRated.forEach { (item) in
            item.setRating(to: .S)
        }
        
        aRated.forEach { (item) in
            item.setRating(to: .A)
        }
        
        bRated.forEach { (item) in
            item.setRating(to: .B)
        }
        
        cRated.forEach { (item) in
            item.setRating(to: .C)
        }
        
    }
    
}

class DropRateData {
    static let shared = DropRateData()
    
    let dropRates = DropRates(name: "Drop Rates",
        tier1: [50, 70, 50, 35, 25, 20, 15, 10],
        tier2: [nil, 25, 35 ,35, 35, 30, 25, 15],
        tier3: [nil, 5, 15, 25, 30, 33, 35, 33],
        tier4: [nil, nil, nil, 5, 10, 15, 20, 30],
        tier5: [nil, nil, nil, nil, nil, 2, 5, 12])
}
