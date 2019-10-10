

extension Champions {
    func setChampionRatings() {
        let sRating = [akali, aurelionSol, draven, gnar,
                       jinx, kennen, kindred, pantheon,
                       sejuani, swain]
        let aRating = [aatrox, anivia, ashe,
                       blitzcrank, brand, chogath, evelynn,
                       kaisa, karthus, katarina, kayle, leona, lissandra,
                        mordekaiser, poppy, rengar,
                        shyvana, twistedFate, varus, vi, yasuo]
        let bRating = [ahri, braum, darius, fiora,
                        gangplank, garen, kassadin, lucian,
                        lulu, missFortune, morgana, nidalee,
                        pyke, reksai, shen, tristana,
                        vayne, veigar, volibear, zed]
        
        sRating.forEach { $0.rating = .S }
        aRating.forEach { $0.rating = .A }
        bRating.forEach { $0.rating = .B }
    }
}

extension Items {
    
    func setItemRatings() {
        let sRated = [bladeOfTheRuinedKing, guardianAngel, guinsoosRageblade,
                      infinityEdge, morellonomicon, redemption, runaansHurricane, giantSlayer]
        let aRated = [bloodthirster, darkin, dragonsClaw, forceOfNature, frozenHeart, hush, ionicSpark, phantomDancer, rabadonsDeathcap, rapidFirecannon, warmogsArmor, quicksilver, thiefsGloves, mittens]
        let bRated = [cursedBlade, frozenMallet, hextechGunblade, knightsVow, locket, ludensEcho, redBuff, seraphsEmbrace, spearOfShojin, statikkShiv, swordBreaker, thornmail, titanicHydra, youmuusGhostblade, yuumi, zekesHerald, zephyr]
        let cRated = [handOfJustice, icebornGauntlet, jeweledGauntlet, repeatingCrossbow, trapClaw]
        
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
        tier1: [100,    70,    50,     35,     25,     20,     15,     10],
        tier2: [nil,    25,    35 ,    35,     35,     30,     20,     15],
        tier3: [nil,    5,     15,     25,     30,     33,     35,     30],
        tier4: [nil,    nil,   nil,    5,      10,     15,     22,     30],
        tier5: [nil,    nil,   nil,    nil,    nil,    2,      8,      15])
}
