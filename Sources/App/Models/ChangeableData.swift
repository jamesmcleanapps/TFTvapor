

extension Champions {
    func setChampionRatings() {
        let sRating = [akali, aurelionSol, draven, gnar,
                       jinx, kaisa, kennen, kindred,
                       pantheon, sejuani, swain]
        let aRating = [aatrox, anivia, ashe, blitzcrank,
                       brand, chogath, karthus, katarina,
                       kayle, leona, lissandra, missFortune,
                       mordekaiser,
                       poppy, rengar, shyvana, twistedFate,
                       varus, vi, yasuo]
        let bRating = [ahri, braum, darius, evelynn, fiora,
                        gangplank, garen, kassadin, lucian,
                        lulu, morgana, nidalee,
                        pyke, reksai, shen, tristana,
                        vayne, veigar, volibear, zed]
        
        sRating.forEach { $0.rating = .S }
        aRating.forEach { $0.rating = .A }
        bRating.forEach { $0.rating = .B }
    }
}

extension ChampionsSet2 {
    func setChampionRatings() {
        let sRating = [
            khazix,
            lucian,
            lux,
            malphite,
            nami,
            nocturne,
            senna,
            singed,
            sivir,
            yorick,
            zed
        ]
        
        let aRating = [
            annie,
            amumu,
            brand,
            ezreal,
            janna,
            malzahar,
            masterYi,
            olaf,
            qiyana,
            twitch,
            volibear
        ]
        let bRating = [
            ashe,
            drMundo,
            kindred,
            kogmaw,
            nautilus,
            ornn,
            reksai,
            renekton,
            skarner,
            syndra,
            taric,
            thresh,
            vladimir,
            yasuo,
            zyra
        ]
        let cRating: [Champion] = [
            aatrox,
            azir,
            ivern,
            leBlanc,
            maokai,
            sion,
            varus
        ]
        let dRating: [Champion] = [
            diana,
            jax,
            nasus,
            neeko,
            soraka,
            vayne,
            veigar,
            warwick
        ]
        let eRating: [Champion] = [
            braum,
            taliyah
        ]
        
        sRating.forEach { $0.rating = .S }
        aRating.forEach { $0.rating = .A }
        bRating.forEach { $0.rating = .B }
        cRating.forEach { $0.rating = .C }
        dRating.forEach { $0.rating = .D }
        eRating.forEach { $0.rating = .E }
    }
}

extension Items {
    
    func setItemRatings() {
        let sRated = [
            bladeOfTheRuinedKing, guardianAngel, guinsoosRageblade,
            infinityEdge, knightsVow, morellonomicon, redemption, runaansHurricane,
            giantSlayer]
        let aRated = [
            bloodthirster, darkin, dragonsClaw, forceOfNature,
            frozenHeart, hush, ionicSpark, phantomDancer,
            rabadonsDeathcap, rapidFirecannon, warmogsArmor, yuumi,
            zephyr, trapClaw, thiefsGloves, mittens
        ]
        let bRated = [
            cursedBlade, frozenMallet, hextechGunblade,
            locket, ludensEcho, redBuff, seraphsEmbrace,
            spearOfShojin, statikkShiv, swordBreaker, thornmail,
            titanicHydra, youmuusGhostblade, zekesHerald
        ]
        let cRated = [
            handOfJustice, icebornGauntlet, jeweledGauntlet, repeatingCrossbow, quicksilver
        ]
        
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

extension ItemsSet2 {
    
    func setItemRatings() {
        let sRated = [
            forceOfNature,
            morellonomicon,
            phantomDancer,
            runaansHurricane,
            seraphsEmbrace,
            talismanOfLight
        ]
        let aRated = [
            bloodthirster,
            deathBlade,
            giantSlayer,
            guardianAngel,
            handOfJustice,
            infinityEdge,
            jeweledGauntlet,
            rabadonsDeathcap,
            redemption,
            spearOfShojin,
            statikkShiv,
            thiefsGloves,
            warmogsArmor,
            zephyr
        ]
        let bRated = [
            guinsoosRageblade,
            frozenHeart,
            hush,
            icebornGauntlet,
            ionicSpark,
            ludensEcho,
            locket,
            rapidFirecannon,
            redBuff,
            swordBreaker,
            zekesHerald
        ]
        let cRated: [CombinedItem] = [
            dragonsClaw,
            hextechGunblade, 
            trapClaw,
            quicksilver,
            repeatingCrossbow,
            thornmail,
            titanicHydra
        ]
        
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
