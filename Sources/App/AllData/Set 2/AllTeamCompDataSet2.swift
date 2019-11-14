//
//  AllTeamCompDataSet2.swift
//  App
//
//  Created by James Mclean on 09/11/2019.
//

import Foundation


class TeamCompsSet2 {
    
    static var shared = TeamCompsSet2()
    
    lazy var allTeamComps: [TeamComp] = {
        return [
            fourOfAKind, beholdTheLight, sivirsHurricane, hyperrollPredators, sandCloneArmy, shadowRangers,
            sixMages2Tibbers, glacialBerserkers, onePunchVeigar, saveTheTrees
        ]
    }()
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let fourOfAKind: TeamComp
    let beholdTheLight: TeamComp
    let sivirsHurricane: TeamComp
    let hyperrollPredators: TeamComp
    let sandCloneArmy: TeamComp
    let shadowRangers: TeamComp
    
    let sixMages2Tibbers: TeamComp
    let glacialBerserkers: TeamComp
    let onePunchVeigar: TeamComp
    let saveTheTrees: TeamComp
    
    /////////////////https://tftactics.gg/tierlist/team-comps /////////
    
    init() {
        let champions = ChampionsSet2.shared
        let items = ItemsSet2.shared
        
        // MARK: 4 OF A KIND
        fourOfAKind = TeamComp(name: "4 of a Kind",
                               teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.varus, champions.vayne, champions.aatrox, champions.jax, champions.nasus],
                              midUnits: [champions.varus, champions.kindred, champions.ashe, champions.vayne, champions.malphite, champions.taliyah],
                              units: [champions.ezreal, champions.ashe, champions.twitch, champions.kindred, champions.janna, champions.masterYi, champions.taric, champions.malphite],
                              carries: [champions.ashe, champions.twitch],
                              carryItems: [
                                champions.ashe :
                                    [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                                champions.twitch :
                                    [items.runaansHurricane, items.giantSlayer]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.malphite,
                                    6 : champions.taric,
                                    11 : champions.masterYi,
                                    19 : champions.janna,
                                    22 : champions.ezreal,
                                    25 : champions.ashe,
                                    26 : champions.twitch,
                                    28 : champions.kindred,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/team-comps/4-of-a-kind")
        
        // MARK: BEHOLD THE LIGHT
        beholdTheLight = TeamComp(name: "Behold The Light",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.nasus, champions.jax, champions.vayne, champions.yasuo],
                              midUnits: [champions.nasus, champions.aatrox, champions.vayne, champions.yasuo, champions.jax, champions.soraka],
                              units: [champions.aatrox, champions.jax, champions.nasus, champions.soraka, champions.vayne, champions.yorick, champions.kindred, champions.masterYi],
                              carries: [champions.vayne, champions.masterYi],
                              carryItems: [
                                champions.vayne :
                                    [items.guinsoosRageblade, items.runaansHurricane],
                                champions.masterYi :
                                    [items.talismanOfLight]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.aatrox,
                                    5 : champions.nasus,
                                    8 : champions.masterYi,
                                    14 : champions.yorick,
                                    22 : champions.jax,
                                    25 : champions.vayne,
                                    26 : champions.soraka,
                                    28 : champions.kindred,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/team-comps/behold-the-light")
        
        
        // MARK: SIVIRS HURRICANE
        sivirsHurricane = TeamComp(name: "Sivir's Hurricane",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.nasus, champions.vayne, champions.renekton, champions.yasuo],
                              midUnits: [champions.sivir, champions.aatrox, champions.renekton, champions.jax, champions.drMundo, champions.soraka],
                              units: [champions.aatrox, champions.yasuo, champions.masterYi, champions.sivir, champions.janna, champions.yorick, champions.annie, champions.azir],
                              carries: [champions.sivir, champions.yasuo],
                              carryItems: [
                                champions.sivir :
                                    [items.runaansHurricane, items.giantSlayer, items.deathBlade],
                                champions.yasuo :
                                    [items.icebornGauntlet]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.masterYi,
                                    5 : champions.yorick,
                                    18 : champions.annie,
                                    22 : champions.aatrox,
                                    24 : champions.azir,
                                    25 : champions.sivir,
                                    26 : champions.janna,
                                    28 : champions.yasuo,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/sivirs-hurricane")
        
        // MARK: HYPERROLL PREDATORS
        hyperrollPredators = TeamComp(name: "Hyper-roll Predators",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.renekton, champions.warwick, champions.kogmaw, champions.reksai],
                              midUnits: [champions.renekton, champions.warwick, champions.kogmaw, champions.reksai, champions.khazix, champions.nocturne],
                              units: [champions.kogmaw, champions.reksai, champions.warwick, champions.renekton, champions.nocturne, champions.khazix, champions.zed],
                              carries: [champions.kogmaw, champions.reksai],
                              carryItems: [
                                champions.kogmaw :
                                    [items.runaansHurricane, items.redBuff],
                                champions.reksai :
                                    [items.ionicSpark]],
                              teamCompPositions:  nil ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/hyperroll-predators")
        
        
        // MARK: SAND CLONE ARMY
        sandCloneArmy = TeamComp(name: "Sand Clone Army",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.zyra, champions.malzahar, champions.azir, champions.renekton],
                              midUnits: [champions.zyra, champions.malzahar, champions.azir, champions.renekton, champions.sion, champions.nocturne],
                              units: [champions.yorick, champions.sion, champions.nocturne, champions.qiyana, champions.azir, champions.khazix, champions.malzahar, champions.zed],
                              carries: [champions.khazix, champions.zed],
                              carryItems: [
                                champions.khazix :
                                    [items.seraphsEmbrace, items.infinityEdge, items.rapidFirecannon],
                                champions.zed :
                                    [items.guardianAngel, items.redemption]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.yorick,
                                    6 : champions.sion,
                                    22 : champions.nocturne,
                                    23 : champions.qiyana,
                                    24 : champions.azir,
                                    25 : champions.malzahar,
                                    26 : champions.khazix,
                                    27 : champions.zed,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/sand-clone-army")
        
        // MARK: SHADOW RANGERS
        shadowRangers = TeamComp(name: "Shadow Rangers",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.vayne, champions.varus, champions.diana, champions.zyra],
                              midUnits: [champions.kindred, champions.vayne, champions.aatrox, champions.nasus, champions.sion, champions.yasuo],
                              units: [champions.annie, champions.yorick, champions.kindred, champions.ashe, champions.sion, champions.masterYi, champions.taric, champions.malzahar],
                              carries: [champions.ashe, champions.kindred],
                              carryItems: [
                                champions.ashe :
                                    [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                                champions.kindred :
                                    [items.seraphsEmbrace, items.infinityEdge, items.guinsoosRageblade]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    2 : champions.yorick,
                                    4 : champions.taric,
                                    6 : champions.sion,
                                    9 : champions.masterYi,
                                    22 : champions.annie,
                                    24 : champions.ashe,
                                    25 : champions.kindred,
                                    28 : champions.malzahar,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/shadow-rangers")
        
        
        // MARK: 6 MAGES 2 TIBBERS
        sixMages2Tibbers = TeamComp(name: "6 Mages 2 Tibbers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.ivern, champions.leBlanc, champions.maokai, champions.syndra, champions.vladimir],
                              midUnits: [champions.annie, champions.brand, champions.leBlanc, champions.nautilus, champions.syndra, champions.veigar, champions.vladimir],
                              units: [champions.annie, champions.brand, champions.leBlanc, champions.nami, champions.nautilus, champions.syndra, champions.veigar, champions.vladimir],
                              carries: [champions.annie, champions.brand],
                              carryItems: [
                                champions.annie :
                                    [items.magesCap, items.morellonomicon],
                                champions.brand :
                                    [items.jeweledGauntlet, items.rabadonsDeathcap, items.spearOfShojin]],
                              teamCompPositions:  nil ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/6-mages-2-tibbers")
        
        
        // MARK: GLACIAL BERSERKERS
        glacialBerserkers = TeamComp(name: "Glacial Berserkers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.reksai, champions.warwick, champions.kogmaw, champions.renekton],
                              midUnits: [champions.renekton, champions.warwick, champions.braum, champions.reksai, champions.olaf, champions.volibear],
                              units: [champions.olaf, champions.drMundo, champions.volibear, champions.kogmaw, champions.singed, champions.warwick, champions.reksai, champions.braum],
                              carries: [champions.olaf, champions.kogmaw, champions.singed],
                              carryItems: [
                                champions.olaf :
                                    [items.guinsoosRageblade, items.bloodthirster],
                                champions.kogmaw :
                                    [items.runaansHurricane, items.redBuff],
                              champions.singed :
                                [items.frozenHeart, items.morellonomicon]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    18 : champions.braum,
                                    22 : champions.warwick,
                                    23 : champions.singed,
                                    24 : champions.reksai,
                                    25 : champions.kogmaw,
                                    26 : champions.olaf,
                                    27 : champions.drMundo,
                                    28 : champions.volibear,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/glacial-berzerkers")
        
        
        // MARK: ONE PUNCH VEIGAR
        onePunchVeigar = TeamComp(name: "One Punch Veigar",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.ivern, champions.leBlanc, champions.maokai, champions.taliyah],
                              midUnits: [champions.malphite, champions.nautilus, champions.syndra, champions.taliyah, champions.veigar, champions.vladimir],
                              units: [champions.leBlanc, champions.malphite, champions.nami, champions.nautilus, champions.syndra, champions.taliyah, champions.veigar, champions.vladimir],
                              carries: [champions.veigar, champions.malphite],
                              carryItems: [
                                champions.veigar :
                                    [items.hextechGunblade, items.phantomDancer, items.seraphsEmbrace],
                                champions.malphite :
                                    [items.guardianAngel, items.magesCap, items.morellonomicon]],
                              teamCompPositions:  nil ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/one-punch-veigar")
        
        
        // MARK: SAVE THE TREES
        saveTheTrees = TeamComp(name: "Save the Trees",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.ivern, champions.leBlanc, champions.maokai, champions.neeko, champions.vladimir],
                              midUnits: [champions.leBlanc, champions.maokai, champions.nautilus, champions.neeko, champions.syndra, champions.thresh],
                              units: [champions.leBlanc, champions.maokai, champions.nautilus, champions.neeko, champions.syndra, champions.thresh, champions.vladimir],
                              carries: [champions.vladimir, champions.neeko, champions.maokai],
                              carryItems: [
                                champions.vladimir :
                                    [items.guardianAngel, items.phantomDancer, items.spearOfShojin],
                                champions.neeko :
                                    [items.morellonomicon, items.rabadonsDeathcap],
                              champions.maokai :
                                [items.dragonsClaw, items.icebornGauntlet, items.warmogsArmor]],
                              teamCompPositions:  nil ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/save-the-trees")
        
        
    }
    
    
    
    
}

