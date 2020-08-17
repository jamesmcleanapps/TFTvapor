

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

// MARK: CHAMPIONS SET 2

extension ChampionsSet2 {
    func setChampionRatings() {
        let sRating = [
            annie,
            ashe,
            kindred,
            lux,
            masterYi,
            singed,
            taric,
            twitch,
            yorick,
            zed
            
        ]
        
        let aRating = [
            amumu,
            azir,
            drMundo,
            karma,
            khazix,
            malphite,
            nami,
            olaf,
            qiyana,
            yasuo
        ]
        let bRating = [
            brand,
            ezreal,
            janna,
            kogmaw,
            lucian,
            nautilus,
            sion,
            sivir,
            skarner,
            soraka,
            syndra,
            thresh,
            varus,
            zyra
            
        ]
        let cRating: [Champion] = [
            aatrox,
            braum,
            ivern,
            leBlanc,
            leona,
            maokai,
            malzahar,
            nasus,
            neeko,
            nocturne,
            renekton,
            senna,
            taliyah,
            veigar,
            vladimir,
            volibear,
            vayne
        ]
        let dRating: [Champion] = [
            diana,
            jax,
            reksai
            
        ]
        let eRating: [Champion] = [
            ornn,
            warwick
        ]
        
        sRating.forEach { $0.rating = .S }
        aRating.forEach { $0.rating = .A }
        bRating.forEach { $0.rating = .B }
        cRating.forEach { $0.rating = .C }
        dRating.forEach { $0.rating = .D }
        eRating.forEach { $0.rating = .E }
    }
}

// MARK: CHAMPIONS SET 3

extension ChampionsSet3 {
    func setChampionRatings() {
        let sRating = [
            
            
            ekko,
            janna,
            jhin,
            lulu,
            
            
            
        ]
        
        let aRating = [
            ashe,
            aurelionSol,
            cassiopeia,
            
            gangplank,
            gnar,
            irelia,
            
            
            
            
            karma,
            lucian,
            
            riven,
            shaco,
            soraka,
            syndra,
            teemo,
            thresh,
            urgot,
            viktor,
            xerath
        ]
        let bRating = [
            ahri,
            
            
            bard,
            
            caitlyn,
            darius,
            ezreal,
            fizz,
            graves,
            jarvan,
            jayce,
            jinx,
            kogmaw,
            
            masterYi,
            
            nautilus,
            neeko,
            rakan,
            rumble,
            
            shen,
            
            vayne,
            vi,
            wukong,
            
            zed,
            
        ]
        let cRating: [Champion] = [
            annie,
            blitzcrank,
            fiora,
            illaoi,
            
            leona,
            malphite,
            mordekaiser,
            poppy,
            
            twistedFate,
            xayah,
            xinZhao,
            yasuo,
            ziggs,
            zoe
        ]
        let dRating: [Champion] = [
            nocturne
            
        ]
        let eRating: [Champion] = [
            
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


// MARK: ITEMS SET 2
extension ItemsSet2 {
    
    func setItemRatings() {
        let sRated = [
            forceOfNature,
            guardianAngel,
            handOfJustice,
            infinityEdge,
            morellonomicon,
            quicksilver,
            redBuff,
            seraphsEmbrace,
            thiefsGloves,
            zephyr
        ]
        let aRated = [
            
            deathBlade,
            dragonsClaw,
            giantSlayer,
            ionicSpark,
            
            
            jeweledGauntlet,
            rabadonsDeathcap,
            titansResolve,
            trapClaw
            
            
            
        ]
        let bRated = [
            bloodthirster,
            
            frozenHeart,
            guinsoosRageblade,
            hush,
            icebornGauntlet,
            
            lastWhisper,
            locket,
            rapidFirecannon,
            runaansHurricane,
            spearOfShojin,
            statikkShiv,
            
            warmogsArmor,
            zekesHerald
        ]
        let cRated: [CombinedItem] = [
            brambleVest,
            
            hextechGunblade,
            ludensEcho,
            redemption,
            swordBreaker,
            titanicHydra,
            
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


// MARK: ITEMS SET 3
extension ItemsSet3 {
    
    func setItemRatings() {
        
        let sRated = [
            blueBuff,
            forceOfNature,
            
            guardianAngel,
            infinityEdge,
            ionicSpark,
            morellonomicon,
            quicksilver,
            thiefsGloves,
            zephyr
        ]
        
        let aRated = [
            brambleVest,
           
            dragonsClaw,
            
            
            
            lastWhisper,
            
            rabadonsDeathcap,
            redBuff,
            redemption,
            
            trapClaw,
            warmogsArmor,
            
        ]
        
        let bRated = [
            
            
            bloodthirster,
            deathBlade,
            frozenHeart,
            giantSlayer,
            guinsoosRageblade,
            handOfJustice,
            jeweledGauntlet,
            ludensEcho,
            rapidFirecannon,
            runaansHurricane,
            shroud,
            spearOfShojin,
            statikkShiv,
            titansResolve,
            zzRot
        ]
        
        let cRated: [CombinedItem] = [
            
            chaliceOfPower,
            locket,
            
            zekesHerald,
            
            hextechGunblade,
            swordBreaker
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
                              tier1: [100,    75,    60,     40,     25,     25,     19,     10],
                              tier2: [nil,    25,    30 ,    35,     35,     35,     30,     15],
                              tier3: [nil,    nil,   10,     20,     30,     30,     35,     30],
                              tier4: [nil,    nil,   nil,    5,      10,     10,     15,     30],
                              tier5: [nil,    nil,   nil,    nil,    nil,    nil,     1,      15])
}
